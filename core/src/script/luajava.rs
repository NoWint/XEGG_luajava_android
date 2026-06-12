use mlua::Lua;

/// 注册 luajava 全局表到 Lua 环境
/// 这是 GG/RLGG 脚本中常用的 luajava 桥接桩
/// 实际功能将在后续通过 JNI 连接到 Kotlin 层
pub fn register_luajava(lua: &Lua) -> mlua::Result<()> {
    let luajava = lua.create_table()?;

    // luajava.bindClass(className) -> 返回 Java 类引用的占位表
    luajava.set("bindClass", lua.create_function(luajava_bind_class)?)?;

    // luajava.new(className, ...) -> 创建 Java 对象实例的占位
    luajava.set("new", lua.create_function(luajava_new)?)?;

    // luajava.createProxy(interfaceName, table) -> 创建 Java 代理
    luajava.set("createProxy", lua.create_function(luajava_create_proxy)?)?;

    // luajava.startThread(func) -> 在新线程中执行 Lua 函数
    luajava.set("startThread", lua.create_function(luajava_start_thread)?)?;

    // luajava.loadLayout(layoutTable) -> 加载 Android 布局
    luajava.set("loadLayout", lua.create_function(luajava_load_layout)?)?;

    // luajava.findViewById(id) -> 查找视图
    luajava.set("findViewById", lua.create_function(luajava_find_view_by_id)?)?;

    // luajava.startActivity(className) -> 启动 Activity
    luajava.set("startActivity", lua.create_function(luajava_start_activity)?)?;

    // luajava.getContext() -> 获取 Android Context
    luajava.set("getContext", lua.create_function(luajava_get_context)?)?;

    lua.globals().set("luajava", luajava)?;
    Ok(())
}

/// luajava.bindClass(className) -> 占位表
fn luajava_bind_class(lua: &Lua, class_name: mlua::String) -> mlua::Result<mlua::Table> {
    let name = class_name.to_string_lossy().to_string();
    log::warn!("luajava.bindClass('{}') - 桩实现，尚未连接 JNI", name);

    // 返回一个占位表，包含空方法以避免脚本直接崩溃
    let placeholder = lua.create_table()?;
    placeholder.set("__class", name)?;
    placeholder.set("new", lua.create_function(|_lua, _args: mlua::MultiValue| -> mlua::Result<()> {
        Err(mlua::Error::external("luajava: 桩实现，尚未连接 JNI"))
    })?)?;
    Ok(placeholder)
}

/// luajava.new(className, ...) -> 占位
fn luajava_new(_lua: &Lua, _args: mlua::MultiValue) -> mlua::Result<mlua::Value> {
    log::warn!("luajava.new() - 桩实现，尚未连接 JNI");
    Ok(mlua::Value::Nil)
}

/// luajava.createProxy(interfaceName, table) -> 占位
fn luajava_create_proxy(_lua: &Lua, (_iface, _tbl): (mlua::String, mlua::Table)) -> mlua::Result<mlua::Value> {
    log::warn!("luajava.createProxy() - 桩实现，尚未连接 JNI");
    Ok(mlua::Value::Nil)
}

/// luajava.startThread(func) -> 在新线程中执行
fn luajava_start_thread(_lua: &Lua, func: mlua::Function) -> mlua::Result<bool> {
    log::warn!("luajava.startThread() - 桩实现，尚未连接 JNI");
    // 注意：这里不能直接在线程中使用 mlua::Function，因为 Lua 状态不是线程安全的
    // 实际实现需要通过 JNI 回调到 Kotlin 层创建线程
    let _ = func;
    Ok(false)
}

/// luajava.loadLayout(layoutTable) -> 占位
fn luajava_load_layout(_lua: &Lua, _tbl: mlua::Table) -> mlua::Result<mlua::Value> {
    log::warn!("luajava.loadLayout() - 桩实现，尚未连接 JNI");
    Ok(mlua::Value::Nil)
}

/// luajava.findViewById(id) -> 占位
fn luajava_find_view_by_id(_lua: &Lua, _id: i64) -> mlua::Result<mlua::Value> {
    log::warn!("luajava.findViewById() - 桩实现，尚未连接 JNI");
    Ok(mlua::Value::Nil)
}

/// luajava.startActivity(className) -> 占位
fn luajava_start_activity(_lua: &Lua, _class_name: mlua::String) -> mlua::Result<bool> {
    log::warn!("luajava.startActivity() - 桩实现，尚未连接 JNI");
    Ok(false)
}

/// luajava.getContext() -> 占位
fn luajava_get_context(_lua: &Lua, _: ()) -> mlua::Result<mlua::Value> {
    log::warn!("luajava.getContext() - 桩实现，尚未连接 JNI");
    Ok(mlua::Value::Nil)
}
