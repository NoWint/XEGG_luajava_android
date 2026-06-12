use std::io;

/// 搜索数据类型
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
#[repr(u8)]
pub enum SearchType {
    I8 = 0,
    I16 = 1,
    I32 = 2,
    I64 = 3,
    U8 = 4,
    U16 = 5,
    U32 = 6,
    U64 = 7,
    F32 = 8,
    F64 = 9,
}

impl SearchType {
    pub fn size(&self) -> usize {
        match self {
            SearchType::I8 | SearchType::U8 => 1,
            SearchType::I16 | SearchType::U16 => 2,
            SearchType::I32 | SearchType::U32 | SearchType::F32 => 4,
            SearchType::I64 | SearchType::U64 | SearchType::F64 => 8,
        }
    }

    pub fn from_code(code: u8) -> Option<Self> {
        match code {
            0 => Some(SearchType::I8),
            1 => Some(SearchType::I16),
            2 => Some(SearchType::I32),
            3 => Some(SearchType::I64),
            4 => Some(SearchType::U8),
            5 => Some(SearchType::U16),
            6 => Some(SearchType::U32),
            7 => Some(SearchType::U64),
            8 => Some(SearchType::F32),
            9 => Some(SearchType::F64),
            _ => None,
        }
    }
}

/// 搜索模式
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum SearchMode {
    Exact,       // 精确搜索
    Fuzzy,       // 模糊搜索
    Range,       // 范围搜索
}

/// 模糊搜索条件
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum FuzzyCondition {
    Increased,   // 变大
    Decreased,   // 变小
    Changed,     // 变化了
    Unchanged,   // 不变
}

/// 内存区域过滤掩码（与 GG 一致）
pub struct RegionFilter;

impl RegionFilter {
    pub const C_ALLOC: u32 = 1;       // [anon:dalvik-...]
    pub const C_BSS: u32 = 2;         // [anon:.bss]
    pub const C_HEAP: u32 = 4;        // [heap]
    pub const C_JAVA_HEAP: u32 = 8;   // Java heap
    pub const C_SO: u32 = 16;         // .so libraries
    pub const C_STACK: u32 = 32;      // [stack]
    pub const C_OTHER: u32 = 64;      // 其他可写区域
    pub const C_BAD: u32 = 128;       // 不可读区域
    pub const C_APP: u32 = 256;       // App 数据
    pub const ALL: u32 = 0xFFFFFFFF;  // 所有区域
}

/// 搜索匹配项
#[derive(Debug, Clone)]
pub struct MatchItem {
    pub addr: usize,
    pub value: Vec<u8>,
    pub region_name: String,
}

/// 搜索结果
#[derive(Debug, Clone)]
pub struct SearchResult {
    pub matches: Vec<MatchItem>,
    pub search_type: SearchType,
    pub search_mode: SearchMode,
    pub region_filter: u32,
}

impl SearchResult {
    pub fn new(search_type: SearchType, search_mode: SearchMode, region_filter: u32) -> Self {
        Self {
            matches: Vec::new(),
            search_type,
            search_mode,
            region_filter,
        }
    }

    pub fn count(&self) -> usize {
        self.matches.len()
    }
}

/// 搜索引擎
pub struct SearchEngine {
    /// 上次搜索结果（用于后续筛选）
    pub last_result: Option<SearchResult>,
    /// 当前搜索数据类型
    pub current_type: Option<SearchType>,
    /// 当前区域过滤
    pub region_filter: u32,
}

impl SearchEngine {
    pub fn new() -> Self {
        Self {
            last_result: None,
            current_type: None,
            region_filter: RegionFilter::ALL,
        }
    }

