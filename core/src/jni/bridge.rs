use crate::memory::{AccessMode, FdAccess, MemoryAccess, PtraceAccess, VirtualSpaceAccess};
use crate::script::engine::ScriptEngine;
use crate::search::{FuzzyCondition, SearchEngine, SearchType};
use jni::objects::{JClass, JPrimitiveArray, JString};
use jni::sys::{jboolean, jint, jlong, jbyteArray, jdouble, jstring};
use jni::JNIEnv;
use std::sync::{LazyLock, Mutex};

/// 全局内存访问实例（支持 Root / VirtualSpace / Shizuku 模式）
static MEMORY_ACCESS: Mutex<Option<Box<dyn MemoryAccess>>> = Mutex::new(None);

/// 全局搜索引擎实例
static SEARCH_ENGINE: LazyLock<Mutex<SearchEngine>> = LazyLock::new(|| Mutex::new(SearchEngine::new()));

// --- 内存操作 ---

#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeAttach(
    _env: JNIEnv,
    _class: JClass,
    pid: jint,
) -> jboolean {
    let mut access = PtraceAccess::new();
    match access.attach(pid) {
        Ok(()) => {
            let mut mem = MEMORY_ACCESS.lock().unwrap();
            *mem = Some(Box::new(access));
            1
        }
        Err(e) => {
            log::error!("attach failed: {}", e);
            0
        }
    }
}

#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeDetach(
    _env: JNIEnv,
    _class: JClass,
) {
    let mut mem = MEMORY_ACCESS.lock().unwrap();
    if let Some(mut access) = mem.take() {
        let _ = access.detach();
    }
    // 同时清空搜索结果
    SEARCH_ENGINE.lock().unwrap().clear();
}

// --- Shizuku 框架模式操作 ---

/// 通过 Shizuku 打开的文件描述符附加到目标进程
/// fd 是 Kotlin 层通过 Shizuku 以 shell 权限打开的 /proc/pid/mem 的 fd
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeAttachWithFd(
    _env: JNIEnv,
    _class: JClass,
    pid: jint,
    fd: jint,
) -> jboolean {
    let mut access = FdAccess::new();
    match access.attach_with_fd(pid, fd) {
        Ok(()) => {
            let mut mem = MEMORY_ACCESS.lock().unwrap();
            *mem = Some(Box::new(access));
            1
        }
        Err(e) => {
            log::error!("FdAccess attach failed: {}", e);
            0
        }
    }
}

/// 获取当前访问模式
/// 返回: 0=未附加, 1=Root(ptrace), 2=VirtualSpace, 3=Shizuku
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeGetAccessMode(
    _env: JNIEnv,
    _class: JClass,
) -> jint {
    let mem = MEMORY_ACCESS.lock().unwrap();
    if let Some(access) = mem.as_ref() {
        return match access.mode() {
            AccessMode::Root => 1,
            AccessMode::VirtualSpace => 2,
            AccessMode::Shizuku => 3,
        };
    }
    0 // 未附加
}

#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeReadMemory(
    env: JNIEnv,
    _class: JClass,
    addr: jlong,
    size: jint,
) -> jbyteArray {
    let mem = MEMORY_ACCESS.lock().unwrap();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return std::ptr::null_mut(),
    };

    let mut buf = vec![0u8; size as usize];
    match access.read(addr as usize, &mut buf) {
        Ok(()) => {
            match env.new_byte_array(size) {
                Ok(arr) => {
                    let signed_buf: Vec<i8> = buf.iter().map(|&b| b as i8).collect();
                    let _ = env.set_byte_array_region(&arr, 0, &signed_buf);
                    arr.into_raw()
                }
                Err(_) => std::ptr::null_mut(),
            }
        }
        Err(_) => std::ptr::null_mut(),
    }
}

