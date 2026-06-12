use mlua::{Lua, Table};
use std::sync::LazyLock;

use crate::modify::ValueWriter;
use crate::search::SearchType;
use super::SCRIPT_CALLBACK;

/// 全局保存列表（GG saved list 功能）
static SAVED_LIST: LazyLock<std::sync::Mutex<Vec<SavedItem>>> =
    LazyLock::new(|| std::sync::Mutex::new(Vec::new()));

/// 保存列表项
#[derive(Debug, Clone)]
struct SavedItem {
    address: usize,
    value: String,
    flags: u8,
}

/// 注册 gg 全局表到 Lua 环境
pub fn register_gg_api(lua: &Lua) -> mlua::Result<()> {
    let gg = lua.create_table()?;

    // --- 搜索相关 ---
    gg.set("searchNumber", lua.create_function(gg_search_number)?)?;
    gg.set("getResults", lua.create_function(gg_get_results)?)?;
    gg.set("getResultCount", lua.create_function(gg_get_result_count)?)?;
    gg.set("setValues", lua.create_function(gg_set_values)?)?;
    gg.set("clearResults", lua.create_function(gg_clear_results)?)?;

    // --- 区域过滤 ---
    gg.set("getRanges", lua.create_function(gg_get_ranges)?)?;
    gg.set("setRanges", lua.create_function(gg_set_ranges)?)?;
    gg.set("getMemoryRanges", lua.create_function(gg_get_memory_ranges)?)?;
    gg.set("setMemoryRanges", lua.create_function(gg_set_memory_ranges)?)?;

    // --- UI 回调 ---
    gg.set("alert", lua.create_function(gg_alert)?)?;
    gg.set("toast", lua.create_function(gg_toast)?)?;
    gg.set("choice", lua.create_function(gg_choice)?)?;
    gg.set("input", lua.create_function(gg_input)?)?;

    // --- 工具 ---
    gg.set("sleep", lua.create_function(gg_sleep)?)?;
    gg.set("setVisible", lua.create_function(gg_set_visible)?)?;
    gg.set("speedHack", lua.create_function(gg_speed_hack)?)?;
    gg.set("getProcessName", lua.create_function(gg_get_process_name)?)?;

    // --- 保存列表 ---
    gg.set("addListItems", lua.create_function(gg_add_list_items)?)?;
    gg.set("getListItems", lua.create_function(gg_get_list_items)?)?;
    gg.set("removeListItems", lua.create_function(gg_remove_list_items)?)?;
    gg.set("loadList", lua.create_function(gg_load_list)?)?;
    gg.set("saveList", lua.create_function(gg_save_list)?)?;

    // --- GG 常量：搜索类型标志 ---
    let gg_sign = lua.create_table()?;
    gg_sign.set("I8", 0)?;
    gg_sign.set("I16", 1)?;
    gg_sign.set("I32", 2)?;
    gg_sign.set("I64", 3)?;
    gg_sign.set("U8", 4)?;
    gg_sign.set("U16", 5)?;
    gg_sign.set("U32", 6)?;
    gg_sign.set("U64", 7)?;
    gg_sign.set("F32", 8)?;
    gg_sign.set("F64", 9)?;
    gg.set("SIGN", gg_sign)?;

    // --- GG 常量：区域标志 ---
    let gg_region = lua.create_table()?;
    gg_region.set("C_ALLOC", 1)?;
    gg_region.set("C_BSS", 2)?;
    gg_region.set("C_HEAP", 4)?;
    gg_region.set("C_JAVA_HEAP", 8)?;
    gg_region.set("C_SO", 16)?;
    gg_region.set("C_STACK", 32)?;
    gg_region.set("C_OTHER", 64)?;
    gg_region.set("C_BAD", 128)?;
    gg_region.set("C_APP", 256)?;
    gg_region.set("ALL", -1i64)?;
    gg.set("REGION", gg_region)?;

    // --- GG 常量：模糊搜索条件 ---
    let gg_fuzzy = lua.create_table()?;
    gg_fuzzy.set("INCREASED", 0)?;
    gg_fuzzy.set("DECREASED", 1)?;
    gg_fuzzy.set("CHANGED", 2)?;
    gg_fuzzy.set("UNCHANGED", 3)?;
    gg.set("FUZZY", gg_fuzzy)?;

    lua.globals().set("gg", gg)?;
    Ok(())
}

