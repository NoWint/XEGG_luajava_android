# XEGG - Game Guardian Rust 重写设计文档

**日期**: 2026-06-12
**状态**: 设计确认

## 概述

XEGG 是 Game Guardian (GG) 和 RLGG 的 Rust 重写版本，目标是完整对标 GG/RLGG 的所有功能，包括内存搜索/修改、Lua 脚本引擎、变速齿轮、指针追踪、内存 Dump 等。使用 Rust 编写核心逻辑以确保性能和安全性，Android 原生 Kotlin UI 通过 JNI 桥接。

## 需求

- **功能范围**: 完整对标 GG + RLGG，所有 GG/RLGG Lua 脚本零修改运行
- **UI 方案**: Rust 核心 + Android 原生 UI (Kotlin/Jetpack Compose)，通过 JNI 桥接
- **内存访问**: 双模式 — Root (ptrace) + 免 Root (VirtualSpace 沙箱)
- **脚本引擎**: Lua 5.3 (mlua)，GG/RLGG API 完全兼容
- **目标平台**: Android 7.0+ (API 24+)

## 架构

采用**分层单体架构**，单 crate 模块化组织，开发快、模块间零开销调用、后期可拆分。

```
┌─────────────────────────────────┐
│  Android UI (Kotlin/Compose)    │  ← 原生 Android 界面 + 悬浮窗
├─────────────────────────────────┤
│  JNI Bridge (Rust jni-rs)       │  ← JNI 导出函数 + 回调
├─────────────────────────────────┤
│  XEGG Core (Rust single crate)  │  ← 模块化组织
│  ┌──────────┬──────────┬──────┐ │
│  │ Memory   │ Search   │ Lua  │ │
│  │ Engine   │ Engine   │ VM   │ │
│  ├──────────┼──────────┼──────┤ │
│  │ Speed    │ Pointer  │ Dump │ │
│  │ Hack     │ Tracker  │ Tool │ │
│  └──────────┴──────────┴──────┘ │
│  ┌─────────────────────────────┐│
│  │ Memory Access Layer         ││
│  │ (ptrace | virtualspace)     ││
│  └─────────────────────────────┘│
└─────────────────────────────────┘
```

## 项目结构

```
XEGG/
├── app/                          # Android 应用模块 (Kotlin)
│   ├── src/main/
│   │   ├── java/
│   │   │   ├── ui/
│   │   │   │   ├── search/       # 搜索界面
│   │   │   │   ├── results/      # 结果列表界面
│   │   │   │   ├── script/       # Lua 脚本 UI
│   │   │   │   │   ├── ScriptListScreen.kt
│   │   │   │   │   ├── ScriptEditorScreen.kt
│   │   │   │   │   ├── ScriptRunnerScreen.kt
│   │   │   │   │   └── ScriptSettingsScreen.kt
│   │   │   │   ├── memory/       # 内存浏览器 (Hex View)
│   │   │   │   ├── settings/     # 设置页
│   │   │   │   └── main/         # 主界面 + 应用选择
│   │   │   ├── service/          # 悬浮窗 Service
│   │   │   │   └── OverlayService.kt
│   │   │   ├── bridge/           # JNI 调用封装
│   │   │   │   ├── XeggBridge.kt
│   │   │   │   └── ScriptCallback.kt
│   │   │   └── luajava/          # luajava 桥接实现
│   │   │       ├── LuaLayoutManager.kt   # loadlayout 声明式 UI 构建
│   │   │       ├── LuaClassBinder.kt     # bindClass / createProxy
│   │   │       ├── LuaThreadManager.kt   # startThread / getRunnable / getHandler
│   │   │       └── LuaViewRegistry.kt    # View ID 注册表 + 查找
│   │   ├── jniLibs/              # 编译产物 libxegg.so
│   │   └── assets/scripts/       # 内置 Lua 脚本
│   └── build.gradle.kts
├── core/                         # Rust 核心代码
│   ├── Cargo.toml
│   ├── src/
│   │   ├── lib.rs                # 库入口，导出 JNI 函数
│   │   ├── memory/               # 内存访问层
│   │   │   ├── mod.rs
│   │   │   ├── ptrace.rs         # Root 模式
│   │   │   ├── virtualspace.rs   # 免 Root 模式
│   │   │   └── traits.rs         # MemoryAccess trait
│   │   ├── search/               # 内存搜索引擎
│   │   │   ├── mod.rs
│   │   │   ├── exact.rs          # 精确搜索
│   │   │   ├── fuzzy.rs          # 模糊搜索
│   │   │   ├── range.rs          # 范围搜索
│   │   │   └── group.rs          # 组搜索
│   │   ├── modify/               # 值修改与锁定
│   │   │   ├── mod.rs
│   │   │   ├── writer.rs         # 内存写入
│   │   │   └── locker.rs         # 值锁定
│   │   ├── script/               # Lua 脚本引擎
│   │   │   ├── mod.rs
│   │   │   ├── engine.rs         # mlua 引擎封装
│   │   │   ├── api.rs            # GG/RLGG 兼容 API (gg.xxx)
│   │   │   ├── luajava.rs        # luajava 桥接层（loadlayout/bindClass/createProxy 等）
│   │   │   └── compat.rs         # GG→XEGG API 映射
│   │   ├── speed/                # 变速齿轮
│   │   │   ├── mod.rs
│   │   │   └── timescale.rs
│   │   ├── pointer/              # 指针追踪
│   │   │   ├── mod.rs
│   │   │   └── tracker.rs
│   │   ├── dump/                 # 内存 Dump
│   │   │   ├── mod.rs
│   │   │   └── dumper.rs
│   │   ├── jni/                  # JNI 桥接层
│   │   │   ├── mod.rs
│   │   │   └── generated.rs
│   └── assets/                   # 内置 Lua 模块
│       ├── floatingWindowManager.lua  # RLGG 悬浮窗框架（内置兼容）
│       └── windowManager.lua          # RLGG 底层窗口管理（内置兼容）
│   └── tests/
├── scripts/                      # 构建脚本
│   ├── build-android.sh
│   └── generate-jni.sh
└── docs/
```

