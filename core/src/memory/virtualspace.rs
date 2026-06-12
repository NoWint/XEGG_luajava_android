use crate::memory::traits::{AccessMode, MemoryAccess, MemoryRegion};
use crate::memory::region;
use std::fs::File;
use std::io;
use std::os::unix::io::FromRawFd;

/// VirtualSpace 内存访问实现（免 Root 模式）
///
/// 通过 Kotlin 层启动目标应用后，将 /proc/pid/mem 的 fd 传入 Rust。
/// Kotlin 层负责：
/// 1. 启动目标应用（am start）
/// 2. 通过 dup() 打开 /proc/pid/mem 获取 fd
/// 3. 调用 nativeAttachWithFd(pid, fd) 传入 fd
///
/// 如果 /proc/pid/mem 无法打开，则尝试 ptrace 附加（某些设备允许同 UID ptrace）
pub struct VirtualSpaceAccess {
    /// 目标进程 PID
    pid: Option<i32>,
    /// /proc/pid/mem 的文件句柄（由 Kotlin 层传入 fd）
    mem_file: Option<File>,
}

impl VirtualSpaceAccess {
    pub fn new() -> Self {
        Self {
            pid: None,
            mem_file: None,
        }
    }

    /// 通过文件描述符附加（由 Kotlin VirtualSpaceHelper 传入）
    pub fn attach_with_fd(&mut self, pid: i32, fd: i32) -> io::Result<()> {
        let file = unsafe { File::from_raw_fd(fd) };
        self.pid = Some(pid);
        self.mem_file = Some(file);
        log::info!("VirtualSpace: 通过 fd={} 附加到进程 {}", fd, pid);
        Ok(())
    }
}

impl MemoryAccess for VirtualSpaceAccess {
    fn attach(&mut self, pid: i32) -> io::Result<()> {
        // 尝试 ptrace 附加（某些设备允许同 UID 的 ptrace）
        let pid_t = nix::unistd::Pid::from_raw(pid);
        match nix::sys::ptrace::attach(pid_t) {
            Ok(()) => {
                let _ = nix::sys::wait::waitpid(pid_t, None);
                // ptrace 成功，打开 /proc/pid/mem
                let file = std::fs::OpenOptions::new()
                    .read(true)
                    .write(true)
                    .open(format!("/proc/{}/mem", pid));
                match file {
                    Ok(f) => {
                        self.pid = Some(pid);
                        self.mem_file = Some(f);
                        log::info!("VirtualSpace: ptrace 附加成功，PID={}", pid);
                        Ok(())
                    }
                    Err(e) => {
                        let _ = nix::sys::ptrace::detach(pid_t, None);
                        Err(io::Error::new(
                            io::ErrorKind::PermissionDenied,
                            format!("ptrace 成功但无法打开 /proc/{}/mem: {}", pid, e),
                        ))
                    }
                }
            }
            Err(_) => {
                Err(io::Error::new(
                    io::ErrorKind::PermissionDenied,
                    format!("无法附加到进程 {}（免 Root 模式需要通过 fd 附加）", pid),
                ))
            }
        }
    }

    fn detach(&mut self) -> io::Result<()> {
        if let Some(pid) = self.pid {
            // 尝试 ptrace detach（如果是通过 ptrace 附加的）
            let pid_t = nix::unistd::Pid::from_raw(pid);
            let _ = nix::sys::ptrace::detach(pid_t, None);
        }
        self.pid = None;
        self.mem_file = None;
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
        AccessMode::VirtualSpace
    }

    fn is_attached(&self) -> bool {
        self.pid.is_some()
    }
}
