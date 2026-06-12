use crate::memory::MemoryAccess;
use std::io;

/// 变速齿轮
///
/// 通过 hook 目标进程的时间函数实现加速/减速。
///
/// 实现原理：
/// 1. 扫描目标进程的内存映射，找到 libc.so 基址
/// 2. 解析 libc.so 的 ELF 动态符号表，找到 clock_gettime/gettimeofday 地址
/// 3. 扫描所有加载库的 GOT，找到引用这两个函数的条目
/// 4. 在目标进程中找到可执行内存区域，写入 ARM64 hook shellcode
/// 5. 修改 GOT 条目指向 hook 代码
pub struct SpeedHack {
    /// 速度倍率 (1.0 = 正常)
    speed: f64,
    /// 是否已注入
    injected: bool,
    /// clock_gettime 在目标进程中的地址
    clock_gettime_addr: Option<usize>,
    /// gettimeofday 在目标进程中的地址
    gettimeofday_addr: Option<usize>,
    /// 被修改的 GOT 条目 (地址, 原始指针值)
    patched_got_entries: Vec<(usize, u64)>,
    /// hook 代码写入的地址
    hook_code_addr: Option<usize>,
    /// hook 代码大小
    hook_code_size: usize,
}

// ELF 常量
const ELF_MAGIC: [u8; 4] = [0x7f, b'E', b'L', b'F'];
const PT_DYNAMIC: u32 = 2;
const DT_NULL: i64 = 0;
const DT_SYMTAB: i64 = 6;
const DT_STRTAB: i64 = 5;
const DT_SYMENT: i64 = 11;
const DT_HASH: i64 = 4;
const DT_GNU_HASH: i64 = 0x6ffffef5;
const STT_FUNC: u8 = 2;

impl SpeedHack {
    pub fn new() -> Self {
        Self {
            speed: 1.0,
            injected: false,
            clock_gettime_addr: None,
            gettimeofday_addr: None,
            patched_got_entries: Vec::new(),
            hook_code_addr: None,
            hook_code_size: 0,
        }
    }

    /// 设置速度倍率
    pub fn set_speed(&mut self, speed: f64) {
        self.speed = speed.max(0.1).min(100.0);
    }

    /// 获取当前速度
    pub fn speed(&self) -> f64 {
        self.speed
    }

    /// 注入变速 hook 到目标进程
    pub fn inject(&mut self, mem: &dyn MemoryAccess) -> io::Result<()> {
        if self.injected {
            return Err(io::Error::new(io::ErrorKind::AlreadyExists, "变速 hook 已注入"));
        }
        if self.speed == 1.0 {
            return Ok(());
        }

        log::info!("SpeedHack: 开始注入，速度 = {}", self.speed);

        // 1. 找到 libc.so 基址
        let regions = mem.regions()?;
        let libc_base = find_libc_base(&regions).ok_or_else(|| {
            io::Error::new(io::ErrorKind::NotFound, "未找到 libc.so")
        })?;
        log::info!("SpeedHack: libc.so 基址 = {:#x}", libc_base);

        // 2. 解析 libc.so ELF，找到 clock_gettime 和 gettimeofday 地址
        let clock_gettime_addr = resolve_symbol_in_elf(mem, libc_base, "clock_gettime")?;
        let gettimeofday_addr = resolve_symbol_in_elf(mem, libc_base, "gettimeofday")?;
        log::info!(
            "SpeedHack: clock_gettime = {:#x}, gettimeofday = {:#x}",
            clock_gettime_addr,
            gettimeofday_addr
        );

        self.clock_gettime_addr = Some(clock_gettime_addr);
        self.gettimeofday_addr = Some(gettimeofday_addr);

        // 3. 扫描所有加载库的 GOT，找到引用这两个函数的条目
        let got_entries = scan_got_entries(mem, &regions, clock_gettime_addr, gettimeofday_addr)?;
        log::info!("SpeedHack: 找到 {} 个 GOT 条目", got_entries.len());

        if got_entries.is_empty() {
            return Err(io::Error::new(
                io::ErrorKind::NotFound,
                "未找到 clock_gettime/gettimeofday 的 GOT 条目",
            ));
        }

        // 4. 生成 hook shellcode
        let clock_gettime_hook = generate_clock_gettime_hook(clock_gettime_addr, self.speed);
        let gettimeofday_hook = generate_gettimeofday_hook(gettimeofday_addr, self.speed);

        // 5. 找到可写入 hook 代码的内存区域
        let total_size = clock_gettime_hook.len() + gettimeofday_hook.len();
        let hook_addr = find_code_cave(mem, &regions, total_size)?;
        log::info!("SpeedHack: hook 代码地址 = {:#x}, 大小 = {}", hook_addr, total_size);

        // 6. 写入 hook 代码
        let gettimeofday_hook_offset = clock_gettime_hook.len();
        mem.write(hook_addr, &clock_gettime_hook)?;
        mem.write(hook_addr + gettimeofday_hook_offset, &gettimeofday_hook)?;

        self.hook_code_addr = Some(hook_addr);
        self.hook_code_size = total_size;

        // 7. 修改 GOT 条目指向 hook 代码
        let clock_gettime_hook_addr = hook_addr;
        let gettimeofday_hook_addr = hook_addr + gettimeofday_hook_offset;

        for (got_addr, original_ptr) in &got_entries {
            let hook_target = if *original_ptr == clock_gettime_addr as u64 {
                clock_gettime_hook_addr
            } else {
                gettimeofday_hook_addr
            };
            let hook_ptr_bytes = (hook_target as u64).to_le_bytes();
            mem.write(*got_addr, &hook_ptr_bytes)?;
            self.patched_got_entries.push((*got_addr, *original_ptr));
        }

        self.injected = true;
        log::info!("SpeedHack: 注入完成，修改了 {} 个 GOT 条目", self.patched_got_entries.len());
        Ok(())
    }