#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeWriteMemory(
    env: JNIEnv,
    _class: JClass,
    addr: jlong,
    data: jbyteArray,
) -> jboolean {
    let mem = MEMORY_ACCESS.lock().unwrap();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return 0,
    };

    let data_arr: JPrimitiveArray<i8> = unsafe { JPrimitiveArray::from_raw(data) };
    let len = env.get_array_length(&data_arr).unwrap_or(0);
    let mut buf = vec![0i8; len as usize];
    let _ = env.get_byte_array_region(&data_arr, 0, &mut buf);

    let unsigned_buf: Vec<u8> = buf.iter().map(|&b| b as u8).collect();
    match access.write(addr as usize, &unsigned_buf) {
        Ok(()) => 1,
        Err(_) => 0,
    }
}

#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeGetRegionCount(
    _env: JNIEnv,
    _class: JClass,
) -> jint {
    let mem = MEMORY_ACCESS.lock().unwrap();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return -1,
    };

    match access.regions() {
        Ok(regions) => regions.len() as jint,
        Err(_) => -1,
    }
}

#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeIsAttached(
    _env: JNIEnv,
    _class: JClass,
) -> jboolean {
    let mem = MEMORY_ACCESS.lock().unwrap();
    if let Some(access) = mem.as_ref() {
        if access.is_attached() { 1 } else { 0 }
    } else {
        0
    }
}

// --- 搜索操作 ---

/// 第一次精确搜索
/// 返回匹配数量，-1 表示错误
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeSearchNumber(
    mut env: JNIEnv,
    _class: JClass,
    value: JString,
    type_code: jint,
    region_filter: jint,
) -> jint {
    let value_str = match env.get_string(&value) {
        Ok(s) => s.to_string_lossy().into_owned(),
        Err(_) => return -1,
    };

    let search_type = match SearchType::from_code(type_code as u8) {
        Some(t) => t,
        None => return -1,
    };

    let mem = MEMORY_ACCESS.lock().unwrap();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return -1,
    };

    let mut engine = SEARCH_ENGINE.lock().unwrap();
    match engine.first_search(access.as_ref(), &value_str, search_type, region_filter as u32) {
        Ok(result) => result.count() as jint,
        Err(_) => -1,
    }
}

/// 后续精确搜索（在已有结果中筛选）
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeRefineSearch(
    mut env: JNIEnv,
    _class: JClass,
    value: JString,
) -> jint {
    let value_str = match env.get_string(&value) {
        Ok(s) => s.to_string_lossy().into_owned(),
        Err(_) => return -1,
    };

    let mem = MEMORY_ACCESS.lock().unwrap();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return -1,
    };

    let mut engine = SEARCH_ENGINE.lock().unwrap();
    match engine.refine_search(access.as_ref(), &value_str) {
        Ok(result) => result.count() as jint,
        Err(_) => -1,
    }
}

/// 模糊搜索
/// condition: 0=变大, 1=变小, 2=变化了, 3=不变
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeFuzzySearch(
    _env: JNIEnv,
    _class: JClass,
    condition: jint,
) -> jint {
    let cond = match condition {
        0 => FuzzyCondition::Increased,
        1 => FuzzyCondition::Decreased,
        2 => FuzzyCondition::Changed,
        3 => FuzzyCondition::Unchanged,
        _ => return -1,
    };

    let mem = MEMORY_ACCESS.lock().unwrap();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return -1,
    };

    let mut engine = SEARCH_ENGINE.lock().unwrap();
    match engine.fuzzy_search(access.as_ref(), cond) {
        Ok(result) => result.count() as jint,
        Err(_) => -1,
    }
}

/// 获取搜索结果数量
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeGetResultCount(
    _env: JNIEnv,
    _class: JClass,
) -> jint {
    let engine = SEARCH_ENGINE.lock().unwrap();
    engine.result_count() as jint
}

/// 获取搜索结果中指定索引的地址
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeGetResultAddress(
    _env: JNIEnv,
    _class: JClass,
    index: jint,
) -> jlong {
    let engine = SEARCH_ENGINE.lock().unwrap();
    if let Some(result) = &engine.last_result {
        if index >= 0 && (index as usize) < result.matches.len() {
            return result.matches[index as usize].addr as jlong;
        }
    }
    -1
}