// ==================== 搜索 API ====================

/// gg.searchNumber(value, type)
fn gg_search_number(_lua: &Lua, (value, search_type_code): (mlua::Value, i64)) -> mlua::Result<i64> {
    let value_str = lua_value_to_string(&value);
    let type_code = search_type_code as u8;
    let search_type = SearchType::from_code(type_code)
        .ok_or_else(|| mlua::Error::external(format!("无效的搜索类型: {}", type_code)))?;

    let mem = crate::jni::bridge::get_memory_access();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return Err(mlua::Error::external("未附加到目标进程")),
    };

    let mut engine = crate::jni::bridge::get_search_engine();
    let region_filter = engine.region_filter;

    match engine.first_search(access.as_ref(), &value_str, search_type, region_filter) {
        Ok(result) => Ok(result.count() as i64),
        Err(e) => Err(mlua::Error::external(format!("搜索失败: {}", e))),
    }
}

/// gg.getResults(count) -> table of {address, value, flags}
fn gg_get_results(lua: &Lua, count: i64) -> mlua::Result<Table> {
    let engine = crate::jni::bridge::get_search_engine();
    let result = lua.create_table()?;

    if let Some(sr) = &engine.last_result {
        let n = (count as usize).min(sr.matches.len());
        for (i, item) in sr.matches.iter().take(n).enumerate() {
            let entry = lua.create_table()?;
            entry.set("address", item.addr as i64)?;
            let value_str = bytes_to_value_string(&item.value, sr.search_type);
            entry.set("value", value_str)?;
            entry.set("flags", sr.search_type as u8 as i64)?;
            result.set(i + 1, entry)?;
        }
    }

    Ok(result)
}

/// gg.getResultCount() -> number
fn gg_get_result_count(_lua: &Lua, _: ()) -> mlua::Result<i64> {
    let engine = crate::jni::bridge::get_search_engine();
    Ok(engine.result_count() as i64)
}

/// gg.setValues(tbl) - tbl 是 {{address=, value=, flags=}, ...}
fn gg_set_values(_lua: &Lua, tbl: Table) -> mlua::Result<bool> {
    let mem = crate::jni::bridge::get_memory_access();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return Err(mlua::Error::external("未附加到目标进程")),
    };

    for pair in tbl.sequence_values::<Table>() {
        let entry = pair?;
        let addr: i64 = entry.get("address")?;
        let value: mlua::Value = entry.get("value")?;
        let flags: i64 = entry.get("flags")?;

        let value_str = lua_value_to_string(&value);
        let search_type = SearchType::from_code(flags as u8)
            .unwrap_or(SearchType::I32);

        if let Ok(data) = value_str_to_bytes(&value_str, search_type) {
            let _ = ValueWriter::write_value(access.as_ref(), addr as usize, &data);
        }
    }

    Ok(true)
}

/// gg.clearResults()
fn gg_clear_results(_lua: &Lua, _: ()) -> mlua::Result<()> {
    let mut engine = crate::jni::bridge::get_search_engine();
    engine.clear();
    Ok(())
}

// ==================== 区域过滤 API ====================

/// gg.getRanges() -> number (当前区域过滤掩码)
fn gg_get_ranges(_lua: &Lua, _: ()) -> mlua::Result<i64> {
    let engine = crate::jni::bridge::get_search_engine();
    Ok(engine.region_filter as i64)
}