    /// 更新速度值（已注入后调用）
    pub fn update_speed(&mut self, mem: &dyn MemoryAccess) -> io::Result<()> {
        if !self.injected || self.hook_code_addr.is_none() {
            return Err(io::Error::new(io::ErrorKind::InvalidData, "变速 hook 未注入"));
        }

        let clock_gettime_addr = self.clock_gettime_addr.ok_or_else(|| {
            io::Error::new(io::ErrorKind::InvalidData, "clock_gettime 地址未知")
        })?;
        let gettimeofday_addr = self.gettimeofday_addr.ok_or_else(|| {
            io::Error::new(io::ErrorKind::InvalidData, "gettimeofday 地址未知")
        })?;
        let hook_addr = self.hook_code_addr.unwrap();

        // 重新生成并写入 hook 代码（包含新的速度值）
        let clock_gettime_hook = generate_clock_gettime_hook(clock_gettime_addr, self.speed);
        let gettimeofday_hook = generate_gettimeofday_hook(gettimeofday_addr, self.speed);

        mem.write(hook_addr, &clock_gettime_hook)?;
        mem.write(hook_addr + clock_gettime_hook.len(), &gettimeofday_hook)?;

        log::info!("SpeedHack: 更新速度为 {}", self.speed);
        Ok(())
    }

    /// 移除变速 hook
    pub fn remove(&mut self, mem: &dyn MemoryAccess) -> io::Result<()> {
        if !self.injected {
            return Ok(());
        }

        // 恢复原始 GOT 条目
        for (got_addr, original_ptr) in &self.patched_got_entries {
            let original_bytes = original_ptr.to_le_bytes();
            mem.write(*got_addr, &original_bytes)?;
        }

        // 清零 hook 代码区域
        if let Some(addr) = self.hook_code_addr {
            let zeros = vec![0u8; self.hook_code_size];
            let _ = mem.write(addr, &zeros);
        }

        self.patched_got_entries.clear();
        self.injected = false;
        self.hook_code_addr = None;
        self.hook_code_size = 0;
        log::info!("SpeedHack: 已移除");
        Ok(())
    }

    /// 是否已注入
    pub fn is_injected(&self) -> bool {
        self.injected
    }
}

// ==================== ELF 解析 ====================

