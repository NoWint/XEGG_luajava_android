package com.xegg.service

import android.annotation.SuppressLint
import android.app.*
import android.content.Intent
import android.graphics.PixelFormat
import android.os.IBinder
import android.view.*
import android.widget.FrameLayout
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.ComposeView
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.xegg.MainActivity
import com.xegg.bridge.XeggBridge
import com.xegg.ui.theme.XeggTheme

class OverlayService : Service() {

    companion object {
        private const val CHANNEL_ID = "xegg_overlay"
        private const val NOTIFICATION_ID = 1
        var isRunning = false
            private set
    }

    private var windowManager: WindowManager? = null
    private var floatingIcon: View? = null
    private var panelView: View? = null
    private var isExpanded = false

    override fun onCreate() {
        super.onCreate()
        createNotificationChannel()
        startForeground(NOTIFICATION_ID, createNotification())
        isRunning = true
        windowManager = getSystemService(WINDOW_SERVICE) as WindowManager
        showFloatingIcon()
    }

    override fun onDestroy() {
        super.onDestroy()
        removeFloatingIcon()
        removePanel()
        isRunning = false
    }

    override fun onBind(intent: Intent?): IBinder? = null

    // --- 悬浮球 ---

    @SuppressLint("ClickableViewAccessibility")
    private fun showFloatingIcon() {
        if (floatingIcon != null) return
        val size = dp(48)
        val params = WindowManager.LayoutParams(
            size, size,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
            PixelFormat.TRANSLUCENT
        ).apply { gravity = Gravity.TOP or Gravity.START; x = 0; y = 200 }

        val icon = ComposeView(this).apply {
            setContent {
                XeggTheme {
                    FAB { togglePanel() }
                }
            }
        }

        var ix = 0; var iy = 0; var itx = 0f; var ity = 0f; var dragging = false
        icon.setOnTouchListener { _, event ->
            when (event.action) {
                MotionEvent.ACTION_DOWN -> { ix = params.x; iy = params.y; itx = event.rawX; ity = event.rawY; dragging = false; true }
                MotionEvent.ACTION_MOVE -> { val dx = event.rawX - itx; val dy = event.rawY - ity; if (dx*dx+dy*dy > 100) dragging = true; params.x = ix + dx.toInt(); params.y = iy + dy.toInt(); windowManager?.updateViewLayout(icon, params); true }
                MotionEvent.ACTION_UP -> { if (!dragging) togglePanel(); true }
                else -> false
            }
        }
        floatingIcon = icon
        windowManager?.addView(icon, params)
    }

    private fun removeFloatingIcon() { floatingIcon?.let { windowManager?.removeView(it); floatingIcon = null } }

    // --- 展开面板 ---

    @SuppressLint("ClickableViewAccessibility")
    private fun showPanel() {
        if (panelView != null) return
        val w = dp(340); val h = dp(520)
        val params = WindowManager.LayoutParams(
            w, h,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
            PixelFormat.TRANSLUCENT
        ).apply { gravity = Gravity.CENTER }

        val container = FrameLayout(this)
        val composeView = ComposeView(this).apply {
            setContent {
                XeggTheme { OverlayPanel(onClose = { togglePanel() }) }
            }
        }
        container.addView(composeView, FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT))

        // 拖拽
        var ix = 0; var iy = 0; var itx = 0f; var ity = 0f
        container.setOnTouchListener { _, event ->
            when (event.action) {
                MotionEvent.ACTION_DOWN -> { ix = params.x; iy = params.y; itx = event.rawX; ity = event.rawY; true }
                MotionEvent.ACTION_MOVE -> { params.x = ix + (event.rawX - itx).toInt(); params.y = iy + (event.rawY - ity).toInt(); windowManager?.updateViewLayout(container, params); true }
                else -> false
            }
        }

        panelView = container
        windowManager?.addView(container, params)
    }

    private fun removePanel() { panelView?.let { windowManager?.removeView(it); panelView = null } }
    private fun togglePanel() { if (isExpanded) { removePanel(); isExpanded = false } else { showPanel(); isExpanded = true } }

    // --- 通知 ---

    private fun createNotificationChannel() {
        val ch = NotificationChannel(CHANNEL_ID, "XEGG 悬浮窗", NotificationManager.IMPORTANCE_LOW)
        getSystemService(NotificationManager::class.java).createNotificationChannel(ch)
    }

    private fun createNotification(): Notification {
        val pi = PendingIntent.getActivity(this, 0, Intent(this, MainActivity::class.java), PendingIntent.FLAG_IMMUTABLE)
        return Notification.Builder(this, CHANNEL_ID).setContentTitle("XEGG").setContentText("悬浮窗运行中").setSmallIcon(android.R.drawable.ic_menu_compass).setContentIntent(pi).build()
    }

    private fun dp(dp: Int): Int = (dp * resources.displayMetrics.density).toInt()
}

