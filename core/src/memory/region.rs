use crate::memory::traits::{MemoryRegion, Permissions};
use std::fs;
use std::io;

/// 解析 /proc/pid/maps 文件获取内存区域列表
pub fn parse_maps(pid: i32) -> io::Result<Vec<MemoryRegion>> {
    let path = format!("/proc/{}/maps", pid);
    let content = fs::read_to_string(&path)?;

    let mut regions = Vec::new();

    for line in content.lines() {
        if let Some(region) = parse_maps_line(line) {
            regions.push(region);
        }
    }

    Ok(regions)
}

fn parse_maps_line(line: &str) -> Option<MemoryRegion> {
    let parts: Vec<&str> = line.splitn(6, char::is_whitespace).collect();
    if parts.len() < 2 {
        return None;
    }

    let addr_parts: Vec<&str> = parts[0].splitn(2, '-').collect();
    if addr_parts.len() != 2 {
        return None;
    }

    let start = usize::from_str_radix(addr_parts[0], 16).ok()?;
    let end = usize::from_str_radix(addr_parts[1], 16).ok()?;

    let perm_str = parts[1];
    let perms = Permissions {
        read: perm_str.starts_with('r'),
        write: perm_str.len() > 1 && perm_str.as_bytes()[1] == b'w',
        execute: perm_str.len() > 2 && perm_str.as_bytes()[2] == b'x',
    };

    let name = if parts.len() >= 6 {
        let name = parts[5].trim();
        if name.is_empty() {
            None
        } else {
            Some(name.to_string())
        }
    } else {
        None
    };

    Some(MemoryRegion {
        start,
        end,
        perms,
        name,
    })
}
