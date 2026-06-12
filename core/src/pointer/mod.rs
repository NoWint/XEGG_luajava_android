use crate::memory::MemoryAccess;
use std::io;

/// 指针链
#[derive(Debug, Clone)]
pub struct PointerChain {
    /// 基地址
    pub base_addr: usize,
    /// 偏移链
    pub offsets: Vec<usize>,
    /// 最终解析到的地址
    pub resolved_addr: usize,
}

/// 指针追踪器
///
/// 从基地址出发，按照偏移链逐级解引用指针，
/// 找到最终指向目标地址的所有指针路径。
pub struct PointerTracker {
    /// 最大搜索深度
    max_depth: usize,
    /// 最大偏移范围
    max_offset: usize,
}

impl PointerTracker {
    pub fn new() -> Self {
        Self {
            max_depth: 5,
            max_offset: 0x1000,
        }
    }

    /// 设置最大搜索深度
    pub fn set_max_depth(&mut self, depth: usize) {
        self.max_depth = depth;
    }

    /// 设置最大偏移范围
    pub fn set_max_offset(&mut self, offset: usize) {
        self.max_offset = offset;
    }

    /// 解析单条指针链
    ///
    /// 从 base_addr 开始，依次加上每个偏移并解引用，
    /// 返回最终地址。
    pub fn resolve(&self, mem: &dyn MemoryAccess, base_addr: usize, offsets: &[usize]) -> io::Result<usize> {
        let mut addr = base_addr;
        for &offset in offsets {
            // 读取指针值
            let mut ptr_bytes = [0u8; 8];
            mem.read(addr, &mut ptr_bytes)?;
            addr = usize::from_le_bytes(ptr_bytes);
            if addr == 0 {
                return Err(io::Error::new(io::ErrorKind::InvalidData, "空指针"));
            }
            addr = addr.wrapping_add(offset);
        }
        Ok(addr)
    }

    /// 搜索指向目标地址的指针
    ///
    /// 在指定内存区域中搜索包含目标地址的指针，
    /// 然后递归搜索指向这些指针的指针，构建指针链。
    pub fn search_pointers(
        &self,
        mem: &dyn MemoryAccess,
        target: usize,
        base_addr: usize,
        search_size: usize,
    ) -> io::Result<Vec<PointerChain>> {
        let mut chains = Vec::new();
        self.search_pointers_recursive(
            mem, target, base_addr, search_size, 0, &mut chains,
        )?;
        Ok(chains)
    }

    /// 递归搜索指针
    fn search_pointers_recursive(
        &self,
        mem: &dyn MemoryAccess,
        target: usize,
        base_addr: usize,
        search_size: usize,
        depth: usize,
        chains: &mut Vec<PointerChain>,
    ) -> io::Result<()> {
        if depth >= self.max_depth {
            return Ok(());
        }

        // 限制结果数量
        if chains.len() >= 100 {
            return Ok(());
        }

        // 在 [base_addr, base_addr + search_size) 范围内搜索
        let end_addr = base_addr.saturating_add(search_size);
        let mut addr = base_addr;

        while addr < end_addr && chains.len() < 100 {
            // 读取 8 字节作为指针值
            let mut ptr_bytes = [0u8; 8];
            match mem.read(addr, &mut ptr_bytes) {
                Ok(()) => {}
                Err(_) => {
                    addr += 8;
                    continue;
                }
            }

            let ptr_value = usize::from_le_bytes(ptr_bytes);

            // 检查指针值是否在目标附近（允许偏移）
            if ptr_value >= target.saturating_sub(self.max_offset)
                && ptr_value <= target.saturating_add(self.max_offset)
            {
                let offset = ptr_value.wrapping_sub(target);

                // 如果直接指向目标，记录指针链
                if ptr_value == target || offset <= self.max_offset {
                    chains.push(PointerChain {
                        base_addr: addr,
                        offsets: if ptr_value == target {
                            vec![]
                        } else {
                            vec![offset]
                        },
                        resolved_addr: ptr_value,
                    });
                }

                // 递归搜索指向当前地址的指针
                self.search_pointers_recursive(
                    mem, addr, base_addr, search_size, depth + 1, chains,
                )?;
            }

            addr += 8;
        }

        Ok(())
    }
}
