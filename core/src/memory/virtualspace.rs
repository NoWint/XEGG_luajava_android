use crate::memory::traits::{AccessMode, MemoryAccess, MemoryRegion};
use crate::memory::region;
use std::fs::{File, OpenOptions};
use std::io::{self, Read, Seek, SeekFrom, Write};
use std::path::PathBuf;

/// VirtualSpace 内存访问实现（免 Root 模式）
///
/// 通过 `unshare(CLONE_NEWNS|CLONE_NEWPID)` 创建新命名空间，
/// 在新命名空间中 fork + exec 目标 APK。
/// 父进程通过 `/proc/child_pid/mem` 读写子进程内存。
///
/// 优势：无需 Root 权限，可直接读写子进程内存。
/// 限制：无法 ptrace，无法注入 .so，无法 hook 函数。
pub struct VirtualSpaceAccess {
    /// 子进程 PID
    child_pid: Option<i32>,
    /// 子进程 /proc/pid/mem 文件句柄
    mem_file: Option<File>,
    /// 目标 APK 路径
    target_apk: Option<String>,
}

impl VirtualSpaceAccess {
    pub fn new() -> Self {
        Self {
            child_pid: None,
            mem_file: None,
            target_apk: None,
        }
    }

    fn mem_path(pid: i32) -> PathBuf {
        PathBuf::from(format!("/proc/{}/mem", pid))
    }
}

impl MemoryAccess for VirtualSpaceAccess {
    /// 启动目标应用在 VirtualSpace 中
    ///
    /// 实际实现需要：
    /// 1. unshare(CLONE_NEWNS|CLONE_NEWPID) 创建新命名空间
    /// 2. fork 子进程
    /// 3. 子进程执行 am start 或直接 exec 目标 APK
    /// 4. 父进程记录子进程 PID
    ///
    /// 当前为框架实现，pid 参数直接作为已有进程的 PID 使用
    fn attach(&mut self, pid: i32) -> io::Result<()> {
        // TODO: 完整的 VirtualSpace 实现
        // 当前简化实现：直接打开已有进程的 /proc/pid/mem
        // 在免 Root 模式下，这需要目标进程是本进程的子进程

        // 检查是否可以访问目标进程内存
        let mem_path = Self::mem_path(pid);
        if !mem_path.exists() {
            return Err(io::Error::new(
                io::ErrorKind::NotFound,
                format!("进程 {} 不存在或无法访问", pid),
            ));
        }

        let file = OpenOptions::new()
            .read(true)
            .write(true)
            .open(&mem_path)
            .map_err(|e| {
                io::Error::new(
                    io::ErrorKind::PermissionDenied,
                    format!(
                        "无法打开 {} (免 Root 模式需要目标进程是 VirtualSpace 子进程): {}",
                        mem_path.display(),
                        e
                    ),
                )
            })?;

        self.child_pid = Some(pid);
        self.mem_file = Some(file);

        log::info!("VirtualSpace: 附加到进程 {}", pid);
        Ok(())
    }

    fn detach(&mut self) -> io::Result<()> {
        if let Some(pid) = self.child_pid {
            log::info!("VirtualSpace: 分离进程 {}", pid);
            // 注意：不杀死子进程，让目标应用继续运行
        }
        self.child_pid = None;
        self.mem_file = None;
        Ok(())
    }

    fn read(&self, addr: usize, buf: &mut [u8]) -> io::Result<()> {
        let file = self.mem_file.as_ref().ok_or_else(|| {
            io::Error::new(io::ErrorKind::NotConnected, "未附加到目标进程")
        })?;

        let mut file = file.try_clone()?;
        file.seek(SeekFrom::Start(addr as u64))?;
        file.read_exact(buf)?;
        Ok(())
    }

    fn write(&self, addr: usize, buf: &[u8]) -> io::Result<()> {
        let file = self.mem_file.as_ref().ok_or_else(|| {
            io::Error::new(io::ErrorKind::NotConnected, "未附加到目标进程")
        })?;

        let mut file = file.try_clone()?;
        file.seek(SeekFrom::Start(addr as u64))?;
        file.write_all(buf)?;
        Ok(())
    }

    fn regions(&self) -> io::Result<Vec<MemoryRegion>> {
        let pid = self.child_pid.ok_or_else(|| {
            io::Error::new(io::ErrorKind::NotConnected, "未附加到目标进程")
        })?;
        region::parse_maps(pid)
    }

    fn mode(&self) -> AccessMode {
        AccessMode::VirtualSpace
    }

    fn is_attached(&self) -> bool {
        self.child_pid.is_some()
    }
}
