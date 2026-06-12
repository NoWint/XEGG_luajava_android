use crate::memory::{MemoryAccess, MemoryRegion};
use std::io::{self, Write};

/// 十六进制视图行
#[derive(Debug, Clone)]
pub struct HexLine {
    pub addr: usize,
    pub bytes: Vec<u8>,
    pub ascii: String,
}

/// 内存 Dump 工具
pub struct MemoryDumper;

impl MemoryDumper {
    /// Dump 一个内存区域到写入器
    pub fn dump_region(
        mem: &dyn MemoryAccess,
        region: &MemoryRegion,
        output: &mut impl Write,
    ) -> io::Result<()> {
        let mut addr = region.start;
        let chunk_size = 4096usize;

        while addr < region.end {
            let read_size = chunk_size.min(region.end - addr);
            let mut buf = vec![0u8; read_size];

            match mem.read(addr, &mut buf) {
                Ok(()) => {
                    output.write_all(&buf)?;
                }
                Err(_) => {
                    // 不可读区域填充零
                    let zeros = vec![0u8; read_size];
                    output.write_all(&zeros)?;
                }
            }

            addr += read_size;
        }

        Ok(())
    }

    /// 生成十六进制视图
    pub fn hex_view(
        mem: &dyn MemoryAccess,
        addr: usize,
        len: usize,
    ) -> io::Result<Vec<HexLine>> {
        let mut lines = Vec::new();
        let bytes_per_line = 16;
        let mut offset = 0;

        while offset < len {
            let line_addr = addr + offset;
            let line_len = bytes_per_line.min(len - offset);
            let mut buf = vec![0u8; line_len];

            match mem.read(line_addr, &mut buf) {
                Ok(()) => {}
                Err(_) => {
                    buf = vec![0xCDu8; line_len]; // 不可读标记
                }
            }

            let ascii: String = buf
                .iter()
                .map(|&b| if b.is_ascii_graphic() || b == b' ' { b as char } else { '.' })
                .collect();

            lines.push(HexLine {
                addr: line_addr,
                bytes: buf,
                ascii,
            });

            offset += bytes_per_line;
        }

        Ok(lines)
    }

    /// Dump 内存区域到文件
    pub fn dump_to_file(
        mem: &dyn MemoryAccess,
        region: &MemoryRegion,
        path: &str,
    ) -> io::Result<()> {
        let mut file = std::fs::File::create(path)?;
        Self::dump_region(mem, region, &mut file)
    }

    /// 生成十六进制视图字符串
    pub fn hex_view_string(
        mem: &dyn MemoryAccess,
        addr: usize,
        len: usize,
    ) -> io::Result<String> {
        let lines = Self::hex_view(mem, addr, len)?;
        let mut output = String::new();

        for line in &lines {
            output.push_str(&format!("{:08X}  ", line.addr));
            for (i, &b) in line.bytes.iter().enumerate() {
                output.push_str(&format!("{:02X} ", b));
                if i == 7 {
                    output.push(' ');
                }
            }
            // 补齐空格
            let padding = 16 - line.bytes.len();
            for _ in 0..padding {
                output.push_str("   ");
            }
            if padding > 8 {
                output.push(' ');
            }
            output.push_str(&format!(" |{}\n", line.ascii));
        }

        Ok(output)
    }
}