// --- Compose UI 组件 ---

@Composable
private fun FAB(onClick: () -> Unit) {
    FilledTonalButton(
        onClick = onClick,
        modifier = Modifier.size(48.dp),
        shape = MaterialTheme.shapes.large,
        contentPadding = PaddingValues(0.dp),
        colors = ButtonDefaults.filledTonalButtonColors(
            containerColor = MaterialTheme.colorScheme.primaryContainer,
            contentColor = MaterialTheme.colorScheme.onPrimaryContainer
        )
    ) {
        Icon(Icons.Filled.Search, "XEGG", modifier = Modifier.size(24.dp))
    }
}

// --- 主面板 ---

data class SavedItem(val addr: Long, var value: String, val type: Int, var locked: Boolean = false)

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun OverlayPanel(onClose: () -> Unit) {
    var currentTab by remember { mutableIntStateOf(0) }
    val tabs = listOf("搜索", "已保存", "内存", "脚本", "加速", "设置")
    val icons = listOf(Icons.Outlined.Search, Icons.Outlined.Bookmark, Icons.Outlined.Memory, Icons.Outlined.Code, Icons.Outlined.Speed, Icons.Outlined.Settings)

    // 全局状态
    var searchValue by remember { mutableStateOf("") }
    var searchType by remember { mutableIntStateOf(XeggBridge.TYPE_I32) }
    var searchMode by remember { mutableIntStateOf(0) } // 0=精确, 1=模糊, 2=组合, 3=范围
    var fuzzyCondition by remember { mutableIntStateOf(XeggBridge.FUZZY_UNCHANGED) }
    var regionFilter by remember { mutableIntStateOf(XeggBridge.REGION_ALL) }
    var resultCount by remember { mutableIntStateOf(0) }
    var savedItems by remember { mutableStateOf(mutableListOf<SavedItem>()) }
    var scriptPath by remember { mutableStateOf("") }
    var scriptCode by remember { mutableStateOf("") }
    var scriptOutput by remember { mutableStateOf("") }
    var speedValue by remember { mutableFloatStateOf(1.0f) }
    var memAddr by remember { mutableStateOf("") }
    var memDump by remember { mutableStateOf("") }

    Surface(
        modifier = Modifier.fillMaxSize(),
        color = MaterialTheme.colorScheme.surface,
        shape = MaterialTheme.shapes.extraLarge,
        tonalElevation = 6.dp
    ) {
        Column {
            // 顶栏
            TopAppBar(
                title = {
                    Text("XEGG", style = MaterialTheme.typography.titleLarge)
                },
                navigationIcon = {
                    Icon(Icons.Filled.Search, null, tint = MaterialTheme.colorScheme.primary, modifier = Modifier.padding(start = 12.dp).size(24.dp))
                },
                actions = {
                    Text(
                        if (XeggBridge.nativeIsAttached()) "已连接" else "未连接",
                        style = MaterialTheme.typography.labelMedium,
                        color = if (XeggBridge.nativeIsAttached()) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.error,
                        modifier = Modifier.padding(end = 8.dp)
                    )
                    IconButton(onClick = onClose) {
                        Icon(Icons.Filled.Close, "关闭")
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(containerColor = MaterialTheme.colorScheme.surfaceContainer)
            )

            // Tab 栏
            ScrollableTabRow(
                selectedTabIndex = currentTab,
                containerColor = MaterialTheme.colorScheme.surfaceContainer,
                contentColor = MaterialTheme.colorScheme.primary,
                edgePadding = 8.dp,
                divider = {}
            ) {
                tabs.forEachIndexed { index, title ->
                    Tab(
                        selected = currentTab == index,
                        onClick = { currentTab = index },
                        text = { Text(title, style = MaterialTheme.typography.labelMedium) },
                        icon = { Icon(icons[index], null, modifier = Modifier.size(18.dp)) },
                    )
                }
            }

            // 内容区
            when (currentTab) {
                0 -> SearchTab(
                    searchValue = searchValue, onSearchValueChange = { searchValue = it },
                    searchType = searchType, onSearchTypeChange = { searchType = it },
                    searchMode = searchMode, onSearchModeChange = { searchMode = it },
                    fuzzyCondition = fuzzyCondition, onFuzzyConditionChange = { fuzzyCondition = it },
                    regionFilter = regionFilter, onRegionFilterChange = { regionFilter = it },
                    resultCount = resultCount, onResultCountChange = { resultCount = it },
                    onSaveItem = { addr, value, type -> savedItems = savedItems.toMutableList().apply { add(SavedItem(addr, value, type)) } }
                )
                1 -> SavedTab(
                    items = savedItems, onItemsChange = { savedItems = it }
                )
                2 -> MemoryTab(
                    addr = memAddr, onAddrChange = { memAddr = it },
                    dump = memDump, onDumpChange = { memDump = it }
                )
                3 -> ScriptTab(
                    path = scriptPath, onPathChange = { scriptPath = it },
                    code = scriptCode, onCodeChange = { scriptCode = it },
                    output = scriptOutput, onOutputChange = { scriptOutput = it }
                )
                4 -> SpeedTab(
                    speed = speedValue, onSpeedChange = { speedValue = it }
                )
                5 -> SettingsTab(onClose = onClose)
            }
        }
    }
}

// --- 搜索 Tab ---

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun SearchTab(
    searchValue: String, onSearchValueChange: (String) -> Unit,
    searchType: Int, onSearchTypeChange: (Int) -> Unit,
    searchMode: Int, onSearchModeChange: (Int) -> Unit,
    fuzzyCondition: Int, onFuzzyConditionChange: (Int) -> Unit,
    regionFilter: Int, onRegionFilterChange: (Int) -> Unit,
    resultCount: Int, onResultCountChange: (Int) -> Unit,
    onSaveItem: (Long, String, Int) -> Unit
) {
    val typeNames = listOf("I8","I16","I32","I64","U8","U16","U32","U64","F32","F64","UTF8","Hex")
    val typeCodes = listOf(0,1,2,3,4,5,6,7,8,9,10,11)
    val modeNames = listOf("精确","模糊","组合","范围")
    val fuzzyNames = listOf("相等","不等","大于","小于","增加","减少")
    val fuzzyCodes = listOf(XeggBridge.FUZZY_UNCHANGED, XeggBridge.FUZZY_CHANGED, XeggBridge.FUZZY_INCREASED, XeggBridge.FUZZY_DECREASED, 4, 5)
    val regionNames = listOf("All","Ca","Cb","Cd","Ce","Cf","Ch")
    val regionCodes = listOf(-1,1,2,4,8,16,32)

    var showResults by remember { mutableStateOf(false) }

    Column(modifier = Modifier.fillMaxSize().padding(12.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
        // 搜索值
        OutlinedTextField(
            value = searchValue, onValueChange = onSearchValueChange,
            label = { Text("搜索值") },
            modifier = Modifier.fillMaxWidth(),
            singleLine = true
        )

        // 搜索模式
        Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            modeNames.forEachIndexed { i, name ->
                FilterChip(selected = searchMode == i, onClick = { onSearchModeChange(i) }, label = { Text(name, style = MaterialTheme.typography.labelSmall) })
            }
        }

        // 数据类型
        Row(horizontalArrangement = Arrangement.spacedBy(2.dp), modifier = Modifier.horizontalScroll(rememberScrollState())) {
            typeNames.forEachIndexed { i, name ->
                FilterChip(selected = searchType == typeCodes[i], onClick = { onSearchTypeChange(typeCodes[i]) }, label = { Text(name, style = MaterialTheme.typography.labelSmall) })
            }
        }

        // 模糊条件
        if (searchMode == 1) {
            Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                fuzzyNames.forEachIndexed { i, name ->
                    FilterChip(selected = fuzzyCondition == fuzzyCodes[i], onClick = { onFuzzyConditionChange(fuzzyCodes[i]) }, label = { Text(name, style = MaterialTheme.typography.labelSmall) })
                }
            }
        }

        // 区域过滤
        Row(horizontalArrangement = Arrangement.spacedBy(4.dp)) {
            regionNames.forEachIndexed { i, name ->
                FilterChip(selected = regionFilter == regionCodes[i], onClick = { onRegionFilterChange(regionCodes[i]) }, label = { Text(name, style = MaterialTheme.typography.labelSmall) })
            }
        }

        // 操作按钮
        Row(horizontalArrangement = Arrangement.spacedBy(6.dp), modifier = Modifier.fillMaxWidth()) {
            Button(onClick = {
                if (searchValue.isNotEmpty()) {
                    onResultCountChange(XeggBridge.nativeSearchNumber(searchValue, searchType, regionFilter))
                    showResults = true
                }
            }, modifier = Modifier.weight(1f), enabled = searchValue.isNotEmpty()) {
                Icon(Icons.Filled.Search, null, modifier = Modifier.size(16.dp))
                Spacer(Modifier.width(4.dp))
                Text("搜索", style = MaterialTheme.typography.labelMedium)
            }
            OutlinedButton(onClick = {
                if (searchValue.isNotEmpty()) onResultCountChange(XeggBridge.nativeRefineSearch(searchValue))
            }, modifier = Modifier.weight(1f), enabled = resultCount > 0) {
                Text("继续", style = MaterialTheme.typography.labelMedium)
            }
            OutlinedButton(onClick = {
                XeggBridge.nativeClearResults(); onResultCountChange(0); showResults = false
            }, modifier = Modifier.weight(1f)) {
                Text("重置", style = MaterialTheme.typography.labelMedium)
            }
        }

        // 结果统计
        if (resultCount > 0) {
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Text("找到 $resultCount 个结果", style = MaterialTheme.typography.labelMedium, color = MaterialTheme.colorScheme.primary, modifier = Modifier.weight(1f))
                TextButton(onClick = { showResults = !showResults }) { Text(if (showResults) "收起" else "展开") }
            }
        }

        // 结果列表
        if (showResults && resultCount > 0) {
            LazyColumn(modifier = Modifier.weight(1f)) {
                val count = minOf(resultCount, 100)
                items(List(count) { it }) { index ->
                    val addr = XeggBridge.nativeGetResultAddress(index)
                    val valueBytes = XeggBridge.nativeGetResultValue(index)
                    val valueStr = valueBytes?.let { String(it) } ?: "?"
                    ListItem(
                        headlineContent = { Text("0x${addr.toString(16)}", style = MaterialTheme.typography.bodySmall) },
                        supportingContent = { Text(valueStr, style = MaterialTheme.typography.labelSmall) },
                        trailingContent = {
                            Row {
                                IconButton(onClick = { onSaveItem(addr, valueStr, searchType) }) {
                                    Icon(Icons.Outlined.BookmarkAdd, null, modifier = Modifier.size(16.dp), tint = MaterialTheme.colorScheme.primary)
                                }
                                IconButton(onClick = { XeggBridge.nativeSetValue(addr, valueBytes ?: ByteArray(0)) }) {
                                    Icon(Icons.Outlined.Edit, null, modifier = Modifier.size(16.dp))
                                }
                            }
                        },
                        colors = ListItemDefaults.colors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow)
                    )
                }
                if (resultCount > 100) {
                    item { Text("仅显示前 100 条", style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurfaceVariant, modifier = Modifier.padding(8.dp)) }
                }
            }
        }
    }
}