    /// 第一次搜索：扫描全部内存
    pub fn first_search(
        &mut self,
        mem: &dyn crate::memory::MemoryAccess,
        value: &str,
        search_type: SearchType,
        region_filter: u32,
    ) -> io::Result<SearchResult> {
        let type_size = search_type.size();
        let target_bytes = parse_value(value, search_type)
            .ok_or_else(|| io::Error::new(io::ErrorKind::InvalidInput, "无效的搜索值"))?;

        let regions = mem.regions()?;
        let mut result = SearchResult::new(search_type, SearchMode::Exact, region_filter);

        for region in &regions {
            // 跳过不可读区域
            if !region.perms.read {
                continue;
            }
            // 区域过滤
            if !should_scan_region(region, region_filter) {
                continue;
            }

            let region_size = region.size();
            if region_size < type_size || region_size > 512 * 1024 * 1024 {
                continue; // 跳过过小或过大的区域
            }

            let mut buf = vec![0u8; region_size];
            if mem.read(region.start, &mut buf).is_err() {
                continue;
            }

            // 滑动窗口搜索
            for offset in 0..=(buf.len() - type_size) {
                let window = &buf[offset..offset + type_size];
                if window == target_bytes.as_slice() {
                    result.matches.push(MatchItem {
                        addr: region.start + offset,
                        value: window.to_vec(),
                        region_name: region.name.clone().unwrap_or_default(),
                    });
                }
            }
        }

        self.current_type = Some(search_type);
        self.region_filter = region_filter;
        self.last_result = Some(result.clone());
        Ok(result)
    }

    /// 后续搜索：在上次结果中筛选
    pub fn refine_search(
        &mut self,
        mem: &dyn crate::memory::MemoryAccess,
        value: &str,
    ) -> io::Result<SearchResult> {
        let last = self.last_result.as_ref()
            .ok_or_else(|| io::Error::new(io::ErrorKind::InvalidInput, "没有上次搜索结果"))?;

        let search_type = self.current_type
            .ok_or_else(|| io::Error::new(io::ErrorKind::InvalidInput, "没有设置搜索类型"))?;

        let type_size = search_type.size();
        let target_bytes = parse_value(value, search_type)
            .ok_or_else(|| io::Error::new(io::ErrorKind::InvalidInput, "无效的搜索值"))?;

        let mut result = SearchResult::new(search_type, SearchMode::Exact, self.region_filter);

        for item in &last.matches {
            let mut buf = vec![0u8; type_size];
            if mem.read(item.addr, &mut buf).is_err() {
                continue;
            }
            if buf == target_bytes.as_slice() {
                result.matches.push(MatchItem {
                    addr: item.addr,
                    value: buf,
                    region_name: item.region_name.clone(),
                });
            }
        }

        self.last_result = Some(result.clone());
        Ok(result)
    }

    /// 模糊搜索
    pub fn fuzzy_search(
        &mut self,
        mem: &dyn crate::memory::MemoryAccess,
        condition: FuzzyCondition,
    ) -> io::Result<SearchResult> {
        let last = self.last_result.as_ref()
            .ok_or_else(|| io::Error::new(io::ErrorKind::InvalidInput, "没有上次搜索结果，请先进行一次精确搜索"))?;

        let search_type = self.current_type
            .ok_or_else(|| io::Error::new(io::ErrorKind::InvalidInput, "没有设置搜索类型"))?;

        let type_size = search_type.size();
        let mut result = SearchResult::new(search_type, SearchMode::Fuzzy, self.region_filter);

        for item in &last.matches {
            let mut buf = vec![0u8; type_size];
            if mem.read(item.addr, &mut buf).is_err() {
                continue;
            }

            let matches = match condition {
                FuzzyCondition::Increased => compare_values(&item.value, &buf, search_type, |old, new| new > old),
                FuzzyCondition::Decreased => compare_values(&item.value, &buf, search_type, |old, new| new < old),
                FuzzyCondition::Changed => compare_values(&item.value, &buf, search_type, |old, new| old != new),
                FuzzyCondition::Unchanged => compare_values(&item.value, &buf, search_type, |old, new| old == new),
            };

            if matches {
                result.matches.push(MatchItem {
                    addr: item.addr,
                    value: buf,
                    region_name: item.region_name.clone(),
                });
            }
        }

        self.last_result = Some(result.clone());
        Ok(result)
    }

    /// 清空搜索结果
    pub fn clear(&mut self) {
        self.last_result = None;
        self.current_type = None;
    }