/// 获取搜索结果中指定索引的值（字节数组）
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeGetResultValue(
    env: JNIEnv,
    _class: JClass,
    index: jint,
) -> jbyteArray {
    let engine = SEARCH_ENGINE.lock().unwrap();
    let result = match &engine.last_result {
        Some(r) => r,
        None => return std::ptr::null_mut(),
    };

    if index < 0 || (index as usize) >= result.matches.len() {
        return std::ptr::null_mut();
    }

    let value = &result.matches[index as usize].value;
    let len = value.len() as jint;
    match env.new_byte_array(len) {
        Ok(arr) => {
            let signed_buf: Vec<i8> = value.iter().map(|&b| b as i8).collect();
            let _ = env.set_byte_array_region(&arr, 0, &signed_buf);
            arr.into_raw()
        }
        Err(_) => std::ptr::null_mut(),
    }
}

/// 清空搜索结果
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeClearResults(
    _env: JNIEnv,
    _class: JClass,
) {
    SEARCH_ENGINE.lock().unwrap().clear();
}

/// 修改指定地址的值
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeSetValue(
    env: JNIEnv,
    _class: JClass,
    addr: jlong,
    data: jbyteArray,
) -> jboolean {
    let mem = MEMORY_ACCESS.lock().unwrap();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return 0,
    };

    let data_arr: JPrimitiveArray<i8> = unsafe { JPrimitiveArray::from_raw(data) };
    let len = env.get_array_length(&data_arr).unwrap_or(0);
    let mut buf = vec![0i8; len as usize];
    let _ = env.get_byte_array_region(&data_arr, 0, &mut buf);

    let unsigned_buf: Vec<u8> = buf.iter().map(|&b| b as u8).collect();
    match crate::modify::ValueWriter::write_value(access.as_ref(), addr as usize, &unsigned_buf) {
        Ok(()) => 1,
        Err(_) => 0,
    }
}

// --- 脚本操作 ---

static SCRIPT_ENGINE: LazyLock<Mutex<Option<ScriptEngine>>> = LazyLock::new(|| Mutex::new(None));

/// 执行 Lua 脚本字符串
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeExecScript(
    mut env: JNIEnv,
    _class: JClass,
    code: JString,
) -> jboolean {
    let code_str = match env.get_string(&code) {
        Ok(s) => s.to_string_lossy().into_owned(),
        Err(_) => return 0,
    };

    let mut engine_lock = SCRIPT_ENGINE.lock().unwrap();
    if engine_lock.is_none() {
        match ScriptEngine::new() {
            Ok(e) => *engine_lock = Some(e),
            Err(e) => {
                log::error!("ScriptEngine 初始化失败: {}", e);
                return 0;
            }
        }
    }

    set_jni_env(&mut env);

    let result = if let Some(engine) = engine_lock.as_ref() {
        match engine.exec_string(&code_str) as Result<(), _> {
            Ok(()) => 1,
            Err(e) => {
                log::error!("脚本执行错误: {}", e);
                0
            }
        }
    } else {
        0
    };

    clear_jni_env();
    result
}

/// 执行 Lua 脚本文件
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeExecFile(
    mut env: JNIEnv,
    _class: JClass,
    path: JString,
) -> jboolean {
    let path_str = match env.get_string(&path) {
        Ok(s) => s.to_string_lossy().into_owned(),
        Err(_) => return 0,
    };

    let mut engine_lock = SCRIPT_ENGINE.lock().unwrap();
    if engine_lock.is_none() {
        match ScriptEngine::new() {
            Ok(e) => *engine_lock = Some(e),
            Err(e) => {
                log::error!("ScriptEngine 初始化失败: {}", e);
                return 0;
            }
        }
    }

    set_jni_env(&mut env);

    let result = if let Some(engine) = engine_lock.as_ref() {
        match engine.exec_file(&path_str) as Result<(), _> {
            Ok(()) => 1,
            Err(e) => {
                log::error!("脚本文件执行错误: {}", e);
                0
            }
        }
    } else {
        0
    };

    clear_jni_env();
    result
}