/// 在内存区域列表中查找 libc.so 基址
fn find_libc_base(regions: &[crate::memory::MemoryRegion]) -> Option<usize> {
    // 优先查找 libc.so
    for region in regions {
        if let Some(name) = &region.name {
            if name.contains("libc.so") && region.perms.read && region.perms.execute {
                return Some(region.start);
            }
        }
    }
    // 回退到 libc-*.so（某些 Android 版本）
    for region in regions {
        if let Some(name) = &region.name {
            if name.starts_with("/system/")
                && name.contains("libc-")
                && region.perms.read
                && region.perms.execute
            {
                return Some(region.start);
            }
        }
    }
    None
}

/// 解析 ELF 文件查找符号地址
fn resolve_symbol_in_elf(
    mem: &dyn MemoryAccess,
    base: usize,
    symbol_name: &str,
) -> io::Result<usize> {
    // 读取 ELF 头
    let mut ehdr = [0u8; 64];
    mem.read(base, &mut ehdr)?;

    if ehdr[..4] != ELF_MAGIC {
        return Err(io::Error::new(
            io::ErrorKind::InvalidData,
            "不是有效的 ELF 文件",
        ));
    }

    // 解析 ELF64 头部字段
    let e_phoff = u64::from_le_bytes(ehdr[32..40].try_into().unwrap());
    let e_phentsize = u16::from_le_bytes(ehdr[54..56].try_into().unwrap()) as usize;
    let e_phnum = u16::from_le_bytes(ehdr[56..58].try_into().unwrap()) as usize;

    // 查找 PT_DYNAMIC 段
    let mut dyn_vaddr = 0u64;
    let mut dyn_size = 0u64;

    for i in 0..e_phnum {
        let ph_off = base + e_phoff as usize + i * e_phentsize;
        let mut phdr = [0u8; 56];
        mem.read(ph_off, &mut phdr)?;

        let p_type = u32::from_le_bytes(phdr[0..4].try_into().unwrap());
        if p_type == PT_DYNAMIC {
            dyn_vaddr = u64::from_le_bytes(phdr[8..16].try_into().unwrap());
            dyn_size = u64::from_le_bytes(phdr[32..40].try_into().unwrap());
            break;
        }
    }

    if dyn_vaddr == 0 {
        return Err(io::Error::new(
            io::ErrorKind::NotFound,
            "未找到 PT_DYNAMIC 段",
        ));
    }

    // 读取动态段，查找符号表和字符串表地址
    let dyn_addr = base + dyn_vaddr as usize;
    let dyn_entry_size = 16;
    let dyn_count = dyn_size as usize / dyn_entry_size;

    let mut symtab_vaddr = 0u64;
    let mut strtab_vaddr = 0u64;
    let mut sym_entsize = 24u64;
    let mut hash_vaddr = 0u64;
    let mut _gnu_hash_vaddr = 0u64;

    for i in 0..dyn_count {
        let mut entry = [0u8; 16];
        mem.read(dyn_addr + i * dyn_entry_size, &mut entry)?;

        let d_tag = i64::from_le_bytes(entry[0..8].try_into().unwrap());
        let d_val = u64::from_le_bytes(entry[8..16].try_into().unwrap());

        match d_tag {
            DT_SYMTAB => symtab_vaddr = d_val,
            DT_STRTAB => strtab_vaddr = d_val,
            DT_SYMENT => sym_entsize = d_val,
            DT_HASH => hash_vaddr = d_val,
            DT_GNU_HASH => _gnu_hash_vaddr = d_val,
            DT_NULL => break,
            _ => {}
        }
    }

    if symtab_vaddr == 0 || strtab_vaddr == 0 {
        return Err(io::Error::new(
            io::ErrorKind::NotFound,
            "未找到符号表或字符串表",
        ));
    }

    // 确定符号数量
    let sym_count = if hash_vaddr != 0 {
        // DT_HASH: nchain 在第二个 word
        let mut hash_hdr = [0u8; 8];
        mem.read(base + hash_vaddr as usize + 4, &mut hash_hdr)?;
        u32::from_le_bytes(hash_hdr[0..4].try_into().unwrap()) as usize
    } else {
        // 回退：扫描最多 8192 个符号
        8192
    };

    // 扫描符号表查找目标符号
    let sym_name_bytes = symbol_name.as_bytes();
    for i in 0..sym_count {
        let sym_addr = base + symtab_vaddr as usize + i * sym_entsize as usize;
        let mut sym = [0u8; 24];
        if mem.read(sym_addr, &mut sym).is_err() {
            break;
        }

        let st_name = u32::from_le_bytes(sym[0..4].try_into().unwrap());
        let st_info = sym[4];
        let st_value = u64::from_le_bytes(sym[8..16].try_into().unwrap());

        // 只查找函数符号
        if (st_info & 0xf) != STT_FUNC || st_value == 0 {
            continue;
        }

        // 读取符号名
        let name_addr = base + strtab_vaddr as usize + st_name as usize;
        let mut name_buf = [0u8; 64];
        if mem.read(name_addr, &mut name_buf).is_err() {
            continue;
        }

        let len = sym_name_bytes.len();
        if name_buf.len() > len && &name_buf[..len] == sym_name_bytes && name_buf[len] == 0 {
            return Ok(base + st_value as usize);
        }
    }

    Err(io::Error::new(
        io::ErrorKind::NotFound,
        format!("未找到符号: {}", symbol_name),
    ))
}