    /// 获取当前结果数量
    pub fn result_count(&self) -> usize {
        self.last_result.as_ref().map_or(0, |r| r.count())
    }
}

/// 解析搜索值为字节
fn parse_value(value: &str, search_type: SearchType) -> Option<Vec<u8>> {
    match search_type {
        SearchType::I8 => value.parse::<i8>().ok().map(|v| v.to_le_bytes().to_vec()),
        SearchType::I16 => value.parse::<i16>().ok().map(|v| v.to_le_bytes().to_vec()),
        SearchType::I32 => value.parse::<i32>().ok().map(|v| v.to_le_bytes().to_vec()),
        SearchType::I64 => value.parse::<i64>().ok().map(|v| v.to_le_bytes().to_vec()),
        SearchType::U8 => value.parse::<u8>().ok().map(|v| v.to_le_bytes().to_vec()),
        SearchType::U16 => value.parse::<u16>().ok().map(|v| v.to_le_bytes().to_vec()),
        SearchType::U32 => value.parse::<u32>().ok().map(|v| v.to_le_bytes().to_vec()),
        SearchType::U64 => value.parse::<u64>().ok().map(|v| v.to_le_bytes().to_vec()),
        SearchType::F32 => value.parse::<f32>().ok().map(|v| v.to_le_bytes().to_vec()),
        SearchType::F64 => value.parse::<f64>().ok().map(|v| v.to_le_bytes().to_vec()),
    }
}

/// 比较两个值的通用函数
fn compare_values<F: Fn(f64, f64) -> bool>(
    old_bytes: &[u8], new_bytes: &[u8], search_type: SearchType, cmp: F,
) -> bool {
    let old_val = bytes_to_f64(old_bytes, search_type);
    let new_val = bytes_to_f64(new_bytes, search_type);
    match (old_val, new_val) {
        (Some(o), Some(n)) => cmp(o, n),
        _ => false,
    }
}

/// 将字节转换为 f64 用于比较
fn bytes_to_f64(bytes: &[u8], search_type: SearchType) -> Option<f64> {
    match search_type {
        SearchType::I8 => Some(i8::from_le_bytes(bytes.try_into().ok()?) as f64),
        SearchType::I16 => Some(i16::from_le_bytes(bytes.try_into().ok()?) as f64),
        SearchType::I32 => Some(i32::from_le_bytes(bytes.try_into().ok()?) as f64),
        SearchType::I64 => Some(i64::from_le_bytes(bytes.try_into().ok()?) as f64),
        SearchType::U8 => Some(u8::from_le_bytes(bytes.try_into().ok()?) as f64),
        SearchType::U16 => Some(u16::from_le_bytes(bytes.try_into().ok()?) as f64),
        SearchType::U32 => Some(u32::from_le_bytes(bytes.try_into().ok()?) as f64),
        SearchType::U64 => Some(u64::from_le_bytes(bytes.try_into().ok()?) as f64),
        SearchType::F32 => Some(f32::from_le_bytes(bytes.try_into().ok()?) as f64),
        SearchType::F64 => Some(f64::from_le_bytes(bytes.try_into().ok()?)),
    }
}

/// 判断区域是否应该被扫描
fn should_scan_region(region: &crate::memory::MemoryRegion, filter: u32) -> bool {
    if filter == RegionFilter::ALL {
        return region.perms.read;
    }

    let name = region.name.as_deref().unwrap_or("");

    let region_flag = if name.contains("dalvik") || name.contains("alloc") {
        RegionFilter::C_ALLOC
    } else if name.contains(".bss") {
        RegionFilter::C_BSS
    } else if name == "[heap]" {
        RegionFilter::C_HEAP
    } else if name.contains("java") || name.contains("Java") {
        RegionFilter::C_JAVA_HEAP
    } else if name.contains(".so") {
        RegionFilter::C_SO
    } else if name == "[stack]" {
        RegionFilter::C_STACK
    } else if !region.perms.read {
        RegionFilter::C_BAD
    } else if name.starts_with('/') {
        RegionFilter::C_APP
    } else {
        RegionFilter::C_OTHER
    };

    (filter & region_flag) != 0
}