/// 停止脚本引擎
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeStopScript(
    _env: JNIEnv,
    _class: JClass,
) {
    let mut engine_lock = SCRIPT_ENGINE.lock().unwrap();
    *engine_lock = None;
}

// --- 变速齿轮操作 ---

use crate::speed::SpeedHack;
static SPEED_HACK: LazyLock<Mutex<SpeedHack>> = LazyLock::new(|| Mutex::new(SpeedHack::new()));

#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeSetSpeed(
    _env: JNIEnv,
    _class: JClass,
    speed: jdouble,
) -> jboolean {
    let mut hack = SPEED_HACK.lock().unwrap();
    hack.set_speed(speed);
    log::info!("SpeedHack: 设置速度 = {}", speed);
    1
}

#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeInjectSpeedHack(
    _env: JNIEnv,
    _class: JClass,
) -> jboolean {
    let mem = MEMORY_ACCESS.lock().unwrap();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return 0,
    };
    let mut hack = SPEED_HACK.lock().unwrap();
    match hack.inject(access.as_ref()) {
        Ok(()) => 1,
        Err(_) => 0,
    }
}

#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeRemoveSpeedHack(
    _env: JNIEnv,
    _class: JClass,
) {
    let mut hack = SPEED_HACK.lock().unwrap();
    hack.remove();
}

// --- 指针追踪操作 ---

use crate::pointer::PointerTracker;
static POINTER_TRACKER: LazyLock<Mutex<PointerTracker>> = LazyLock::new(|| Mutex::new(PointerTracker::new()));

/// 解析指针链
/// 返回最终地址，-1 表示错误
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeResolvePointer(
    _env: JNIEnv,
    _class: JClass,
    base_addr: jlong,
    _offsets: jbyteArray,
) -> jlong {
    let mem = MEMORY_ACCESS.lock().unwrap();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return -1,
    };

    // 简化：不解析 offsets 字节数组，直接从 base_addr 读取指针
    let mut ptr_bytes = [0u8; 8];
    match access.read(base_addr as usize, &mut ptr_bytes) {
        Ok(()) => {
            let ptr_value = usize::from_le_bytes(ptr_bytes);
            ptr_value as jlong
        }
        Err(_) => -1,
    }
}

// --- 内存 Dump 操作 ---

/// 获取内存十六进制视图
/// 返回十六进制字符串
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeHexDump(
    env: JNIEnv,
    _class: JClass,
    addr: jlong,
    len: jint,
) -> jstring {
    let mem = MEMORY_ACCESS.lock().unwrap();
    let access = match mem.as_ref() {
        Some(a) => a,
        None => return std::ptr::null_mut(),
    };

    match crate::dump::MemoryDumper::hex_view_string(access.as_ref(), addr as usize, len as usize) {
        Ok(hex_str) => match env.new_string(hex_str) {
            Ok(s) => s.into_raw(),
            Err(_) => std::ptr::null_mut(),
        },
        Err(_) => std::ptr::null_mut(),
    }
}

/// 虚拟空间模式附加
/// 目标进程由 XEGG 启动，可直接通过 /proc/pid/mem 读写
#[no_mangle]
pub extern "system" fn Java_com_xegg_bridge_XeggBridge_nativeLaunchInVirtualSpace(
    _env: JNIEnv,
    _class: JClass,
    pid: jint,
) -> jboolean {
    let mut access = VirtualSpaceAccess::new();
    match access.attach(pid) {
        Ok(()) => {
            let mut mem = MEMORY_ACCESS.lock().unwrap();
            *mem = Some(Box::new(access));
            1
        }
        Err(e) => {
            log::error!("VirtualSpace attach failed: {}", e);
            0
        }
    }
}

// --- luajava 桥接操作 ---

use std::cell::RefCell;

thread_local! {
    static JNI_ENV: RefCell<Option<*mut jni::sys::JNIEnv>> = RefCell::new(None);
}