// ==================== GOT 扫描 ====================

/// 扫描所有加载库的 GOT，找到引用指定函数的条目
fn scan_got_entries(
    mem: &dyn MemoryAccess,
    regions: &[crate::memory::MemoryRegion],
    clock_gettime_addr: usize,
    gettimeofday_addr: usize,
) -> io::Result<Vec<(usize, u64)>> {
    let mut entries = Vec::new();
    let targets = [clock_gettime_addr as u64, gettimeofday_addr as u64];

    for region in regions {
        if !region.perms.write {
            continue;
        }

        // 只扫描 .so 和主程序的 GOT 区域
        let is_relevant = region.name.as_ref().map_or(false, |name| {
            name.ends_with(".so")
                || name.contains("linker")
                || name.contains("app_process")
        });

        if !is_relevant {
            continue;
        }

        // 逐页扫描
        let page_size = 4096;
        let mut offset = 0;
        while offset < region.size() {
            let read_size = page_size.min(region.size() - offset);
            let mut buf = vec![0u8; read_size];
            if mem.read(region.start + offset, &mut buf).is_err() {
                offset += page_size;
                continue;
            }

            // 扫描 8 字节对齐的指针
            for j in (0..buf.len().saturating_sub(7)).step_by(8) {
                let ptr = u64::from_le_bytes(buf[j..j + 8].try_into().unwrap());
                if targets.contains(&ptr) {
                    entries.push((region.start + offset + j, ptr));
                }
            }

            offset += page_size;
        }
    }

    entries.sort_by(|a, b| a.0.cmp(&b.0));
    entries.dedup_by(|a, b| a.0 == b.0);
    Ok(entries)
}

// ==================== 代码洞查找 ====================

/// 在目标进程中找到可写入 hook 代码的内存区域
fn find_code_cave(
    mem: &dyn MemoryAccess,
    regions: &[crate::memory::MemoryRegion],
    required_size: usize,
) -> io::Result<usize> {
    // 策略1：查找可执行且可写的区域（linker 通常是 RWX）
    for region in regions {
        if region.perms.execute && region.perms.write && region.perms.read {
            if region.size() > required_size + 64 {
                let cave_addr = region.end - required_size;
                let mut test = vec![0u8; required_size];
                if mem.read(cave_addr, &mut test).is_ok() && test.iter().all(|&b| b == 0) {
                    return Ok(cave_addr);
                }
            }
        }
    }

    // 策略2：在可写区域中查找（GOT 附近通常有空间）
    for region in regions {
        if region.perms.write && region.perms.read && region.size() > required_size + 256 {
            // 在区域末尾查找零填充
            let cave_addr = region.end - required_size;
            let mut test = vec![0u8; required_size];
            if mem.read(cave_addr, &mut test).is_ok() && test.iter().all(|&b| b == 0) {
                return Ok(cave_addr);
            }
        }
    }

    // 策略3：在 linker 区域中查找
    for region in regions {
        if let Some(name) = &region.name {
            if name.contains("linker") && region.perms.read && region.size() > required_size + 256 {
                let cave_addr = region.end - required_size;
                let mut test = vec![0u8; required_size];
                if mem.read(cave_addr, &mut test).is_ok() {
                    return Ok(cave_addr);
                }
            }
        }
    }

    Err(io::Error::new(
        io::ErrorKind::Other,
        "未找到足够的可执行内存空间写入 hook 代码",
    ))
}