/// gg.setRanges(mask)
fn gg_set_ranges(_lua: &Lua, mask: i64) -> mlua::Result<()> {
    let mut engine = crate::jni::bridge::get_search_engine();
    engine.region_filter = mask as u32;
    Ok(())
}

/// gg.getMemoryRanges() -> number (同 getRanges，兼容接口)
fn gg_get_memory_ranges(_lua: &Lua, _: ()) -> mlua::Result<i64> {
    let engine = crate::jni::bridge::get_search_engine();
    Ok(engine.region_filter as i64)
}

/// gg.setMemoryRanges(mask) (同 setRanges，兼容接口)
fn gg_set_memory_ranges(_lua: &Lua, mask: i64) -> mlua::Result<()> {
    let mut engine = crate::jni::bridge::get_search_engine();
    engine.region_filter = mask as u32;
    Ok(())
}

// ==================== UI 回调 API ====================

/// gg.alert(msg) -> button index (0=ok, -1=cancelled)
fn gg_alert(_lua: &Lua, msg: mlua::Value) -> mlua::Result<i64> {
    let msg_str = lua_value_to_string(&msg);
    let cb = SCRIPT_CALLBACK.lock().unwrap();
    if let Some(_callback) = cb.as_ref() {
        // TODO: 通过 JNI 调用 Kotlin 层的 alert 对话框
        log::info!("gg.alert: {}", msg_str);
        Ok(0)
    } else {
        log::info!("[alert] {}", msg_str);
        Ok(0)
    }
}

/// gg.toast(msg)
fn gg_toast(_lua: &Lua, msg: mlua::Value) -> mlua::Result<()> {
    let msg_str = lua_value_to_string(&msg);
    let cb = SCRIPT_CALLBACK.lock().unwrap();
    if let Some(_callback) = cb.as_ref() {
        // TODO: 通过 JNI 调用 Kotlin 层的 toast
        log::info!("gg.toast: {}", msg_str);
    } else {
        log::info!("[toast] {}", msg_str);
    }
    Ok(())
}

/// gg.choice(items) -> selected index (1-based), 0 if cancelled
fn gg_choice(_lua: &Lua, items: Table) -> mlua::Result<i64> {
    let cb = SCRIPT_CALLBACK.lock().unwrap();
    let mut item_strs = Vec::new();
    for pair in items.sequence_values::<mlua::String>() {
        if let Ok(s) = pair {
            item_strs.push(s.to_string_lossy().to_string());
        }
    }
    if let Some(_callback) = cb.as_ref() {
        // TODO: 通过 JNI 调用 Kotlin 层的 choice 对话框
        log::info!("gg.choice: {:?}", item_strs);
        Ok(0)
    } else {
        log::info!("[choice] {:?}", item_strs);
        Ok(0)
    }
}

/// gg.input(prompt) -> string or nil
fn gg_input(_lua: &Lua, prompt: mlua::Value) -> mlua::Result<Option<String>> {
    let prompt_str = lua_value_to_string(&prompt);
    let cb = SCRIPT_CALLBACK.lock().unwrap();
    if let Some(_callback) = cb.as_ref() {
        // TODO: 通过 JNI 调用 Kotlin 层的 input 对话框
        log::info!("gg.input: {}", prompt_str);
        Ok(None)
    } else {
        log::info!("[input] {}", prompt_str);
        Ok(None)
    }
}

// ==================== 工具 API ====================

/// gg.sleep(ms)
fn gg_sleep(_lua: &Lua, ms: i64) -> mlua::Result<()> {
    std::thread::sleep(std::time::Duration::from_millis(ms as u64));
    Ok(())
}

/// gg.setVisible(visible)
fn gg_set_visible(_lua: &Lua, visible: bool) -> mlua::Result<()> {
    let cb = SCRIPT_CALLBACK.lock().unwrap();
    if let Some(_callback) = cb.as_ref() {
        // TODO: 通过 JNI 调用 Kotlin 层控制悬浮窗显隐
        log::info!("gg.setVisible: {}", visible);
    } else {
        log::info!("[setVisible] {}", visible);
    }
    Ok(())
}

