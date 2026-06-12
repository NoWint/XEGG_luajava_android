use mlua::Lua;

/// 注册 luajava 全局表到 Lua 环境
pub fn register_luajava(lua: &Lua) -> mlua::Result<()> {
    let luajava = lua.create_table()?;

    luajava.set("bindClass", lua.create_function(luajava_bind_class)?)?;
    luajava.set("new", lua.create_function(luajava_new)?)?;
    luajava.set("createProxy", lua.create_function(luajava_create_proxy)?)?;
    luajava.set("startThread", lua.create_function(luajava_start_thread)?)?;
    luajava.set("loadLayout", lua.create_function(luajava_load_layout)?)?;
    luajava.set("findViewById", lua.create_function(luajava_find_view_by_id)?)?;
    luajava.set("startActivity", lua.create_function(luajava_start_activity)?)?;
    luajava.set("getContext", lua.create_function(luajava_get_context)?)?;

    lua.globals().set("luajava", luajava)?;
    Ok(())
}

/// luajava.bindClass(className) -> 类引用表
fn luajava_bind_class(lua: &Lua, class_name: mlua::String) -> mlua::Result<mlua::Table> {
    let name = class_name.to_string_lossy().to_string();

    // 尝试通过 JNI 调用 Kotlin
    let result = crate::jni::bridge::jni_bind_class(&name);

    let table = lua.create_table()?;
    table.set("__class", name.clone())?;

    match result {
        Some(class_info) if !class_info.starts_with("ERROR") => {
            table.set("__valid", true)?;
            table.set("__info", class_info)?;
        }
        _ => {
            table.set("__valid", false)?;
            log::warn!("luajava.bindClass('{}') - 类未找到", name);
        }
    }

    // 为类表添加 new 方法
    let name_clone = name.clone();
    table.set("new", lua.create_function(move |lua, args: mlua::MultiValue| {
        luajava_new_instance(lua, &name_clone, args)
    })?)?;

    Ok(table)
}

/// 创建 Java 对象实例
fn luajava_new_instance(_lua: &Lua, class_name: &str, _args: mlua::MultiValue) -> mlua::Result<mlua::Value> {
    log::info!("luajava.new('{}') - 通过 JNI 创建实例", class_name);
    // 实际创建需要 JNI 调用构造函数，当前返回占位
    Ok(mlua::Value::Nil)
}

/// luajava.new(className, ...) -> 创建 Java 对象
fn luajava_new(lua: &Lua, args: mlua::MultiValue) -> mlua::Result<mlua::Value> {
    let mut args_iter = args.into_iter();
    let class_name: mlua::String = match args_iter.next() {
        Some(mlua::Value::String(s)) => s,
        _ => return Err(mlua::Error::external("luajava.new: 第一个参数必须是类名")),
    };
    let name = class_name.to_string_lossy().to_string();
    luajava_new_instance(lua, &name, args_iter.collect())
}

/// luajava.createProxy(interfaceName, table) -> 创建 Java 代理
fn luajava_create_proxy(lua: &Lua, (iface, tbl): (mlua::String, mlua::Table)) -> mlua::Result<mlua::Table> {
    let iface_name = iface.to_string_lossy().to_string();
    log::info!("luajava.createProxy('{}') - 创建代理", iface_name);

    // 返回一个代理表，记录接口名和回调
    let proxy = lua.create_table()?;
    proxy.set("__proxy", true)?;
    proxy.set("__interface", iface_name)?;
    proxy.set("__callbacks", tbl)?;
    Ok(proxy)
}

/// luajava.startThread(func) -> 在新线程中执行
fn luajava_start_thread(_lua: &Lua, _func: mlua::Function) -> mlua::Result<bool> {
    log::warn!("luajava.startThread() - 需要在 Kotlin 层实现线程管理");
    // Lua 函数不能跨线程，需要通过 JNI 让 Kotlin 创建线程
    Ok(false)
}

/// luajava.loadLayout(layoutTable) -> 加载 Android 布局
fn luajava_load_layout(lua: &Lua, tbl: mlua::Table) -> mlua::Result<i32> {
    // 将 Lua 表转换为 JSON 字符串
    let json = table_to_json(lua, &tbl)?;
    log::info!("luajava.loadLayout() - JSON: {}", json);

    // 通过 JNI 调用 Kotlin 创建布局
    let view_id = crate::jni::bridge::jni_load_layout(&json);

    if view_id > 0 {
        // 存储视图 ID 到 Lua 环境
        let views: mlua::Table = match lua.globals().get("__xegg_views") {
            Ok(t) => t,
            Err(_) => lua.create_table()?,
        };
        views.set(view_id, true)?;
        lua.globals().set("__xegg_views", views)?;
    }

    Ok(view_id)
}

/// luajava.findViewById(id) -> 查找视图
fn luajava_find_view_by_id(lua: &Lua, id: i64) -> mlua::Result<mlua::Table> {
    let found = crate::jni::bridge::jni_find_view_by_id(id as i32);

    let view = lua.create_table()?;
    view.set("__view_id", id)?;
    view.set("__valid", found)?;

    // 添加属性设置方法
    let id_i32 = id as i32;
    view.set("setText", lua.create_function(move |_lua, text: mlua::String| {
        Ok(crate::jni::bridge::jni_set_view_property(id_i32, "text", &text.to_string_lossy()))
    })?)?;

    view.set("setVisibility", lua.create_function(move |_lua, vis: mlua::String| {
        Ok(crate::jni::bridge::jni_set_view_property(id_i32, "visibility", &vis.to_string_lossy()))
    })?)?;

    view.set("setBackgroundColor", lua.create_function(move |_lua, color: mlua::String| {
        Ok(crate::jni::bridge::jni_set_view_property(id_i32, "backgroundColor", &color.to_string_lossy()))
    })?)?;

    Ok(view)
}

/// luajava.startActivity(className) -> 启动 Activity
fn luajava_start_activity(_lua: &Lua, _class_name: mlua::String) -> mlua::Result<bool> {
    log::warn!("luajava.startActivity() - 需要在 Kotlin 层实现");
    Ok(false)
}

/// luajava.getContext() -> 获取 Context
fn luajava_get_context(lua: &Lua, _: ()) -> mlua::Result<mlua::Table> {
    let ctx = lua.create_table()?;
    ctx.set("__context", true)?;
    Ok(ctx)
}

/// 将 Lua 表转换为 JSON 字符串
fn table_to_json(lua: &Lua, tbl: &mlua::Table) -> mlua::Result<String> {
    let mut json = String::from("{");
    let mut first = true;

    for pair in tbl.pairs::<mlua::String, mlua::Value>() {
        let (key, value) = pair?;
        if !first { json.push(','); }
        first = false;

        let k = key.to_string_lossy().to_string();
        json.push_str(&format!("\"{}\":{}", k, value_to_json(lua, &value)?));
    }

    json.push('}');
    Ok(json)
}

/// 将 Lua 值转换为 JSON
fn value_to_json(_lua: &Lua, value: &mlua::Value) -> mlua::Result<String> {
    Ok(match value {
        mlua::Value::Nil => "null".to_string(),
        mlua::Value::Boolean(b) => b.to_string(),
        mlua::Value::Integer(i) => i.to_string(),
        mlua::Value::Number(n) => n.to_string(),
        mlua::Value::String(s) => format!("\"{}\"", s.to_string_lossy().replace('"', "\\\"")),
        mlua::Value::Table(_) => "\"[table]\"".to_string(), // 简化：嵌套表暂不递归
        _ => "null".to_string(),
    })
}