// ==================== ARM64 指令编码 ====================

/// ARM64 A64 指令编码辅助函数
mod arm64 {
    /// STP Xt1, Xt2, [Xn, #imm]! (pre-index, 64-bit)
    pub fn stp_pre(rt1: u32, rt2: u32, rn: u32, imm: i32) -> u32 {
        let imm7 = ((imm / 8) & 0x7F) as u32;
        0xA9800000 | (imm7 << 15) | (rt2 << 10) | (rn << 5) | rt1
    }

    /// STP Xt1, Xt2, [Xn, #imm] (signed offset, 64-bit)
    pub fn stp_off(rt1: u32, rt2: u32, rn: u32, imm: i32) -> u32 {
        let imm7 = ((imm / 8) & 0x7F) as u32;
        0xA9000000 | (imm7 << 15) | (rt2 << 10) | (rn << 5) | rt1
    }

    /// LDP Xt1, Xt2, [Xn, #imm] (signed offset, 64-bit)
    pub fn ldp_off(rt1: u32, rt2: u32, rn: u32, imm: i32) -> u32 {
        let imm7 = ((imm / 8) & 0x7F) as u32;
        0xA9400000 | (imm7 << 15) | (rt2 << 10) | (rn << 5) | rt1
    }

    /// LDP Xt1, Xt2, [Xn], #imm (post-index, 64-bit)
    pub fn ldp_post(rt1: u32, rt2: u32, rn: u32, imm: i32) -> u32 {
        let imm7 = ((imm / 8) & 0x7F) as u32;
        0xA8C00000 | (imm7 << 15) | (rt2 << 10) | (rn << 5) | rt1
    }

    /// MOV Xd, Xn (ORR Xd, XZR, Xn)
    pub fn mov_x(rd: u32, rn: u32) -> u32 {
        0xAA0003E0 | (rn << 16) | rd
    }

    /// ADD Xd, SP, #imm (用于 mov x29, sp)
    pub fn add_x_sp(rd: u32, imm: u32) -> u32 {
        0x91000000 | ((imm & 0xFFF) << 10) | (31 << 5) | rd
    }

    /// BLR Xn
    pub fn blr(rn: u32) -> u32 {
        0xD63F0000 | (rn << 5)
    }

    /// RET
    pub fn ret() -> u32 {
        0xD65F03C0
    }

    /// LDR Xt, label (literal, 64-bit)
    /// offset = target_addr - instruction_addr (in bytes, must be multiple of 4)
    pub fn ldr_x_literal(rt: u32, offset: i32) -> u32 {
        let imm19 = ((offset / 4) & 0x7FFFF) as u32;
        0x58000000 | (imm19 << 5) | rt
    }

    /// LDR Xt, [Xn, #imm] (unsigned offset, 64-bit)
    pub fn ldr_x_off(rt: u32, rn: u32, imm: u32) -> u32 {
        0xF9400000 | (((imm / 8) & 0xFFF) << 10) | (rn << 5) | rt
    }

    /// STR Xt, [Xn, #imm] (unsigned offset, 64-bit)
    pub fn str_x_off(rt: u32, rn: u32, imm: u32) -> u32 {
        0xF9000000 | (((imm / 8) & 0xFFF) << 10) | (rn << 5) | rt
    }

    /// LDR Dt, [Xn, #imm] (unsigned offset, 64-bit FP)
    pub fn ldr_d_off(rt: u32, rn: u32, imm: u32) -> u32 {
        0xFD400000 | (((imm / 8) & 0xFFF) << 10) | (rn << 5) | rt
    }

    /// FMOV Dd, Xn (general register to FP, no conversion)
    pub fn fmov_d_x(rd: u32, rn: u32) -> u32 {
        0x9E670000 | (rn << 5) | rd
    }

    /// SCVTF Dd, Xn (signed 64-bit integer to double)
    pub fn scvtf_d_x(rd: u32, rn: u32) -> u32 {
        0x9E620000 | (rn << 5) | rd
    }

    /// FCVTZS Xd, Dn (double to signed 64-bit integer, round toward zero)
    pub fn fcvtzs_x_d(rd: u32, rn: u32) -> u32 {
        0x9E380000 | (rn << 5) | rd
    }

