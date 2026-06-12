use crate::memory::PtraceAccess;
use crate::memory::MemoryAccess;
use jni::objects::{JClass, JPrimitiveArray};
use jni::sys::{jboolean, jint, jlong, jbyteArray};
use jni::JNIEnv;
use std::sync::Mutex;

/// 全局内存访问实例
static MEMORY_ACCESS: Mutex<Option<PtraceAccess>> = Mutex::new(None);

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
            *mem = Some(access);
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
