package com.xegg.service

import android.annotation.SuppressLint
import android.app.*
import android.content.Intent
import android.graphics.PixelFormat
import android.os.IBinder
import android.view.*
import android.widget.*
import com.xegg.MainActivity
import com.xegg.R
import com.xegg.bridge.XeggBridge

class OverlayService : Service() {

    companion object {
        private const val CHANNEL_ID = "xegg_overlay"
        private const val NOTIFICATION_ID = 1
        var isRunning = false
            private set
    }

    private var windowManager: WindowManager? = null
    private var floatingIcon: View? = null
    private var expandedPanel: View? = null
    private var isExpanded = false

    // 搜索相关状态
    private var searchValue = ""
    private var searchType = 2 // I32
    private var resultCount = 0
    private var savedItems = mutableListOf<SavedItem>()
    private var scriptOutput = ""

    data class SavedItem(val addr: Long, var value: String, val type: Int, var locked: Boolean = false)

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
        removeExpandedPanel()
        isRunning = false
    }

    override fun onBind(intent: Intent?): IBinder? = null

    // --- 悬浮图标 ---

    @SuppressLint("ClickableViewAccessibility")
    private fun showFloatingIcon() {
        if (floatingIcon != null) return

        val iconSize = dpToPx(48)
        val params = WindowManager.LayoutParams(
            iconSize, iconSize,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or
                    WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.TOP or Gravity.START
            x = 0
            y = 200
        }

        // 创建绿色圆形图标
        val icon = ImageView(this).apply {
            setImageDrawable(createIconDrawable())
            setPadding(dpToPx(4), dpToPx(4), dpToPx(4), dpToPx(4))
            elevation = dpToPx(8).toFloat()
        }

        // 拖拽 + 点击
        var initialX = 0
        var initialY = 0
        var initialTouchX = 0f
        var initialTouchY = 0f
        var isDragging = false

        icon.setOnTouchListener { _, event ->
            when (event.action) {
                MotionEvent.ACTION_DOWN -> {
                    initialX = params.x
                    initialY = params.y
                    initialTouchX = event.rawX
                    initialTouchY = event.rawY
                    isDragging = false
                    true
                }
                MotionEvent.ACTION_MOVE -> {
                    val dx = event.rawX - initialTouchX
                    val dy = event.rawY - initialTouchY
                    if (dx * dx + dy * dy > 100) isDragging = true
                    params.x = initialX + dx.toInt()
                    params.y = initialY + dy.toInt()
                    windowManager?.updateViewLayout(icon, params)
                    true
                }
                MotionEvent.ACTION_UP -> {
                    if (!isDragging) {
                        togglePanel()
                    }
                    true
                }
                else -> false
            }
        }

        floatingIcon = icon
        windowManager?.addView(icon, params)
    }

    private fun removeFloatingIcon() {
        floatingIcon?.let {
            windowManager?.removeView(it)
            floatingIcon = null
        }
    }

    // --- 展开面板 ---

    @SuppressLint("ClickableViewAccessibility")
    private fun showExpandedPanel() {
        if (expandedPanel != null) return

        val panelWidth = dpToPx(320)
        val panelHeight = dpToPx(480)

        val params = WindowManager.LayoutParams(
            panelWidth, panelHeight,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.CENTER
        }

        val panel = createPanelView()

        // 面板顶部拖拽条
        val dragBar = panel.findViewById<View>(R.id.drag_bar)
        var initialX = 0
        var initialY = 0
        var initialTouchX = 0f
        var initialTouchY = 0f

        dragBar.setOnTouchListener { _, event ->
            when (event.action) {
                MotionEvent.ACTION_DOWN -> {
                    initialX = params.x
                    initialY = params.y
                    initialTouchX = event.rawX
                    initialTouchY = event.rawY
                    true
                }
                MotionEvent.ACTION_MOVE -> {
                    params.x = initialX + (event.rawX - initialTouchX).toInt()
                    params.y = initialY + (event.rawY - initialTouchY).toInt()
                    windowManager?.updateViewLayout(panel, params)
                    true
                }
                else -> false
            }
        }

        expandedPanel = panel
        windowManager?.addView(panel, params)
    }

    private fun removeExpandedPanel() {
        expandedPanel?.let {
            windowManager?.removeView(it)
            expandedPanel = null
        }
    }

    private fun togglePanel() {
        if (isExpanded) {
            removeExpandedPanel()
            isExpanded = false
        } else {
            showExpandedPanel()
            isExpanded = true
        }
    }

    // --- 面板 UI ---

    @SuppressLint("SetTextI18n")
    private fun createPanelView(): LinearLayout {
        val currentTab = intArrayOf(0) // 0=搜索, 1=保存, 2=脚本, 3=设置

        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(0xFF1A1A2E.toInt())
            setPadding(dpToPx(2), dpToPx(2), dpToPx(2), dpToPx(2))

            // 拖拽条 + 标题 + 最小化按钮
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                setBackgroundColor(0xFF16213E.toInt())
                setPadding(dpToPx(8), dpToPx(8), dpToPx(8), dpToPx(8))
                gravity = Gravity.CENTER_VERTICAL

                // 拖拽区域
                addView(View(context).apply {
                    id = R.id.drag_bar
                    setBackgroundColor(0xFF00E676.toInt())
                    layoutParams = LinearLayout.LayoutParams(dpToPx(24), dpToPx(4))
                })

                addView(Space(context).apply {
                    layoutParams = LinearLayout.LayoutParams(dpToPx(8), 0)
                })

                addView(TextView(context).apply {
                    text = "XEGG"
                    setTextColor(0xFF00E676.toInt())
                    textSize = 16f
                    typeface = android.graphics.Typeface.DEFAULT_BOLD
                })

                addView(Space(context).apply {
                    layoutParams = LinearLayout.LayoutParams(0, 0, 1f)
                })

                // 附加状态
                addView(TextView(context).apply {
                    id = R.id.status_text
                    text = if (XeggBridge.nativeIsAttached()) "● 已附加" else "○ 未附加"
                    setTextColor(if (XeggBridge.nativeIsAttached()) 0xFF00E676.toInt() else 0xFFFF5252.toInt())
                    textSize = 11f
                })

                addView(Space(context).apply {
                    layoutParams = LinearLayout.LayoutParams(dpToPx(8), 0)
                })

                // 最小化按钮
                addView(TextView(context).apply {
                    text = "—"
                    setTextColor(0xFFFFFFFF.toInt())
                    textSize = 18f
                    setPadding(dpToPx(8), 0, dpToPx(8), 0)
                    setOnClickListener { togglePanel() }
                })
            })

            // Tab 栏
            val tabNames = listOf("搜索", "保存", "脚本", "设置")
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                setBackgroundColor(0xFF16213E.toInt())
                val tabBar = this
                tabNames.forEachIndexed { index, name ->
                    addView(TextView(context).apply {
                        text = name
                        setTextColor(if (index == 0) 0xFF00E676.toInt() else 0xFF888888.toInt())
                        textSize = 13f
                        setPadding(dpToPx(12), dpToPx(8), dpToPx(12), dpToPx(8))
                        setOnClickListener {
                            currentTab[0] = index
                            updateTabContent(tabBar, index)
                        }
                        tag = "tab_$index"
                    })
                }
            })

            // 内容区域
            addView(FrameLayout(context).apply {
                id = R.id.content_area
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    0, 1f
                )
                setBackgroundColor(0xFF0F0F23.toInt())

                // 默认显示搜索页
                addView(createSearchView())
            })
        }
    }

    @SuppressLint("SetTextI18n")
    private fun updateTabContent(tabBar: LinearLayout, tabIndex: Int) {
        // 更新 tab 颜色
        for (i in 0 until tabBar.childCount) {
            val tab = tabBar.getChildAt(i) as? TextView ?: continue
            tab.setTextColor(if (i == tabIndex) 0xFF00E676.toInt() else 0xFF888888.toInt())
        }

        // 更新内容
        val panel = expandedPanel as? LinearLayout ?: return
        val contentArea = panel.findViewById<FrameLayout>(R.id.content_area)
        contentArea.removeAllViews()

        when (tabIndex) {
            0 -> contentArea.addView(createSearchView())
            1 -> contentArea.addView(createSavedView())
            2 -> contentArea.addView(createScriptView())
            3 -> contentArea.addView(createSettingsView())
        }
    }

    // --- 搜索页 ---

    @SuppressLint("SetTextI18n")
    private fun createSearchView(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dpToPx(12), dpToPx(12), dpToPx(12), dpToPx(12))

            // 值输入
            addView(EditText(context).apply {
                hint = "输入搜索值"
                setTextColor(0xFFFFFFFF.toInt())
                setHintTextColor(0xFF888888.toInt())
                textSize = 14f
                setPadding(dpToPx(8), dpToPx(8), dpToPx(8), dpToPx(8))
                setBackgroundColor(0xFF1A1A2E.toInt())
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT
                )
                id = R.id.search_input
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(8))
            })

            // 类型选择
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                val types = listOf("I8", "I16", "I32", "I64", "U8", "U16", "U32", "U64", "F32", "F64")
                types.forEachIndexed { index, name ->
                    addView(TextView(context).apply {
                        text = name
                        setTextColor(if (index == 2) 0xFF00E676.toInt() else 0xFF888888.toInt())
                        textSize = 11f
                        setPadding(dpToPx(6), dpToPx(4), dpToPx(6), dpToPx(4))
                        setBackgroundColor(if (index == 2) 0xFF1B5E20.toInt() else 0x00000000)
                        setOnClickListener {
                            searchType = index
                            // 更新选中状态
                            (parent as? LinearLayout)?.let { bar ->
                                for (i in 0 until bar.childCount) {
                                    val tv = bar.getChildAt(i) as? TextView ?: continue
                                    tv.setTextColor(if (i == index) 0xFF00E676.toInt() else 0xFF888888.toInt())
                                    tv.setBackgroundColor(if (i == index) 0xFF1B5E20.toInt() else 0x00000000)
                                }
                            }
                        }
                    })
                }
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(8))
            })

            // 搜索按钮行
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    LinearLayout.LayoutParams.WRAP_CONTENT
                )

                addView(createButton("精确搜索") {
                    val input = (expandedPanel?.findViewById<EditText>(R.id.search_input))?.text?.toString() ?: return@createButton
                    if (input.isEmpty()) return@createButton
                    searchValue = input
                    val count = XeggBridge.nativeSearchNumber(input, searchType, -1)
                    resultCount = count
                    updateResultDisplay()
                })

                addView(Space(context).apply {
                    layoutParams = LinearLayout.LayoutParams(dpToPx(4), 0)
                })

                addView(createButton("再次搜索") {
                    val input = (expandedPanel?.findViewById<EditText>(R.id.search_input))?.text?.toString() ?: return@createButton
                    if (input.isEmpty()) return@createButton
                    searchValue = input
                    val count = XeggBridge.nativeRefineSearch(input)
                    resultCount = count
                    updateResultDisplay()
                })

                addView(Space(context).apply {
                    layoutParams = LinearLayout.LayoutParams(dpToPx(4), 0)
                })

                addView(createButton("模糊") {
                    val count = XeggBridge.nativeFuzzySearch(0) // Changed=0
                    resultCount = count
                    updateResultDisplay()
                })
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(8))
            })

            // 结果显示
            addView(TextView(context).apply {
                id = R.id.result_text
                text = "结果: 0 条"
                setTextColor(0xFF00E676.toInt())
                textSize = 13f
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(4))
            })

            // 结果列表
            addView(ScrollView(context).apply {
                id = R.id.result_list
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    0, 1f
                )
                addView(LinearLayout(context).apply {
                    orientation = LinearLayout.VERTICAL
                    id = R.id.result_list_inner
                })
            })
        }
    }

    @SuppressLint("SetTextI18n")
    private fun updateResultDisplay() {
        val resultText = expandedPanel?.findViewById<TextView>(R.id.result_text)
        resultText?.text = "结果: $resultCount 条"

        val listInner = expandedPanel?.findViewById<LinearLayout>(R.id.result_list_inner)
        listInner?.removeAllViews()

        // 显示前 50 条结果
        val showCount = minOf(resultCount, 50)
        for (i in 0 until showCount) {
            val addr = XeggBridge.nativeGetResultAddress(i)
            val valueBytes = XeggBridge.nativeGetResultValue(i)
            val value = valueBytes?.let { String(it, Charsets.UTF_8) } ?: "?"
            listInner?.addView(LinearLayout(this).apply {
                orientation = LinearLayout.HORIZONTAL
                setPadding(0, dpToPx(4), 0, dpToPx(4))

                addView(TextView(context).apply {
                    text = "0x${addr.toString(16)}"
                    setTextColor(0xFFAAAAAA.toInt())
                    textSize = 11f
                    layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
                })

                addView(TextView(context).apply {
                    text = value
                    setTextColor(0xFFFFFFFF.toInt())
                    textSize = 11f
                })

                // 保存按钮
                addView(TextView(context).apply {
                    text = " + "
                    setTextColor(0xFF00E676.toInt())
                    textSize = 14f
                    setOnClickListener {
                        savedItems.add(SavedItem(addr, value, searchType))
                        Toast.makeText(this@OverlayService, "已保存", Toast.LENGTH_SHORT).show()
                    }
                })
            })
        }
    }

    // --- 保存页 ---

    @SuppressLint("SetTextI18n")
    private fun createSavedView(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dpToPx(12), dpToPx(12), dpToPx(12), dpToPx(12))

            addView(TextView(context).apply {
                text = "已保存的值 (${savedItems.size})"
                setTextColor(0xFF00E676.toInt())
                textSize = 14f
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(8))
            })

            addView(ScrollView(context).apply {
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    0, 1f
                )
                addView(LinearLayout(context).apply {
                    orientation = LinearLayout.VERTICAL
                    savedItems.forEachIndexed { index, item ->
                        addView(createSavedItemView(item, index))
                    }
                })
            })
        }
    }

    @SuppressLint("SetTextI18n")
    private fun createSavedItemView(item: SavedItem, index: Int): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            setPadding(0, dpToPx(4), 0, dpToPx(4))
            gravity = Gravity.CENTER_VERTICAL

            addView(TextView(context).apply {
                text = "0x${item.addr.toString(16)}"
                setTextColor(0xFFAAAAAA.toInt())
                textSize = 11f
                layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
            })

            // 锁定按钮
            addView(TextView(context).apply {
                text = if (item.locked) "🔒" else "🔓"
                textSize = 14f
                setPadding(dpToPx(4), 0, dpToPx(4), 0)
                setOnClickListener {
                    item.locked = !item.locked
                    text = if (item.locked) "🔒" else "🔓"
                }
            })

            // 修改值
            addView(EditText(context).apply {
                hint = item.value
                setTextColor(0xFFFFFFFF.toInt())
                setHintTextColor(0xFF888888.toInt())
                textSize = 12f
                maxWidth = dpToPx(80)
                setPadding(dpToPx(4), 0, dpToPx(4), 0)
                setBackgroundColor(0xFF1A1A2E.toInt())
                id = View.generateViewId()
                setOnEditorActionListener { v, _, _ ->
                    val newValue = v.text.toString()
                    if (newValue.isNotEmpty()) {
                        XeggBridge.nativeSetValue(item.addr, newValue.toByteArray(Charsets.UTF_8))
                        item.value = newValue
                    }
                    true
                }
            })
        }
    }

    // --- 脚本页 ---

    @SuppressLint("SetTextI18n")
    private fun createScriptView(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dpToPx(12), dpToPx(12), dpToPx(12), dpToPx(12))

            addView(TextView(context).apply {
                text = "Lua 脚本"
                setTextColor(0xFF00E676.toInt())
                textSize = 14f
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(8))
            })

            // 脚本路径输入
            addView(EditText(context).apply {
                hint = "脚本路径 (如 /sdcard/script.lua)"
                setTextColor(0xFFFFFFFF.toInt())
                setHintTextColor(0xFF888888.toInt())
                textSize = 12f
                setPadding(dpToPx(8), dpToPx(8), dpToPx(8), dpToPx(8))
                setBackgroundColor(0xFF1A1A2E.toInt())
                id = R.id.script_path
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(8))
            })

            addView(createButton("执行脚本") {
                val path = (expandedPanel?.findViewById<EditText>(R.id.script_path))?.text?.toString() ?: return@createButton
                if (path.isEmpty()) return@createButton
                val result = XeggBridge.nativeExecFile(path)
                scriptOutput = if (result) "执行完成" else "执行失败"
                updateScriptOutput()
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(4))
            })

            // 输出日志
            addView(ScrollView(context).apply {
                layoutParams = LinearLayout.LayoutParams(
                    LinearLayout.LayoutParams.MATCH_PARENT,
                    0, 1f
                )
                addView(TextView(context).apply {
                    id = R.id.script_output
                    text = scriptOutput.ifEmpty { "等待脚本执行..." }
                    setTextColor(0xFFCCCCCC.toInt())
                    textSize = 11f
                })
            })
        }
    }

    @SuppressLint("SetTextI18n")
    private fun updateScriptOutput() {
        val output = expandedPanel?.findViewById<TextView>(R.id.script_output)
        output?.text = scriptOutput
    }

    // --- 设置页 ---

    @SuppressLint("SetTextI18n")
    private fun createSettingsView(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dpToPx(12), dpToPx(12), dpToPx(12), dpToPx(12))

            addView(TextView(context).apply {
                text = "设置"
                setTextColor(0xFF00E676.toInt())
                textSize = 14f
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(12))
            })

            // 变速齿轮
            addView(TextView(context).apply {
                text = "变速齿轮"
                setTextColor(0xFFCCCCCC.toInt())
                textSize = 13f
            })

            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                addView(createButton("0.5x") { XeggBridge.nativeSetSpeed(0.5) })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dpToPx(4), 0) })
                addView(createButton("1x") { XeggBridge.nativeSetSpeed(1.0) })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dpToPx(4), 0) })
                addView(createButton("2x") { XeggBridge.nativeSetSpeed(2.0) })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dpToPx(4), 0) })
                addView(createButton("5x") { XeggBridge.nativeSetSpeed(5.0) })
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(12))
            })

            // 断开连接
            addView(createButton("断开连接") {
                XeggBridge.nativeDetach()
                val statusText = expandedPanel?.findViewById<TextView>(R.id.status_text)
                statusText?.text = "○ 未附加"
                statusText?.setTextColor(0xFFFF5252.toInt())
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(8))
            })

            // 清除结果
            addView(createButton("清除搜索结果") {
                XeggBridge.nativeClearResults()
                resultCount = 0
                updateResultDisplay()
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(8))
            })

            // 打开主界面
            addView(createButton("打开主界面") {
                val intent = Intent(this@OverlayService, MainActivity::class.java)
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                startActivity(intent)
            })

            addView(Space(context).apply {
                layoutParams = LinearLayout.LayoutParams(0, dpToPx(8))
            })

            // 停止悬浮窗
            addView(createButton("停止悬浮窗") {
                stopSelf()
            })
        }
    }

    // --- 工具方法 ---

    private fun createButton(text: String, onClick: () -> Unit): TextView {
        return TextView(this).apply {
            this.text = text
            setTextColor(0xFFFFFFFF.toInt())
            textSize = 12f
            setPadding(dpToPx(12), dpToPx(6), dpToPx(12), dpToPx(6))
            setBackgroundColor(0xFF16213E.toInt())
            setOnClickListener { onClick() }
        }
    }

    private fun createIconDrawable(): android.graphics.drawable.GradientDrawable {
        return android.graphics.drawable.GradientDrawable().apply {
            shape = android.graphics.drawable.GradientDrawable.OVAL
            setColor(0xFF00E676.toInt())
        }
    }

    private fun dpToPx(dp: Int): Int {
        return (dp * resources.displayMetrics.density).toInt()
    }

    private fun createNotificationChannel() {
        val channel = NotificationChannel(
            CHANNEL_ID, "XEGG 悬浮窗",
            NotificationManager.IMPORTANCE_LOW
        )
        val manager = getSystemService(NotificationManager::class.java)
        manager.createNotificationChannel(channel)
    }

    private fun createNotification(): Notification {
        val pendingIntent = PendingIntent.getActivity(
            this, 0,
            Intent(this, MainActivity::class.java),
            PendingIntent.FLAG_IMMUTABLE
        )
        return Notification.Builder(this, CHANNEL_ID)
            .setContentTitle("XEGG")
            .setContentText("悬浮窗运行中")
            .setSmallIcon(android.R.drawable.ic_menu_compass)
            .setContentIntent(pendingIntent)
            .build()
    }
}
