use std::io;
use std::sync::atomic::{AtomicBool, Ordering};
use std::thread;
use std::time::Duration;

use crate::memory::MemoryAccess;

/// 值修改器
pub struct ValueWriter;

impl ValueWriter {
    /// 写入值到指定地址
    pub fn write_value(
        mem: &dyn MemoryAccess,
        addr: usize,
        value: &[u8],
    ) -> io::Result<()> {
        mem.write(addr, value)
    }

    /// 批量写入
    pub fn write_values(
        mem: &dyn MemoryAccess,
        items: &[(usize, Vec<u8>)],
    ) -> Vec<io::Result<()>> {
        items.iter().map(|(addr, value)| Self::write_value(mem, *addr, value)).collect()
    }
}

/// 值锁定器 — 后台线程周期性写入指定值
pub struct ValueLocker {
    locked: Vec<LockEntry>,
    running: AtomicBool,
}

struct LockEntry {
    addr: usize,
    value: Vec<u8>,
    interval: Duration,
}

impl ValueLocker {
    pub fn new() -> Self {
        Self {
            locked: Vec::new(),
            running: AtomicBool::new(false),
        }
    }

    /// 锁定一个地址（周期性写入）
    pub fn lock(&mut self, addr: usize, value: Vec<u8>, interval_ms: u64) {
        self.locked.push(LockEntry {
            addr,
            value,
            interval: Duration::from_millis(interval_ms),
        });
    }

    /// 解锁指定地址
    pub fn unlock(&mut self, addr: usize) {
        self.locked.retain(|e| e.addr != addr);
    }

    /// 解锁全部
    pub fn unlock_all(&mut self) {
        self.locked.clear();
        self.running.store(false, Ordering::Relaxed);
    }

    /// 获取锁定数量
    pub fn locked_count(&self) -> usize {
        self.locked.len()
    }

    /// 启动锁定循环（在当前线程阻塞执行）
    /// 实际使用中应在后台线程调用
    pub fn run_lock_loop(&self, mem: &dyn MemoryAccess) {
        self.running.store(true, Ordering::Relaxed);
        while self.running.load(Ordering::Relaxed) && !self.locked.is_empty() {
            for entry in &self.locked {
                let _ = mem.write(entry.addr, &entry.value);
            }
            thread::sleep(Duration::from_millis(100));
        }
    }

    /// 停止锁定循环
    pub fn stop(&self) {
        self.running.store(false, Ordering::Relaxed);
    }
}