// --- 已保存 Tab ---

@Composable
private fun SavedTab(items: MutableList<SavedItem>, onItemsChange: (MutableList<SavedItem>) -> Unit) {
    Column(modifier = Modifier.fillMaxSize().padding(12.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text("已保存 (${items.size})", style = MaterialTheme.typography.titleSmall, modifier = Modifier.weight(1f))
            if (items.isNotEmpty()) {
                OutlinedButton(onClick = {
                    items.forEach { it.locked = true }
                    onItemsChange(items.toMutableList())
                }) { Text("全部锁定", style = MaterialTheme.typography.labelSmall) }
                Spacer(Modifier.width(4.dp))
                OutlinedButton(onClick = { onItemsChange(mutableListOf()) }) { Text("清空", style = MaterialTheme.typography.labelSmall) }
            }
        }

        LazyColumn(modifier = Modifier.weight(1f)) {
            items(items.indices.toList()) { index ->
                val item = items[index]
                var editValue by remember { mutableStateOf(item.value) }
                ListItem(
                    headlineContent = { Text("0x${item.addr.toString(16)}", style = MaterialTheme.typography.bodySmall) },
                    supportingContent = {
                        OutlinedTextField(
                            value = editValue, onValueChange = { editValue = it },
                            modifier = Modifier.width(80.dp),
                            textStyle = MaterialTheme.typography.bodySmall,
                            singleLine = true,
                        )
                    },
                    trailingContent = {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Switch(checked = item.locked, onCheckedChange = {
                                item.locked = it
                                onItemsChange(items.toMutableList())
                            }, modifier = Modifier.height(24.dp))
                            IconButton(onClick = {
                                if (editValue.isNotEmpty()) {
                                    XeggBridge.nativeSetValue(item.addr, editValue.toByteArray())
                                    item.value = editValue
                                }
                            }) { Icon(Icons.Filled.Check, null, modifier = Modifier.size(16.dp), tint = MaterialTheme.colorScheme.primary) }
                            IconButton(onClick = {
                                val newList = items.toMutableList()
                                newList.removeAt(index)
                                onItemsChange(newList)
                            }) { Icon(Icons.Filled.Delete, null, modifier = Modifier.size(16.dp), tint = MaterialTheme.colorScheme.error) }
                        }
                    },
                    colors = ListItemDefaults.colors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow)
                )
            }
        }
    }
}

