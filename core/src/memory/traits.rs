use std::io;

/// 内存区域权限
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub struct Permissions {
    pub read: bool,
    pub write: bool,
    pub execute: bool,
}

/// 内存区域信息
#[derive(Debug, Clone)]
pub struct MemoryRegion {
    pub start: usize,
    pub end: usize,
    pub perms: Permissions,
    pub name: Option<String>,
}

impl MemoryRegion {
    pub fn size(&self) -> usize {
        self.end - self.start
    }
}

/// 内存访问模式
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum AccessMode {
    Root,
    VirtualSpace,
}

/// 内存访问 trait — 上层模块通过此 trait 读写目标进程内存
pub trait MemoryAccess {
    /// 附加到目标进程
    fn attach(&mut self, pid: i32) -> io::Result<()>;

    /// 分离目标进程
    fn detach(&mut self) -> io::Result<()>;

    /// 读取内存
    fn read(&self, addr: usize, buf: &mut [u8]) -> io::Result<()>;

    /// 写入内存
    fn write(&self, addr: usize, buf: &[u8]) -> io::Result<()>;

    /// 获取内存区域列表
    fn regions(&self) -> io::Result<Vec<MemoryRegion>>;

    /// 获取当前访问模式
    fn mode(&self) -> AccessMode;

    /// 检查是否已附加
    fn is_attached(&self) -> bool;
}