    /// FMUL Dd, Dn, Dm
    pub fn fmul_d(rd: u32, rn: u32, rm: u32) -> u32 {
        0x1E200800 | (rm << 16) | (rn << 5) | rd
    }

    /// FDIV Dd, Dn, Dm
    pub fn fdiv_d(rd: u32, rn: u32, rm: u32) -> u32 {
        0x1E201800 | (rm << 16) | (rn << 5) | rd
    }

    /// FADD Dd, Dn, Dm
    pub fn fadd_d(rd: u32, rn: u32, rm: u32) -> u32 {
        0x1E202800 | (rm << 16) | (rn << 5) | rd
    }

    /// FSUB Dd, Dn, Dm
    pub fn fsub_d(rd: u32, rn: u32, rm: u32) -> u32 {
        0x1E203800 | (rm << 16) | (rn << 5) | rd
    }

    /// CBNZ Xt, #offset (branch if not zero, 64-bit)
    pub fn cbnz_x(rt: u32, offset: i32) -> u32 {
        let imm19 = ((offset / 4) & 0x7FFFF) as u32;
        0xB5000000 | (imm19 << 5) | rt
    }
}

// ==================== Hook Shellcode 生成 ====================

/// 生成 clock_gettime hook 的 ARM64 shellcode
///
/// clock_gettime(clockid_t clk_id, struct timespec *tp)
/// tp->tv_sec (8 bytes at offset 0), tp->tv_nsec (8 bytes at offset 8)
///
/// hook 逻辑：
/// 1. 保存寄存器
/// 2. 调用原始 clock_gettime
/// 3. 如果成功，缩放时间值
/// 4. 恢复寄存器并返回
fn generate_clock_gettime_hook(original_addr: usize, speed: f64) -> Vec<u8> {
    let mut code = Vec::new();

    // ---- 保存寄存器 ----
    code.emit(arm64::stp_pre(29, 30, 31, -48)); // stp x29, x30, [sp, #-48]!
    code.emit(arm64::stp_off(19, 20, 31, 16));  // stp x19, x20, [sp, #16]
    code.emit(arm64::stp_off(21, 22, 31, 32));  // stp x21, x22, [sp, #32]
    code.emit(arm64::add_x_sp(29, 0));           // add x29, sp, #0 (mov x29, sp)

    // ---- 保存原始参数 ----
    code.emit(arm64::mov_x(19, 0)); // mov x19, x0 (clk_id)
    code.emit(arm64::mov_x(20, 1)); // mov x20, x1 (tp)

    // ---- 调用原始 clock_gettime ----
    let ldr_original_idx = code.len();
    code.emit(0); // placeholder: ldr x21, [pc, #offset_to_original_addr]
    code.emit(arm64::blr(21)); // blr x21

    // ---- 如果返回值非 0（失败），跳到恢复 ----
    let cbnz_idx = code.len();
    code.emit(0); // placeholder: cbnz x0, .Lrestore

    // ---- 加载速度因子 ----
    let ldr_speed_idx = code.len();
    code.emit(0); // placeholder: ldr x21, [pc, #offset_to_speed]
    code.emit(arm64::fmov_d_x(0, 21)); // fmov d0, x21 (speed factor)

    // ---- 加载 tv_sec, 转为 double ----
    code.emit(arm64::ldr_x_off(21, 20, 0)); // ldr x21, [x20, #0] (tv_sec)
    code.emit(arm64::scvtf_d_x(1, 21));     // scvtf d1, x21

    // ---- 加载 tv_nsec, 转为 double ----
    code.emit(arm64::ldr_x_off(22, 20, 8)); // ldr x22, [x20, #8] (tv_nsec)
    code.emit(arm64::scvtf_d_x(2, 22));     // scvtf d2, x22

    // ---- total = tv_sec + tv_nsec / 1e9 ----
    let ldr_1e9_idx = code.len();
    code.emit(0); // placeholder: ldr x21, [pc, #offset_to_1e9]
    code.emit(arm64::fmov_d_x(3, 21)); // fmov d3, x21 (1e9)
    code.emit(arm64::fdiv_d(2, 2, 3));  // fdiv d2, d2, d3 (tv_nsec / 1e9)
    code.emit(arm64::fadd_d(1, 1, 2));  // fadd d1, d1, d2 (total seconds)

    // ---- scaled = total * speed ----
    code.emit(arm64::fmul_d(1, 1, 0)); // fmul d1, d1, d0

    // ---- tv_sec = floor(scaled) ----
    code.emit(arm64::fcvtzs_x_d(21, 1));  // fcvtzs x21, d1
    code.emit(arm64::str_x_off(21, 20, 0)); // str x21, [x20, #0]

    // ---- tv_nsec = (scaled - tv_sec) * 1e9 ----
    code.emit(arm64::scvtf_d_x(2, 21));   // scvtf d2, x21
    code.emit(arm64::fsub_d(1, 1, 2));     // fsub d1, d1, d2
    code.emit(arm64::fmul_d(1, 1, 3));     // fmul d1, d1, d3 (* 1e9)
    code.emit(arm64::fcvtzs_x_d(22, 1));   // fcvtzs x22, d1
    code.emit(arm64::str_x_off(22, 20, 8)); // str x22, [x20, #8]

    // ---- .Lrestore: 恢复寄存器 ----
    let restore_offset = code.len();
    code.emit(arm64::ldp_off(19, 20, 31, 16));  // ldp x19, x20, [sp, #16]
    code.emit(arm64::ldp_off(21, 22, 31, 32));  // ldp x21, x22, [sp, #32]
    code.emit(arm64::ldp_post(29, 30, 31, 48)); // ldp x29, x30, [sp], #48
    code.emit(arm64::ret());                      // ret

    // ---- 数据区 ----
    let data_start = code.len();
    code.extend_from_slice(&(original_addr as u64).to_le_bytes()); // original function address
    code.extend_from_slice(&speed.to_le_bytes());                   // speed factor (f64)
    code.extend_from_slice(&1_000_000_000.0f64.to_le_bytes());     // 1e9 (f64)

    // ---- 修复 PC 相对偏移 ----
    let original_data_off = data_start;
    let speed_data_off = data_start + 8;
    let one_e9_data_off = data_start + 16;

    // 修复 ldr x21, [pc, #offset_to_original_addr]
    let offset = (original_data_off - ldr_original_idx) as i32;
    code.patch_u32(ldr_original_idx, arm64::ldr_x_literal(21, offset));

    // 修复 ldr x21, [pc, #offset_to_speed]
    let offset = (speed_data_off - ldr_speed_idx) as i32;
    code.patch_u32(ldr_speed_idx, arm64::ldr_x_literal(21, offset));

    // 修复 ldr x21, [pc, #offset_to_1e9]
    let offset = (one_e9_data_off - ldr_1e9_idx) as i32;
    code.patch_u32(ldr_1e9_idx, arm64::ldr_x_literal(21, offset));

    // 修复 cbnz x0, .Lrestore
    let offset = (restore_offset - cbnz_idx) as i32;
    code.patch_u32(cbnz_idx, arm64::cbnz_x(0, offset));

    code
}