## 模块详细设计

### 1. 内存访问层

#### MemoryAccess Trait

```rust
pub trait MemoryAccess {
    fn attach(&mut self, pid: i32) -> Result<()>;
    fn detach(&mut self) -> Result<()>;
    fn read(&self, addr: usize, buf: &mut [u8]) -> Result<()>;
    fn write(&self, addr: usize, buf: &[u8]) -> Result<()>;
    fn regions(&self) -> Result<Vec<MemoryRegion>>;
    fn mode(&self) -> AccessMode;
}

pub enum AccessMode {
    Root,
    VirtualSpace,
}

pub struct MemoryRegion {
    pub start: usize,
    pub end: usize,
    pub perms: Permissions,
    pub name: Option<String>,
}
```

#### Root 模式 (ptrace)

- `ptrace(PTRACE_ATTACH, pid)` 附加目标进程
- 通过 `/proc/pid/mem` 读写内存
- 解析 `/proc/pid/maps` 获取内存区域
- 处理 SELinux 策略：临时 setenforce 0 或 Magisk 模块

#### 免 Root 模式 (VirtualSpace)

- `unshare(CLONE_NEWNS|CLONE_NEWPID)` 创建新命名空间
- 在新命名空间中 fork + exec 目标 APK
- 父进程通过 `/proc/child_pid/mem` 读写子进程内存
- 无法 ptrace，但可直接读写子进程内存

#### 模式选择

```rust
pub fn create_memory_access() -> Box<dyn MemoryAccess> {
    if is_rooted() {
        Box::new(PtraceAccess::new())
    } else {
        Box::new(VirtualSpaceAccess::new())
    }
}
```

运行时自动检测 Root 状态，用户也可手动指定。

### 2. 内存搜索引擎

#### 搜索流程

```
第一次搜索 → 扫描全部内存区域 → 保存结果集
后续搜索   → 在上次结果集中筛选 → 结果集缩小
锁定/修改  → 对结果集中的地址操作
```

#### 搜索类型

| 类型 | 说明 | 示例 |
|------|------|------|
| Exact | 精确值匹配 | 搜 999 → 值=999 的地址 |
| Fuzzy | 模糊匹配 | 变大/变小/不变/变化了 |
| Range | 范围搜索 | 值在 100~200 之间 |
| Group | 组搜索 | 同时匹配多个偏移的值 |
| Hex | 十六进制搜索 | 搜字节序列 A1 B2 C3 |