// --- 内存 Tab ---

@Composable
private fun MemoryTab(addr: String, onAddrChange: (String) -> Unit, dump: String, onDumpChange: (String) -> Unit) {
    Column(modifier = Modifier.fillMaxSize().padding(12.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
        Row(verticalAlignment = Alignment.CenterVertically) {
            OutlinedTextField(value = addr, onValueChange = onAddrChange, label = { Text("地址") }, modifier = Modifier.weight(1f), singleLine = true, textStyle = MaterialTheme.typography.bodySmall)
            Spacer(Modifier.width(6.dp))
            Button(onClick = {
                val a = addr.removePrefix("0x").toLongOrNull(16) ?: 0L
                if (a > 0) onDumpChange(XeggBridge.nativeHexDump(a, 256) ?: "读取失败")
            }) { Text("查看", style = MaterialTheme.typography.labelMedium) }
        }
        if (dump.isNotEmpty()) {
            Card(modifier = Modifier.weight(1f), colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow)) {
                androidx.compose.foundation.text.BasicText(
                    text = dump,
                    style = androidx.compose.ui.text.TextStyle(
                        fontFamily = androidx.compose.ui.text.font.FontFamily.Monospace,
                        fontSize = MaterialTheme.typography.labelSmall.fontSize,
                        color = MaterialTheme.colorScheme.onSurface
                    ),
                    modifier = Modifier.padding(8.dp)
                )
            }
        } else {
            Box(modifier = Modifier.weight(1f).fillMaxWidth(), contentAlignment = Alignment.Center) {
                Text("输入地址查看内存", style = MaterialTheme.typography.bodyMedium, color = MaterialTheme.colorScheme.onSurfaceVariant)
            }
        }
    }
}