/// 生成 gettimeofday hook 的 ARM64 shellcode
///
/// gettimeofday(struct timeval *tv, struct timezone *tz)
/// tv->tv_sec (8 bytes at offset 0), tv->tv_usec (8 bytes at offset 8)
fn generate_gettimeofday_hook(original_addr: usize, speed: f64) -> Vec<u8> {
    let mut code = Vec::new();

    // ---- 保存寄存器 ----
    code.emit(arm64::stp_pre(29, 30, 31, -48)); // stp x29, x30, [sp, #-48]!
    code.emit(arm64::stp_off(19, 20, 31, 16));  // stp x19, x20, [sp, #16]
    code.emit(arm64::stp_off(21, 22, 31, 32));  // stp x21, x22, [sp, #32]
    code.emit(arm64::add_x_sp(29, 0));           // add x29, sp, #0

    // ---- 保存原始参数 ----
    code.emit(arm64::mov_x(19, 0)); // mov x19, x0 (tv)
    code.emit(arm64::mov_x(20, 1)); // mov x20, x1 (tz)

    // ---- 调用原始 gettimeofday ----
    let ldr_original_idx = code.len();
    code.emit(0); // placeholder
    code.emit(arm64::blr(21)); // blr x21

    // ---- 如果返回值非 0（失败），跳到恢复 ----
    let cbnz_idx = code.len();
    code.emit(0); // placeholder

    // ---- 加载速度因子 ----
    let ldr_speed_idx = code.len();
    code.emit(0); // placeholder
    code.emit(arm64::fmov_d_x(0, 21)); // fmov d0, x21

    // ---- 加载 tv_sec, 转为 double ----
    code.emit(arm64::ldr_x_off(21, 19, 0)); // ldr x21, [x19, #0] (tv_sec)
    code.emit(arm64::scvtf_d_x(1, 21));     // scvtf d1, x21

    // ---- 加载 tv_usec, 转为 double ----
    code.emit(arm64::ldr_x_off(22, 19, 8)); // ldr x22, [x19, #8] (tv_usec)
    code.emit(arm64::scvtf_d_x(2, 22));     // scvtf d2, x22

    // ---- total = tv_sec + tv_usec / 1e6 ----
    let ldr_1e6_idx = code.len();
    code.emit(0); // placeholder
    code.emit(arm64::fmov_d_x(3, 21)); // fmov d3, x21 (1e6)
    code.emit(arm64::fdiv_d(2, 2, 3));  // fdiv d2, d2, d3
    code.emit(arm64::fadd_d(1, 1, 2));  // fadd d1, d1, d2

    // ---- scaled = total * speed ----
    code.emit(arm64::fmul_d(1, 1, 0)); // fmul d1, d1, d0

    // ---- tv_sec = floor(scaled) ----
    code.emit(arm64::fcvtzs_x_d(21, 1));  // fcvtzs x21, d1
    code.emit(arm64::str_x_off(21, 19, 0)); // str x21, [x19, #0]

    // ---- tv_usec = (scaled - tv_sec) * 1e6 ----
    code.emit(arm64::scvtf_d_x(2, 21));   // scvtf d2, x21
    code.emit(arm64::fsub_d(1, 1, 2));     // fsub d1, d1, d2
    code.emit(arm64::fmul_d(1, 1, 3));     // fmul d1, d1, d3 (* 1e6)
    code.emit(arm64::fcvtzs_x_d(22, 1));   // fcvtzs x22, d1
    code.emit(arm64::str_x_off(22, 19, 8)); // str x22, [x19, #8]

    // ---- .Lrestore: 恢复寄存器 ----
    let restore_offset = code.len();
    code.emit(arm64::ldp_off(19, 20, 31, 16));
    code.emit(arm64::ldp_off(21, 22, 31, 32));
    code.emit(arm64::ldp_post(29, 30, 31, 48));
    code.emit(arm64::ret());

    // ---- 数据区 ----
    let data_start = code.len();
    code.extend_from_slice(&(original_addr as u64).to_le_bytes());
    code.extend_from_slice(&speed.to_le_bytes());
    code.extend_from_slice(&1_000_000.0f64.to_le_bytes()); // 1e6

    // ---- 修复 PC 相对偏移 ----
    let original_data_off = data_start;
    let speed_data_off = data_start + 8;
    let one_e6_data_off = data_start + 16;

    let offset = (original_data_off - ldr_original_idx) as i32;
    code.patch_u32(ldr_original_idx, arm64::ldr_x_literal(21, offset));

    let offset = (speed_data_off - ldr_speed_idx) as i32;
    code.patch_u32(ldr_speed_idx, arm64::ldr_x_literal(21, offset));

    let offset = (one_e6_data_off - ldr_1e6_idx) as i32;
    code.patch_u32(ldr_1e6_idx, arm64::ldr_x_literal(21, offset));

    let offset = (restore_offset - cbnz_idx) as i32;
    code.patch_u32(cbnz_idx, arm64::cbnz_x(0, offset));

    code
}

// ==================== 辅助 trait ====================

trait CodeEmitter {
    fn emit(&mut self, instr: u32);
    fn patch_u32(&mut self, offset: usize, value: u32);
}

impl CodeEmitter for Vec<u8> {
    fn emit(&mut self, instr: u32) {
        self.extend_from_slice(&instr.to_le_bytes());
    }

    fn patch_u32(&mut self, offset: usize, value: u32) {
        self[offset..offset + 4].copy_from_slice(&value.to_le_bytes());
    }
}