#### 数据类型

```rust
pub enum SearchType {
    I8, I16, I32, I64,
    U8, U16, U32, U64,
    F32, F64,
    Bytes(Vec<u8>),
    Utf8(String),
}
```

#### 搜索结果

```rust
pub struct SearchResult {
    pub addresses: Vec<MatchAddress>,
    pub search_type: SearchType,
    pub region_filter: RegionFilter,
    pub timestamp: Instant,
}

pub struct MatchAddress {
    pub addr: usize,
    pub value: Vec<u8>,
    pub region_name: String,
}
```

#### 性能策略

- 第一次搜索多线程并行扫描（按内存区域分片，rayon）
- 后续搜索只遍历上次结果集
- 大结果集（>10万条）使用内存映射文件（memmap2），避免 OOM
- 搜索过程 UI 实时显示进度

### 3. 值修改与锁定

```rust
pub struct ValueWriter;
pub struct ValueLocker;

impl ValueWriter {
    pub fn write(mem: &dyn MemoryAccess, addr: usize, value: &[u8]) -> Result<()>;
}

impl ValueLocker {
    pub fn lock(mem: &dyn MemoryAccess, addr: usize, value: &[u8], interval: Duration);
    pub fn unlock(addr: usize);
    pub fn unlock_all();
}
```

锁定机制：后台线程按 interval 周期性写入指定值，防止游戏回写。

### 4. Lua 脚本引擎

#### 引擎架构

```rust
pub struct ScriptEngine {
    lua: Lua,
    memory: Box<dyn MemoryAccess>,
    search_results: Vec<SearchResult>,
}

impl ScriptEngine {
    pub fn exec_file(&mut self, path: &str) -> Result<()>;
    pub fn exec_string(&mut self, code: &str) -> Result<()>;
    fn register_gg_api(&mut self);
}
```

#### GG/RLGG 兼容 API

在 Lua 环境中注册 `gg` 全局表，函数名/参数/返回值与 GG/RLGG 完全一致：

| GG API | 说明 |
|--------|------|
| `gg.searchNumber(val, type)` | 搜索数值 |
| `gg.getResults(count)` | 获取搜索结果 |
| `gg.setValues(tbl)` | 批量修改值 |
| `gg.clearList()` | 清空结果 |
| `gg.getRanges()` | 获取内存区域 |
| `gg.setRanges(mask)` | 设置搜索区域 |
| `gg.alert(msg)` | 弹窗提示 |
| `gg.toast(msg)` | Toast 提示 |
| `gg.choice(items)` | 选择对话框 |
| `gg.input(prompt)` | 输入对话框 |
| `gg.setVisible(v)` | 显示/隐藏悬浮窗 |
| `gg.speedHack(speed)` | 变速齿轮 |
| `gg.getResultCount()` | 获取结果数量 |
| `gg.addListItems(tbl)` | 添加到保存列表 |
| `gg.getListItems()` | 获取保存列表 |
| `gg.removeListItems(tbl)` | 移除保存列表项 |
| `gg.loadList(file)` | 加载保存列表文件 |
| `gg.saveList(file)` | 保存列表到文件 |
| `gg.getMemoryRanges()` | 获取内存区域（详细版） |
| `gg.setMemoryRanges(mask)` | 设置内存区域（详细版） |
| `gg.getProcessName()` | 获取目标进程名 |
| `gg.sleep(ms)` | 休眠 |

完整 API 列表需对照 GG/RLGG 文档逐一实现，确保所有脚本零修改运行。

### 4.1 `luajava` 桥接层（脚本悬浮窗 UI 核心）

RLGG 脚本之所以能创建复杂的悬浮窗 UI，核心在于 `luajava` 桥接层——它让 Lua 脚本可以**直接操作 Android Java 框架**。XEGG 必须完整实现此桥接层，否则所有 RLGG 悬浮窗脚本都无法运行。

#### 必须实现的 `luajava` API

