pub mod traits;
pub mod region;
pub mod ptrace;

pub use traits::{AccessMode, MemoryAccess, MemoryRegion, Permissions};
pub use ptrace::PtraceAccess;

/// 根据设备 Root 状态自动选择内存访问模式
pub fn create_memory_access() -> Box<dyn MemoryAccess> {
    if is_rooted() {
        Box::new(PtraceAccess::new())
    } else {
        // Phase 5 实现 VirtualSpace 模式，当前 fallback
        Box::new(PtraceAccess::new())
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
        AccessMode::VirtualSpace => {
            // Phase 5 实现
            Box::new(PtraceAccess::new())
        }
    }
}
