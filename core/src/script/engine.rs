use mlua::Lua;
use thiserror::Error;

/// 脚本引擎错误类型
#[derive(Error, Debug)]
pub enum ScriptError {
    #[error("Lua 执行错误: {0}")]
    Lua(#[from] mlua::Error),

    #[error("IO 错误: {0}")]
    Io(#[from] std::io::Error),

    #[error("脚本未加载")]
    NotLoaded,

    #[error("未附加到目标进程")]
    NotAttached,
}

/// Lua 脚本引擎
///
/// 封装 mlua::Lua 实例，提供 GG/RLGG 兼容的脚本执行环境。
/// 通过 `gg` 全局表暴露内存搜索/修改 API，
/// 通过 `luajava` 全局表暴露 Java 桥接桩。
pub struct ScriptEngine {
    lua: Lua,
}

impl ScriptEngine {
    /// 创建新的脚本引擎实例
    ///
    /// 初始化 Lua 5.3 环境，注册 gg 和 luajava 全局表。
    pub fn new() -> Result<Self, ScriptError> {
        let lua = Lua::new();

        // 注册 GG API 全局表
        super::api::register_gg_api(&lua)?;

        // 注册 luajava 桥接桩全局表
        super::luajava::register_luajava(&lua)?;

        Ok(Self { lua })
    }

    /// 执行 Lua 字符串
    pub fn exec_string(&self, code: &str) -> Result<(), ScriptError> {
        self.lua.load(code).exec()?;
        Ok(())
    }

    /// 执行 Lua 文件
    pub fn exec_file(&self, path: &str) -> Result<(), ScriptError> {
        let code = std::fs::read_to_string(path)?;
        self.lua.load(&code).set_name(path).exec()?;
        Ok(())
    }

    /// 获取底层 Lua 实例的引用（用于高级用途）
    pub fn lua(&self) -> &Lua {
        &self.lua
    }
}

impl Default for ScriptEngine {
    fn default() -> Self {
        Self::new().expect("ScriptEngine 初始化失败")
    }
}