| API | 说明 | 示例用法 |
|-----|------|----------|
| `luajava.loadlayout(table)` | 从 Lua 表创建 Android View 树 | `luajava.loadlayout({LinearLayout, {Button, text="hi"}})` |
| `luajava.bindClass(name)` | 加载 Java 类 | `luajava.bindClass("android.view.WindowManager")` |
| `luajava.newId(name)` | 生成 View ID | `luajava.newId("myButton")` |
| `luajava.createProxy(iface, table)` | 创建 Java 接口代理 | `luajava.createProxy("View$OnClickListener", {onClick=fn})` |
| `luajava.startThread(fn)` | 启动新线程 | `luajava.startThread(function() gg.sleep(1000) end)` |
| `luajava.getRunnable(fn)` | 将函数包装为 Runnable | `handler:post(luajava.getRunnable(fn))` |
| `luajava.getHandler()` | 获取 UI 线程 Handler | 用于从后台线程调度 UI 操作 |
| `luajava.getBitmap(path)` | 从路径加载 Bitmap | `luajava.getBitmap("/sdcard/icon.png")` |
| `luajava.getBitmapDrawable(path)` | 从路径创建 BitmapDrawable | 用于设置 View 背景 |
| `luajava.getYoYoImpl()` | 获取动画引擎 (YoYo) | `YoYoImpl:with("ZoomInLeft"):playOn(view)` |
| `luajava.getLockSupport()` | 获取线程阻塞/唤醒机制 | `park, unpark = luajava.getLockSupport()` |
| `luajava.getBlock()` | 获取线程阻塞对象 | 用于 `windowManager:wait()` |
| `luajava.isThread()` | 判断当前是否在非 UI 线程 | 决定是否需要 Handler 调度 |
| `luajava.setFloatingWindowHide(b)` | 隐藏/显示 RLGG 原生悬浮窗 | 脚本接管 UI 时隐藏原生悬浮窗 |
| `luajava.threadManager` | 线程管理器 | `runOnMainThread(fn)`, `runOnUiThread(fn)` |

#### `loadlayout` 声明式 UI 系统

`luajava.loadlayout` 是最关键的 API，它将 Lua 表声明式地转换为 Android View 树：

```lua
-- Lua 表 → Android View 树
local view = luajava.loadlayout({
    LinearLayout,
    orientation = 'vertical',
    padding = '10dp',
    {
        Button,
        id = myId,
        text = '点击我',
        onClick = function(view)
            gg.toast('被点击了')
        end
    },
    {
        Switch,
        text = '功能开关',
        onCheckedChange = function(btn, state)
            -- 开关逻辑
        end
    }
})
```

**loadlayout 实现要点**：
- 表的第一个元素是 View 类名（如 `LinearLayout`、`Button`、`TextView`、`ScrollView`、`CheckBox`、`Switch`、`SeekBar`、`ImageView`、`EditText` 等）
- 表的其余键值对映射为 View 属性（`text`、`layout_width`、`padding`、`backgroundColor` 等）
- 嵌套表表示子 View
- `id` 属性将 View 注册到全局环境，后续可通过名称访问
- 事件回调（`onClick`、`onCheckedChange`、`onSeekBarChange`、`onTouch` 等）直接映射为 Java 接口代理

**XEGG 实现方案**：

在 Kotlin 侧实现 `LuaLayoutManager` 类，通过 JNI 暴露给 Lua：

```kotlin
class LuaLayoutManager(private val context: Context) {

    fun loadlayout(table: LuaTable): View {
        return buildView(table)
    }

    private fun buildView(table: LuaTable): View {
        val className = table.get(1) as String  // 第一个元素是类名
        val view = createView(className)

        // 遍历表属性，设置 View 属性
        for (key, value in table) {
            if (key is String) {
                when (key) {
                    "text" -> (view as? TextView)?.text = value
                    "onClick" -> view.setOnClickListener { value.call() }
                    // ... 更多属性映射
                }
            } else if (value is LuaTable) {
                // 递归构建子 View
                val childView = buildView(value)
                (view as? ViewGroup)?.addView(childView)
            }
        }
        return view
    }
}
```

#### RLGG 专有全局对象