/// 设置当前线程的 JNI 环境（由脚本执行函数调用）
fn set_jni_env(env: &mut JNIEnv) {
    JNI_ENV.with(|e| {
        *e.borrow_mut() = Some(env.get_raw());
    });
}

/// 清除当前线程的 JNI 环境
fn clear_jni_env() {
    JNI_ENV.with(|e| {
        *e.borrow_mut() = None;
    });
}

/// luajava.bindClass JNI 回调
pub fn jni_bind_class(class_name: &str) -> Option<String> {
    JNI_ENV.with(|e| {
        let raw_env = (*e.borrow())?;
        let mut env = unsafe { JNIEnv::from_raw(raw_env) }.ok()?;

        let j_class_name = env.new_string(class_name).ok()?;
        let class = env.find_class("com/xegg/bridge/LuaJavaBridge").ok()?;
        let result = env.call_static_method(
            &class,
            "bindClass",
            "(Ljava/lang/String;)Ljava/lang/String;",
            &[(&j_class_name).into()],
        ).ok()?;

        let jstr = result.l().ok()?;
        let jstr_ref = JString::from(jstr);
        let rs = env.get_string(&jstr_ref).ok()?;
        Some(rs.to_string_lossy().into_owned())
    })
}

/// luajava.loadLayout JNI 回调
pub fn jni_load_layout(layout_json: &str) -> i32 {
    JNI_ENV.with(|e| {
        let raw_env = (*e.borrow())?;
        let mut env = unsafe { JNIEnv::from_raw(raw_env) }.ok()?;

        let j_json = env.new_string(layout_json).ok()?;
        let class = env.find_class("com/xegg/bridge/LuaJavaBridge").ok()?;
        let result = env.call_static_method(
            &class,
            "loadLayout",
            "(Ljava/lang/String;)I",
            &[(&j_json).into()],
        ).ok()?;

        result.i().ok()
    }).unwrap_or(-1)
}

/// luajava.findViewById JNI 回调
pub fn jni_find_view_by_id(view_id: i32) -> bool {
    JNI_ENV.with(|e| {
        let raw_env = (*e.borrow())?;
        let mut env = unsafe { JNIEnv::from_raw(raw_env) }.ok()?;

        let class = env.find_class("com/xegg/bridge/LuaJavaBridge").ok()?;
        let result = env.call_static_method(
            &class,
            "findViewById",
            "(I)Ljava/lang/Object;",
            &[view_id.into()],
        ).ok()?;

        Some(result.l().is_ok())
    }).unwrap_or(false)
}

/// luajava.setViewProperty JNI 回调
pub fn jni_set_view_property(view_id: i32, prop: &str, value: &str) -> bool {
    JNI_ENV.with(|e| {
        let raw_env = (*e.borrow())?;
        let mut env = unsafe { JNIEnv::from_raw(raw_env) }.ok()?;

        let j_prop = env.new_string(prop).ok()?;
        let j_value = env.new_string(value).ok()?;

        let class = env.find_class("com/xegg/bridge/LuaJavaBridge").ok()?;
        let result = env.call_static_method(
            &class,
            "setViewProperty",
            "(ILjava/lang/String;Ljava/lang/String;)Z",
            &[view_id.into(), (&j_prop).into(), (&j_value).into()],
        ).ok()?;

        Some(result.z().unwrap_or(false))
    }).unwrap_or(false)
}

// --- 脚本引擎访问全局状态的辅助函数 ---

/// 获取内存访问实例的 MutexGuard
/// 注意：调用者应尽快释放锁以避免死锁
pub fn get_memory_access() -> std::sync::MutexGuard<'static, Option<Box<dyn MemoryAccess>>> {
    MEMORY_ACCESS.lock().unwrap()
}

/// 获取搜索引擎实例的 MutexGuard
/// 注意：调用者应尽快释放锁以避免死锁
pub fn get_search_engine() -> std::sync::MutexGuard<'static, SearchEngine> {
    SEARCH_ENGINE.lock().unwrap()
}