/// gg.speedHack(speed)
fn gg_speed_hack(_lua: &Lua, speed: f64) -> mlua::Result<()> {
    let cb = SCRIPT_CALLBACK.lock().unwrap();
    if let Some(_callback) = cb.as_ref() {
        // TODO: 通过 JNI 调用 Kotlin 层设置速度倍率
        log::info!("gg.speedHack: {}", speed);
    } else {
        log::info!("[speedHack] {}", speed);
    }
    Ok(())
}

/// gg.getProcessName() -> string
fn gg_get_process_name(_lua: &Lua, _: ()) -> mlua::Result<String> {
    // TODO: 从全局状态获取目标进程名
    Ok(String::new())
}

// ==================== 保存列表 API ====================

/// gg.addListItems(tbl) - tbl 是 {{address=, value=, flags=}, ...}
fn gg_add_list_items(_lua: &Lua, tbl: Table) -> mlua::Result<bool> {
    let mut list = SAVED_LIST.lock().unwrap();
    for pair in tbl.sequence_values::<Table>() {
        let entry = pair?;
        let address: i64 = entry.get("address")?;
        let value: mlua::Value = entry.get("value")?;
        let flags: i64 = entry.get("flags")?;

        list.push(SavedItem {
            address: address as usize,
            value: lua_value_to_string(&value),
            flags: flags as u8,
        });
    }
    Ok(true)
}

/// gg.getListItems() -> table of {address, value, flags}
fn gg_get_list_items(lua: &Lua, _: ()) -> mlua::Result<Table> {
    let list = SAVED_LIST.lock().unwrap();
    let result = lua.create_table()?;
    for (i, item) in list.iter().enumerate() {
        let entry = lua.create_table()?;
        entry.set("address", item.address as i64)?;
        entry.set("value", item.value.clone())?;
        entry.set("flags", item.flags as i64)?;
        result.set(i + 1, entry)?;
    }
    Ok(result)
}

/// gg.removeListItems(tbl) - tbl 是 {{address=, ...}, ...}
fn gg_remove_list_items(_lua: &Lua, tbl: Table) -> mlua::Result<bool> {
    let mut list = SAVED_LIST.lock().unwrap();
    let mut addrs_to_remove = std::collections::HashSet::new();
    for pair in tbl.sequence_values::<Table>() {
        let entry = pair?;
        let address: i64 = entry.get("address")?;
        addrs_to_remove.insert(address as usize);
    }
    list.retain(|item| !addrs_to_remove.contains(&item.address));
    Ok(true)
}

/// gg.loadList(file) - 从文件加载保存列表
fn gg_load_list(_lua: &Lua, file: mlua::String) -> mlua::Result<bool> {
    let path = file.to_string_lossy().to_string();
    let mut list = SAVED_LIST.lock().unwrap();

    match std::fs::read_to_string(&path) {
        Ok(content) => {
            list.clear();
            for line in content.lines() {
                let parts: Vec<&str> = line.splitn(3, ',').collect();
                if parts.len() >= 3 {
                    if let Ok(addr) = usize::from_str_radix(parts[0].trim(), 16) {
                        list.push(SavedItem {
                            address: addr,
                            value: parts[1].trim().to_string(),
                            flags: parts[2].trim().parse().unwrap_or(2),
                        });
                    }
                }
            }
            Ok(true)
        }
        Err(e) => Err(mlua::Error::external(format!("加载列表失败: {}", e))),
    }
}

/// gg.saveList(file) - 保存列表到文件
fn gg_save_list(_lua: &Lua, file: mlua::String) -> mlua::Result<bool> {
    let path = file.to_string_lossy().to_string();
    let list = SAVED_LIST.lock().unwrap();

    let mut content = String::new();
    for item in list.iter() {
        content.push_str(&format!("{:x},{},{}\n", item.address, item.value, item.flags));
    }

    match std::fs::write(&path, &content) {
        Ok(()) => Ok(true),
        Err(e) => Err(mlua::Error::external(format!("保存列表失败: {}", e))),
    }
}