| 对象 | 说明 |
|------|------|
| `app.context` | Android Application Context |
| `app.exit()` | 退出脚本 |
| `storages.create(name)` | 创建持久化存储 |
| `file.rlggStorage()` | 获取 RLGG 存储目录 |
| `file.isFile(path)` | 判断文件是否存在 |
| `file.download(url, path)` | 下载文件 |
| `file.unzip(src, dest)` | 解压文件 |
| `file.write(path, data)` | 写入文件 |
| `file.getCacheName(class)` | 获取缓存文件名 |
| `dex.loadfile(path, class)` | 加载 DEX 文件中的类 |
| `import(class)` | 导入 Java 类（等同于 `luajava.bindClass` 的语法糖） |
| `material3` | Material Design 3 主题模块 |

#### RLGG 悬浮窗框架兼容

RLGG 社区有两个核心悬浮窗框架模块，XEGG 必须确保它们可运行：

1. **`floatingWindowManager`** — 高级悬浮窗框架
   - 窗口栈管理（`addWindow`/`removeWindow`/`setWindow`）
   - 窗口生命周期（`onCreate`/`onStart`/`onResume`/`onPause`/`onDestroy`）
   - 内置窗口控制（最小化/最大化/关闭）
   - 背景主题管理（透明度/颜色/圆角/边框）
   - 动画支持（YoYo 动画库）
   - 图标资源管理

2. **`windowManager`** — 底层悬浮窗管理
   - 直接操作 Android `WindowManager`
   - View 的添加/移除/更新
   - 拖拽移动（`setMoveable`）
   - View 的显示/隐藏（`show`/`hide`）
   - 线程阻塞等待（`wait`/`exit`）

**兼容策略**：这两个模块是纯 Lua 代码，只要 XEGG 完整实现 `luajava` 桥接层和 RLGG 专有全局对象，这些模块可以直接作为内置脚本运行，无需修改。

#### JNI 回调机制

脚本需要 UI 交互时（gg.alert/gg.choice/gg.input），通过 JNI 反向调用 Kotlin：

```rust
// Rust 侧
fn gg_alert(lua: &Lua, msg: &str) -> Result<i32> {
    let env = get_jni_env();
    let result = env.call_method(
        callback_obj, "onAlert", "(Ljava/lang/String;)I",
        &[JValue::Object(env.new_string(msg)?)]
    )?;
    Ok(result as i32)
}
```

```kotlin
// Kotlin 侧
class ScriptCallback {
    fun onAlert(msg: String): Int = showDialog(msg)
    fun onToast(msg: String) { showToast(msg) }
    fun onChoice(items: Array<String>): Int = showChoiceDialog(items)
    fun onInput(prompt: String): String? = showInputDialog(prompt)
}
```

### 5. 变速齿轮

```rust
pub struct SpeedHack {
    speed: f64,
}

impl SpeedHack {
    pub fn set_speed(&mut self, speed: f64);
    pub fn inject(&self, mem: &mut dyn MemoryAccess) -> Result<()>;
}
```

实现方式：
- Root 模式：ptrace 注入 `libspeedhack.so`，hook `clock_gettime`/`gettimeofday`/`nanosleep`
- 免 Root 模式：VirtualSpace 启动时 `LD_PRELOAD` 预加载 hook 库
- Hook 库将时间值乘以 speed 倍率

### 6. 指针追踪

```rust
pub struct PointerTracker {
    base_addr: usize,
    offsets: Vec<usize>,
}

impl PointerTracker {
    pub fn resolve(&self, mem: &dyn MemoryAccess) -> Result<usize>;
    pub fn search_pointers(
        &self, mem: &dyn MemoryAccess, target: usize, max_depth: usize,
    ) -> Vec<PointerChain>;
}
```

### 7. 内存 Dump

```rust
pub struct MemoryDumper;

impl MemoryDumper {
    pub fn dump_region(mem: &dyn MemoryAccess, region: &MemoryRegion, output: &mut impl Write) -> Result<()>;
    pub fn hex_view(mem: &dyn MemoryAccess, addr: usize, len: usize) -> Result<HexView>;
}
```

## Android UI 层

### 界面结构