// --- 脚本 Tab ---

@Composable
private fun ScriptTab(path: String, onPathChange: (String) -> Unit, code: String, onCodeChange: (String) -> Unit, output: String, onOutputChange: (String) -> Unit) {
    var isRunning by remember { mutableStateOf(false) }
    Column(modifier = Modifier.fillMaxSize().padding(12.dp), verticalArrangement = Arrangement.spacedBy(6.dp)) {
        OutlinedTextField(value = path, onValueChange = onPathChange, label = { Text("脚本路径") }, placeholder = { Text("/sdcard/script.lua") }, modifier = Modifier.fillMaxWidth(), singleLine = true)
        Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
            Button(onClick = {
                if (path.isNotEmpty()) {
                    isRunning = true
                    val success = XeggBridge.nativeExecFile(path)
                    onOutputChange(output + (if (success) "[完成] 执行成功\n" else "[错误] 执行失败\n"))
                    isRunning = false
                }
            }, enabled = path.isNotEmpty() && !isRunning, modifier = Modifier.weight(1f)) {
                Icon(Icons.Filled.PlayArrow, null, modifier = Modifier.size(16.dp))
                Spacer(Modifier.width(4.dp))
                Text("执行文件", style = MaterialTheme.typography.labelMedium)
            }
            if (isRunning) {
                OutlinedButton(onClick = { XeggBridge.nativeStopScript(); isRunning = false; onOutputChange(output + "[停止]\n") }) {
                    Text("停止", style = MaterialTheme.typography.labelMedium)
                }
            }
        }
        OutlinedTextField(value = code, onValueChange = onCodeChange, label = { Text("内联代码") }, placeholder = { Text("gg.toast('Hello')") }, modifier = Modifier.fillMaxWidth().weight(1f), maxLines = Int.MAX_VALUE)
        Button(onClick = {
            if (code.isNotEmpty()) {
                val success = XeggBridge.nativeExecScript(code)
                onOutputChange(output + (if (success) "[完成] 内联执行成功\n" else "[错误] 内联执行失败\n"))
            }
        }, enabled = code.isNotEmpty() && !isRunning, modifier = Modifier.fillMaxWidth()) {
            Text("执行代码", style = MaterialTheme.typography.labelMedium)
        }
        if (output.isNotEmpty()) {
            Card(modifier = Modifier.heightIn(max = 120.dp), colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow)) {
                Column(modifier = Modifier.padding(8.dp)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text("输出", style = MaterialTheme.typography.labelMedium, modifier = Modifier.weight(1f))
                        TextButton(onClick = { onOutputChange("") }) { Text("清空", style = MaterialTheme.typography.labelSmall) }
                    }
                    androidx.compose.foundation.text.BasicText(text = output, style = androidx.compose.ui.text.TextStyle(fontFamily = androidx.compose.ui.text.font.FontFamily.Monospace, fontSize = MaterialTheme.typography.labelSmall.fontSize, color = MaterialTheme.colorScheme.onSurfaceVariant))
                }
            }
        }
    }
}