// ==================== 辅助函数 ====================

/// 将 Lua 值转为字符串
fn lua_value_to_string(value: &mlua::Value) -> String {
    match value {
        mlua::Value::String(s) => s.to_string_lossy().to_string(),
        mlua::Value::Integer(i) => i.to_string(),
        mlua::Value::Number(n) => {
            if *n == (*n as i64 as f64) {
                (*n as i64).to_string()
            } else {
                n.to_string()
            }
        }
        mlua::Value::Boolean(b) => b.to_string(),
        mlua::Value::Nil => String::new(),
        _ => format!("{:?}", value),
    }
}

/// 安全地从字节切片提取固定大小数组
fn extract_bytes<const N: usize>(bytes: &[u8]) -> [u8; N] {
    let mut arr = [0u8; N];
    let len = bytes.len().min(N);
    arr[..len].copy_from_slice(&bytes[..len]);
    arr
}

/// 将字节值根据搜索类型转为字符串表示
fn bytes_to_value_string(bytes: &[u8], search_type: SearchType) -> String {
    match search_type {
        SearchType::I8 => i8::from_le_bytes(extract_bytes::<1>(bytes)).to_string(),
        SearchType::I16 => i16::from_le_bytes(extract_bytes::<2>(bytes)).to_string(),
        SearchType::I32 => i32::from_le_bytes(extract_bytes::<4>(bytes)).to_string(),
        SearchType::I64 => i64::from_le_bytes(extract_bytes::<8>(bytes)).to_string(),
        SearchType::U8 => u8::from_le_bytes(extract_bytes::<1>(bytes)).to_string(),
        SearchType::U16 => u16::from_le_bytes(extract_bytes::<2>(bytes)).to_string(),
        SearchType::U32 => u32::from_le_bytes(extract_bytes::<4>(bytes)).to_string(),
        SearchType::U64 => u64::from_le_bytes(extract_bytes::<8>(bytes)).to_string(),
        SearchType::F32 => f32::from_le_bytes(extract_bytes::<4>(bytes)).to_string(),
        SearchType::F64 => f64::from_le_bytes(extract_bytes::<8>(bytes)).to_string(),
    }
}

/// 将字符串值转为字节（用于写入内存）
fn value_str_to_bytes(value: &str, search_type: SearchType) -> Result<Vec<u8>, String> {
    match search_type {
        SearchType::I8 => value.parse::<i8>().map(|v| v.to_le_bytes().to_vec()).map_err(|e| e.to_string()),
        SearchType::I16 => value.parse::<i16>().map(|v| v.to_le_bytes().to_vec()).map_err(|e| e.to_string()),
        SearchType::I32 => value.parse::<i32>().map(|v| v.to_le_bytes().to_vec()).map_err(|e| e.to_string()),
        SearchType::I64 => value.parse::<i64>().map(|v| v.to_le_bytes().to_vec()).map_err(|e| e.to_string()),
        SearchType::U8 => value.parse::<u8>().map(|v| v.to_le_bytes().to_vec()).map_err(|e| e.to_string()),
        SearchType::U16 => value.parse::<u16>().map(|v| v.to_le_bytes().to_vec()).map_err(|e| e.to_string()),
        SearchType::U32 => value.parse::<u32>().map(|v| v.to_le_bytes().to_vec()).map_err(|e| e.to_string()),
        SearchType::U64 => value.parse::<u64>().map(|v| v.to_le_bytes().to_vec()).map_err(|e| e.to_string()),
        SearchType::F32 => value.parse::<f32>().map(|v| v.to_le_bytes().to_vec()).map_err(|e| e.to_string()),
        SearchType::F64 => value.parse::<f64>().map(|v| v.to_le_bytes().to_vec()).map_err(|e| e.to_string()),
    }
}