```
MainActivity
├── 悬浮窗 Service (OverlayService)
│   ├── 悬浮球（点击展开面板）
│   ├── 搜索面板
│   ├── 结果列表
│   └── 脚本控制台
├── 主界面
│   ├── 应用选择页
│   ├── 搜索页（精确/模糊/范围搜索）
│   ├── 结果页（查看/修改/锁定）
│   ├── 脚本页
│   ├── 内存浏览器（Hex View）
│   └── 设置页
└── 通知栏常驻
```

### 脚本 UI 详细设计

```
ScriptPage (Compose)
├── ScriptListScreen          # 脚本列表页
│   ├── Tab：内置脚本 | 本地脚本 | 最近使用
│   ├── 脚本卡片（名称、描述、作者、最后运行时间）
│   ├── 导入按钮（文件/URL/剪贴板）
│   └── 长按菜单（编辑、删除、分享、收藏）
│
├── ScriptEditorScreen        # 脚本编辑器
│   ├── 代码编辑区
│   │   ├── Lua 语法高亮
│   │   ├── 行号显示
│   │   ├── 自动缩进
│   │   ├── GG API 自动补全（gg. → 成员列表）
│   │   └── 错误行标记
│   ├── 底部工具栏（运行/停止/保存/撤销/格式化）
│   └── 侧边栏（GG API 参考、代码片段模板）
│
├── ScriptRunnerScreen        # 脚本运行页
│   ├── 运行状态栏
│   ├── 输出控制台（日志/错误/搜索结果）
│   ├── 交互区域（alert/choice/input/prompt）
│   └── 控制按钮（暂停/继续/停止）
│
└── ScriptSettingsScreen      # 脚本设置
    ├── 默认搜索区域
    ├── 脚本超时时间
    ├── 沙箱模式
    └── 日志级别
```

悬浮窗中集成脚本快捷操作：快速运行最近脚本、显示运行状态、gg.alert/choice 在悬浮窗直接弹出。

### UI 技术选型

- **Jetpack Compose** — UI 框架
- **Foreground Service** — 保持进程存活
- **System Alert Window** — 悬浮窗权限
- **XeggBridge** — Kotlin 侧 JNI 封装

### JNI 桥接

```kotlin
object XeggBridge {
    init { System.loadLibrary("xegg") }

    external fun attach(pid: Int): Boolean
    external fun detach()
    external fun readMemory(addr: Long, size: Int): ByteArray
    external fun writeMemory(addr: Long, data: ByteArray): Boolean
    external fun searchNumber(value: String, type: Int): Int
    external fun getResults(count: Int): Array<SearchResult>
    external fun clearResults()
    external fun execScript(code: String): Boolean
    external fun stopScript()
    external fun setSpeed(speed: Float)
}
```

## 构建与部署

### 工具链

- **Rust 交叉编译**: `cargo-ndk`，目标 `aarch64-linux-android`、`armv7-linux-androideabi`、`x86_64-linux-android`
- **Android Gradle**: `rust-android-gradle` 插件自动编译 Rust
- **Lua**: `mlua` crate 静态链接 Lua 5.3

### 依赖 Crate

| Crate | 用途 |
|-------|------|
| `jni` | JNI 绑定 |
| `mlua` | Lua 5.3 引擎 |
| `nix` | ptrace / unshare 等 Linux 系统调用 |
| `memmap2` | 大结果集内存映射 |
| `rayon` | 并行搜索 |
| `thiserror` | 错误处理 |

## 迭代计划

由于项目规模大，建议分阶段交付：

1. **Phase 1 — 基础框架**: 项目骨架 + 内存访问层 (ptrace) + JNI 桥接 + 基础 UI
2. **Phase 2 — 搜索引擎**: 精确/模糊/范围搜索 + 结果修改/锁定 + 悬浮窗
3. **Phase 3 — 脚本引擎 + luajava 桥接**: Lua 引擎 + GG API 兼容 + `luajava` 桥接层（loadlayout/bindClass/createProxy 等） + RLGG 全局对象 + 脚本 UI
4. **Phase 4 — 高级功能**: 变速齿轮 + 指针追踪 + 内存 Dump
5. **Phase 5 — 免 Root 模式**: VirtualSpace 沙箱实现
6. **Phase 6 — 完善**: RLGG 悬浮窗框架兼容测试 + 性能优化 + 测试