// --- 加速 Tab ---

@Composable
private fun SpeedTab(speed: Float, onSpeedChange: (Float) -> Unit) {
    Column(modifier = Modifier.fillMaxSize().padding(12.dp), verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Text("变速齿轮", style = MaterialTheme.typography.titleMedium)
        Text(String.format("%.1fx", speed), style = MaterialTheme.typography.headlineMedium, color = MaterialTheme.colorScheme.primary)
        Slider(value = speed, onValueChange = { onSpeedChange(it); XeggBridge.nativeSetSpeed(it.toDouble()) }, valueRange = 0.1f..10f, steps = 98, modifier = Modifier.fillMaxWidth())
        Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
            listOf(0.5f, 1f, 2f, 5f, 10f).forEach { s ->
                FilterChip(selected = speed == s, onClick = { onSpeedChange(s); XeggBridge.nativeSetSpeed(s.toDouble()) }, label = { Text("${s}x", style = MaterialTheme.typography.labelSmall) })
            }
        }
        Row(horizontalArrangement = Arrangement.spacedBy(6.dp), modifier = Modifier.fillMaxWidth()) {
            Button(onClick = { XeggBridge.nativeInjectSpeedHack() }, modifier = Modifier.weight(1f)) { Text("注入", style = MaterialTheme.typography.labelMedium) }
            OutlinedButton(onClick = { XeggBridge.nativeRemoveSpeedHack() }, modifier = Modifier.weight(1f)) { Text("移除", style = MaterialTheme.typography.labelMedium) }
        }
    }
}

// --- 设置 Tab ---

@Composable
private fun SettingsTab(onClose: () -> Unit) {
    Column(modifier = Modifier.fillMaxSize().padding(12.dp), verticalArrangement = Arrangement.spacedBy(8.dp)) {
        // 附加状态
        Card(colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceContainerLow)) {
            ListItem(
                headlineContent = { Text(if (XeggBridge.nativeIsAttached()) "已附加" else "未附加") },
                leadingContent = { Icon(if (XeggBridge.nativeIsAttached()) Icons.Filled.CheckCircle else Icons.Filled.Cancel, null, tint = if (XeggBridge.nativeIsAttached()) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.error) },
                trailingContent = {
                    if (XeggBridge.nativeIsAttached()) {
                        OutlinedButton(onClick = { XeggBridge.nativeDetach() }) { Text("断开", color = MaterialTheme.colorScheme.error) }
                    }
                }
            )
        }

        HorizontalDivider()

        // 操作
        OutlinedButton(onClick = { /* 打开主界面 */ }, modifier = Modifier.fillMaxWidth()) {
            Icon(Icons.Outlined.OpenInNew, null, modifier = Modifier.size(16.dp))
            Spacer(Modifier.width(6.dp))
            Text("打开主界面", style = MaterialTheme.typography.labelMedium)
        }
        OutlinedButton(onClick = { onClose() }, modifier = Modifier.fillMaxWidth(), colors = ButtonDefaults.outlinedButtonColors(contentColor = MaterialTheme.colorScheme.error)) {
            Icon(Icons.Outlined.Close, null, modifier = Modifier.size(16.dp))
            Spacer(Modifier.width(6.dp))
            Text("停止悬浮窗", style = MaterialTheme.typography.labelMedium)
        }
    }
}
