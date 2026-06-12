pub mod engine;
pub mod api;
pub mod luajava;

use std::sync::Mutex;

/// JNI 回调信息，用于 Lua 脚本调用 UI 操作时回调到 Kotlin 层
pub struct ScriptCallback {
    pub jvm_ptr: usize,
    pub callback_obj: usize,
}

/// 全局脚本回调引用
pub static SCRIPT_CALLBACK: Mutex<Option<ScriptCallback>> = Mutex::new(None);

/// 设置脚本回调
pub fn set_script_callback(callback: ScriptCallback) {
    let mut cb = SCRIPT_CALLBACK.lock().unwrap();
    *cb = Some(callback);
}

/// 清除脚本回调
pub fn clear_script_callback() {
    let mut cb = SCRIPT_CALLBACK.lock().unwrap();
    *cb = None;
}
