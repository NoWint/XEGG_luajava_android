use crate::memory::traits::{AccessMode, MemoryAccess, MemoryRegion};
use crate::memory::region;
use std::fs::{File, OpenOptions};
use std::io;
use std::path::PathBuf;

/// Ptrace 内存访问实现（Root 模式）
pub struct PtraceAccess {
    pid: Option<i32>,
    mem_file: Option<File>,
}

impl PtraceAccess {
    pub fn new() -> Self {
        Self {
            pid: None,
            mem_file: None,
        }
    }

    fn mem_path(pid: i32) -> PathBuf {
        PathBuf::from(format!("/proc/{}/mem", pid))
    }
}

impl MemoryAccess for PtraceAccess {
    fn attach(&mut self, pid: i32) -> io::Result<()> {
        let pid_t = nix::unistd::Pid::from_raw(pid);
        nix::sys::ptrace::attach(pid_t)
            .map_err(|e| io::Error::new(io::ErrorKind::PermissionDenied, e.to_string()))?;

        nix::sys::wait::waitpid(pid_t, None)
            .map_err(|e| io::Error::new(io::ErrorKind::Other, e.to_string()))?;

        let file = OpenOptions::new()
            .read(true)
            .write(true)
            .open(Self::mem_path(pid))?;

        self.pid = Some(pid);
        self.mem_file = Some(file);

        Ok(())
    }

    fn detach(&mut self) -> io::Result<()> {
        if let Some(pid) = self.pid {
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
        AccessMode::Root
    }

    fn is_attached(&self) -> bool {
        self.pid.is_some()
    }
}
