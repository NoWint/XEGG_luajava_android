use crate::memory::traits::{AccessMode, MemoryAccess, MemoryRegion};
use crate::memory::region;
use std::fs::File;
use std::io;
use std::os::unix::io::FromRawFd;

/// 文件描述符内存访问实现（Shizuku 框架模式）
///
/// 通过 Shizuku 服务以 shell 权限打开 `/proc/pid/mem`，
/// 将文件描述符传递给 Rust，实现免 Root 内存读写。
pub struct FdAccess {
    /// 目标进程 PID
    pid: Option<i32>,
    /// /proc/pid/mem 的文件句柄（由 Shizuku 打开）
    mem_file: Option<File>,
}

impl FdAccess {
    pub fn new() -> Self {
        Self {
            pid: None,
            mem_file: None,
        }
    }

    /// 通过文件描述符附加
    ///
    /// fd 是由 Kotlin 层通过 Shizuku 打开的 /proc/pid/mem 文件描述符
    pub fn attach_with_fd(&mut self, pid: i32, fd: i32) -> io::Result<()> {
        // 从 fd 创建 File（接管所有权）
        let file = unsafe { File::from_raw_fd(fd) };

        // 验证文件可读
        let mut test_buf = [0u8; 1];
        nix::sys::uio::pread(&file, &mut test_buf, 0).ok(); // 可能失败，不强制要求

        self.pid = Some(pid);
        self.mem_file = Some(file);

        log::info!("FdAccess: 通过 fd={} 附加到进程 {}", fd, pid);
        Ok(())
    }
}

impl MemoryAccess for FdAccess {
    fn attach(&mut self, _pid: i32) -> io::Result<()> {
        // FdAccess 不支持直接 attach，必须通过 attach_with_fd
        Err(io::Error::new(
            io::ErrorKind::Unsupported,
            "FdAccess 需要通过 attach_with_fd(fd) 附加，请使用 Shizuku 模式",
        ))
    }

    fn detach(&mut self) -> io::Result<()> {
        self.pid = None;
        self.mem_file = None; // File drop 会自动关闭 fd
        log::info!("FdAccess: 分离");
        Ok(())
    }

    fn read(&self, addr: usize, buf: &mut [u8]) -> io::Result<()> {
        let file = self.mem_file.as_ref().ok_or_else(|| {
            io::Error::new(io::ErrorKind::NotConnected, "未附加到目标进程")
        })?;
        let mut total = 0;
        while total < buf.len() {
            let n = nix::sys::uio::pread(file, &mut buf[total..], (addr + total) as i64)
                .map_err(|e| io::Error::new(io::ErrorKind::Other, e))?;
            if n == 0 {
                return Err(io::Error::new(io::ErrorKind::UnexpectedEof, "unexpected eof"));
            }
            total += n;
        }
        Ok(())
    }

    fn write(&self, addr: usize, buf: &[u8]) -> io::Result<()> {
        let file = self.mem_file.as_ref().ok_or_else(|| {
            io::Error::new(io::ErrorKind::NotConnected, "未附加到目标进程")
        })?;
        let mut total = 0;
        while total < buf.len() {
            let n = nix::sys::uio::pwrite(file, &buf[total..], (addr + total) as i64)
                .map_err(|e| io::Error::new(io::ErrorKind::Other, e))?;
            if n == 0 {
                return Err(io::Error::new(io::ErrorKind::WriteZero, "write zero"));
            }
            total += n;
        }
        Ok(())
    }

    fn regions(&self) -> io::Result<Vec<MemoryRegion>> {
        let pid = self.pid.ok_or_else(|| {
            io::Error::new(io::ErrorKind::NotConnected, "未附加到目标进程")
        })?;
        region::parse_maps(pid)
    }

    fn mode(&self) -> AccessMode {
        AccessMode::Shizuku
    }

    fn is_attached(&self) -> bool {
        self.pid.is_some()
    }
}
