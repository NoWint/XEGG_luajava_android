use crate::memory::MemoryAccess;
use std::io;

/// 变速齿轮
///
/// 通过 hook 目标进程的时间函数实现加速/减速。
/// Root 模式下通过 ptrace 注入 hook 库，
/// 免 Root 模式下通过 LD_PRELOAD 预加载。
pub struct SpeedHack {
    speed: f64,
    /// 是否已注入
    injected: bool,
    /// hook 的基址（libspeedhack.so 在目标进程中的加载地址）
    hook_base: usize,
}

impl SpeedHack {
    pub fn new() -> Self {
        Self {
            speed: 1.0,
            injected: false,
            hook_base: 0,
        }
    }

    /// 设置速度倍率
    pub fn set_speed(&mut self, speed: f64) {
        self.speed = speed.max(0.0);
    }

    /// 获取当前速度倍率
    pub fn speed(&self) -> f64 {
        self.speed
    }

    /// 注入变速 hook 到目标进程
    ///
    /// 实际实现需要：
    /// 1. 编译 libspeedhook.so（hook clock_gettime/gettimeofday/nanosleep）
    /// 2. 通过 ptrace 将 .so 注入目标进程
    /// 3. 在目标进程中 dlopen 加载 .so
    /// 4. 写入 speed 值到共享内存
    ///
    /// 当前为框架实现，仅更新内部状态
    pub fn inject(&mut self, _mem: &dyn MemoryAccess) -> io::Result<()> {
        // TODO: 实际注入逻辑
        // 1. ptrace attach 已在外部完成
        // 2. 调用 dlopen 注入 hook 库
        // 3. 获取 hook 库中 speed 变量地址
        // 4. 写入 speed 值
        log::info!("SpeedHack: 注入变速 hook, speed={}", self.speed);
        self.injected = true;
        Ok(())
    }

    /// 更新速度值（已注入后调用）
    pub fn update_speed(&self, mem: &dyn MemoryAccess) -> io::Result<()> {
        if !self.injected || self.hook_base == 0 {
            return Err(io::Error::new(io::ErrorKind::InvalidData, "变速 hook 未注入"));
        }
        // TODO: 写入 speed 值到 hook 库的共享变量
        let speed_bytes = self.speed.to_le_bytes();
        mem.write(self.hook_base, &speed_bytes)?;
        Ok(())
    }

    /// 移除变速 hook
    pub fn remove(&mut self) {
        // TODO: 调用 dlclose 卸载 hook 库
        self.injected = false;
        self.hook_base = 0;
        log::info!("SpeedHack: 移除变速 hook");
    }

    /// 是否已注入
    pub fn is_injected(&self) -> bool {
        self.injected
    }
}
