pub mod traits;
pub mod region;
pub mod ptrace;
pub mod virtualspace;
pub mod fdaccess;

pub use traits::{AccessMode, MemoryAccess, MemoryRegion, Permissions};
pub use ptrace::PtraceAccess;
pub use virtualspace::VirtualSpaceAccess;
pub use fdaccess::FdAccess;

/// 根据设备 Root 状态自动选择内存访问模式
pub fn create_memory_access() -> Box<dyn MemoryAccess> {
    if is_rooted() {
        Box::new(PtraceAccess::new())
    } else {
        Box::new(VirtualSpaceAccess::new())
    }
}

fn is_rooted() -> bool {
    std::path::Path::new("/system/bin/su").exists()
        || std::path::Path::new("/system/xbin/su").exists()
}

/// 根据指定模式创建内存访问实例
pub fn create_memory_access_with_mode(mode: AccessMode) -> Box<dyn MemoryAccess> {
    match mode {
        AccessMode::Root => Box::new(PtraceAccess::new()),
        AccessMode::VirtualSpace => Box::new(VirtualSpaceAccess::new()),
        AccessMode::Shizuku => Box::new(FdAccess::new()),
    }
}
