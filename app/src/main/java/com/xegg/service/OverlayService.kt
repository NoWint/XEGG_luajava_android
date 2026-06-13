package com.xegg.service

import android.annotation.SuppressLint
import android.app.*
import android.content.Intent
import android.graphics.PixelFormat
import android.graphics.Typeface
import android.os.IBinder
import android.view.*
import android.widget.*
import com.xegg.MainActivity
import com.xegg.bridge.XeggBridge
import com.xegg.R

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

    // 搜索状态
    private var searchValue = ""
    private var searchType = 2 // I32
    private var resultCount = 0
    private var savedItems = mutableListOf<SavedItem>()
    private var scriptOutput = ""

    // 颜色常量
    private val C_BG = 0xFF0A0A0F.toInt()
    private val C_SURFACE = 0xFF14141F.toInt()
    private val C_CARD = 0xFF1A1A28.toInt()
    private val C_ELEVATED = 0xFF222236.toInt()
    private val C_GREEN = 0xFF00FF88.toInt()
    private val C_CYAN = 0xFF00E5FF.toInt()
    private val C_RED = 0xFFFF1744.toInt()
    private val C_ORANGE = 0xFFFF9100.toInt()
    private val C_TEXT = 0xFFE8E8F0.toInt()
    private val C_TEXT2 = 0xFF8888AA.toInt()
    private val C_MUTED = 0xFF555577.toInt()

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

        val size = dp(44)
        val params = WindowManager.LayoutParams(
            size, size,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.TOP or Gravity.START
            x = 0
            y = 200
        }

        val icon = ImageView(this).apply {
            setImageDrawable(android.graphics.drawable.GradientDrawable().apply {
                shape = android.graphics.drawable.GradientDrawable.OVAL
                setColor(C_GREEN)
            })
            elevation = dp(6).toFloat()
        }

        var initialX = 0; var initialY = 0
        var initialTouchX = 0f; var initialTouchY = 0f
        var isDragging = false

        icon.setOnTouchListener { _, event ->
            when (event.action) {
                MotionEvent.ACTION_DOWN -> {
                    initialX = params.x; initialY = params.y
                    initialTouchX = event.rawX; initialTouchY = event.rawY
                    isDragging = false; true
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
                MotionEvent.ACTION_UP -> { if (!isDragging) togglePanel(); true }
                else -> false
            }
        }

        floatingIcon = icon
        windowManager?.addView(icon, params)
    }

    private fun removeFloatingIcon() {
        floatingIcon?.let { windowManager?.removeView(it); floatingIcon = null }
    }

    // --- 展开面板 ---

    @SuppressLint("ClickableViewAccessibility")
    private fun showExpandedPanel() {
        if (expandedPanel != null) return

        val w = dp(300); val h = dp(440)
        val params = WindowManager.LayoutParams(
            w, h,
            WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
            WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL,
            PixelFormat.TRANSLUCENT
        ).apply { gravity = Gravity.CENTER }

        val panel = createPanelView()

        val dragBar = panel.findViewWithTag<View>("drag")
        var ix = 0; var iy = 0; var itx = 0f; var ity = 0f
        dragBar.setOnTouchListener { _, event ->
            when (event.action) {
                MotionEvent.ACTION_DOWN -> { ix = params.x; iy = params.y; itx = event.rawX; ity = event.rawY; true }
                MotionEvent.ACTION_MOVE -> { params.x = ix + (event.rawX - itx).toInt(); params.y = iy + (event.rawY - ity).toInt(); windowManager?.updateViewLayout(panel, params); true }
                else -> false
            }
        }

        expandedPanel = panel
        windowManager?.addView(panel, params)
    }

    private fun removeExpandedPanel() {
        expandedPanel?.let { windowManager?.removeView(it); expandedPanel = null }
    }

    private fun togglePanel() {
        if (isExpanded) { removeExpandedPanel(); isExpanded = false }
        else { showExpandedPanel(); isExpanded = true }
    }

    // --- 面板 UI ---

    @SuppressLint("SetTextI18n")
    private fun createPanelView(): LinearLayout {
        val currentTab = intArrayOf(0)

        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setBackgroundColor(C_BG)
            // 圆角 + 边框
            background = android.graphics.drawable.GradientDrawable().apply {
                setColor(C_BG)
                cornerRadius = dp(12).toFloat()
                setStroke(dp(1), (C_GREEN and 0x00FFFFFF) or (0x30 shl 24))
            }

            // === 顶栏 ===
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                setBackgroundColor(C_SURFACE)
                setPadding(dp(10), dp(8), dp(10), dp(8))
                gravity = Gravity.CENTER_VERTICAL
                tag = "drag"

                // 拖拽指示条
                addView(View(context).apply {
                    setBackgroundColor(C_GREEN)
                    layoutParams = LinearLayout.LayoutParams(dp(20), dp(3))
                })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dp(8), 0) })
                addView(TextView(context).apply {
                    text = "XEGG"
                    setTextColor(C_GREEN)
                    textSize = 15f
                    typeface = Typeface.MONOSPACE
                    setTypeface(typeface, Typeface.BOLD)
                })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, 0, 1f) })
                addView(TextView(context).apply {
                    text = if (XeggBridge.nativeIsAttached()) "● ON" else "○ OFF"
                    setTextColor(if (XeggBridge.nativeIsAttached()) C_GREEN else C_RED)
                    textSize = 10f
                    typeface = Typeface.MONOSPACE
                    tag = "status"
                })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dp(8), 0) })
                addView(TextView(context).apply {
                    text = "✕"
                    setTextColor(C_TEXT2)
                    textSize = 16f
                    setPadding(dp(6), 0, dp(6), 0)
                    setOnClickListener { togglePanel() }
                })
            })

            // === Tab 栏 ===
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                setBackgroundColor(C_SURFACE)
                setPadding(0, 0, 0, dp(2))
                val tabBar = this
                listOf("搜索", "保存", "脚本", "设置").forEachIndexed { index, name ->
                    addView(TextView(context).apply {
                        text = name
                        setTextColor(if (index == 0) C_GREEN else C_MUTED)
                        textSize = 12f
                        typeface = Typeface.MONOSPACE
                        setPadding(dp(14), dp(6), dp(14), dp(6))
                        tag = "tab_$index"
                        setOnClickListener {
                            currentTab[0] = index
                            updateTabContent(tabBar, index)
                        }
                    })
                }
            })

            // === 内容区域 ===
            addView(FrameLayout(context).apply {
                id = R.id.content_area
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f)
                setBackgroundColor(C_BG)
                addView(createSearchView())
            })
        }
    }

    @SuppressLint("SetTextI18n")
    private fun updateTabContent(tabBar: LinearLayout, tabIndex: Int) {
        for (i in 0 until tabBar.childCount) {
            val tab = tabBar.getChildAt(i) as? TextView ?: continue
            tab.setTextColor(if (i == tabIndex) C_GREEN else C_MUTED)
        }
        val panel = expandedPanel as? LinearLayout ?: return
        val content = panel.findViewById<FrameLayout>(R.id.content_area)
        content.removeAllViews()
        when (tabIndex) {
            0 -> content.addView(createSearchView())
            1 -> content.addView(createSavedView())
            2 -> content.addView(createScriptView())
            3 -> content.addView(createSettingsView())
        }
    }

    // --- 搜索页 ---

    @SuppressLint("SetTextI18n")
    private fun createSearchView(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(10), dp(10), dp(10), dp(10))

            // 值输入
            addView(EditText(context).apply {
                hint = "输入搜索值"
                setTextColor(C_TEXT)
                setHintTextColor(C_MUTED)
                textSize = 13f
                typeface = Typeface.MONOSPACE
                setPadding(dp(8), dp(8), dp(8), dp(8))
                setBackgroundColor(C_CARD)
                id = R.id.search_input
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
            })

            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(6)) })

            // 类型选择
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                val types = listOf("I8","I16","I32","I64","U8","U16","U32","U64","F32","F64")
                types.forEachIndexed { index, name ->
                    addView(TextView(context).apply {
                        text = name
                        setTextColor(if (index == 2) C_GREEN else C_MUTED)
                        textSize = 10f
                        typeface = Typeface.MONOSPACE
                        setPadding(dp(5), dp(3), dp(5), dp(3))
                        setBackgroundColor(if (index == 2) (C_GREEN and 0x00FFFFFF or (0x18 shl 24)) else 0x00000000)
                        setOnClickListener {
                            searchType = index
                            (parent as? LinearLayout)?.let { bar ->
                                for (i in 0 until bar.childCount) {
                                    val tv = bar.getChildAt(i) as? TextView ?: continue
                                    tv.setTextColor(if (i == index) C_GREEN else C_MUTED)
                                    tv.setBackgroundColor(if (i == index) (C_GREEN and 0x00FFFFFF or (0x18 shl 24)) else 0x00000000)
                                }
                            }
                        }
                    })
                }
            })

            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(6)) })

            // 搜索按钮行
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                addView(neonBtn("精确") {
                    val input = (expandedPanel?.findViewById<EditText>(R.id.search_input))?.text?.toString() ?: return@neonBtn
                    if (input.isEmpty()) return@neonBtn
                    searchValue = input
                    resultCount = XeggBridge.nativeSearchNumber(input, searchType, -1)
                    updateResultDisplay()
                })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dp(4), 0) })
                addView(neonBtn("再次") {
                    val input = (expandedPanel?.findViewById<EditText>(R.id.search_input))?.text?.toString() ?: return@neonBtn
                    if (input.isEmpty()) return@neonBtn
                    searchValue = input
                    resultCount = XeggBridge.nativeRefineSearch(input)
                    updateResultDisplay()
                })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dp(4), 0) })
                addView(neonBtn("模糊") {
                    resultCount = XeggBridge.nativeFuzzySearch(0)
                    updateResultDisplay()
                })
            })

            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(6)) })

            addView(TextView(context).apply {
                id = R.id.result_text
                text = "结果: 0"
                setTextColor(C_GREEN)
                textSize = 12f
                typeface = Typeface.MONOSPACE
            })

            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(4)) })

            addView(ScrollView(context).apply {
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f)
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
        resultText?.text = "结果: $resultCount"

        val listInner = expandedPanel?.findViewById<LinearLayout>(R.id.result_list_inner)
        listInner?.removeAllViews()

        val showCount = minOf(resultCount, 50)
        for (i in 0 until showCount) {
            val addr = XeggBridge.nativeGetResultAddress(i)
            val valueBytes = XeggBridge.nativeGetResultValue(i)
            val valueStr = valueBytes?.let { String(it) } ?: "?"
            listInner?.addView(LinearLayout(this).apply {
                orientation = LinearLayout.HORIZONTAL
                setPadding(0, dp(2), 0, dp(2))
                addView(TextView(context).apply {
                    text = "0x${addr.toString(16)}"
                    setTextColor(C_TEXT2)
                    textSize = 10f
                    typeface = Typeface.MONOSPACE
                    layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
                })
                addView(TextView(context).apply {
                    text = valueStr
                    setTextColor(C_TEXT)
                    textSize = 10f
                    typeface = Typeface.MONOSPACE
                })
                addView(TextView(context).apply {
                    text = " +"
                    setTextColor(C_GREEN)
                    textSize = 12f
                    setOnClickListener {
                        savedItems.add(SavedItem(addr, valueStr, searchType))
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
            setPadding(dp(10), dp(10), dp(10), dp(10))

            addView(TextView(context).apply {
                text = "已保存 (${savedItems.size})"
                setTextColor(C_GREEN)
                textSize = 12f
                typeface = Typeface.MONOSPACE
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(6)) })
            addView(ScrollView(context).apply {
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f)
                addView(LinearLayout(context).apply {
                    orientation = LinearLayout.VERTICAL
                    savedItems.forEachIndexed { index, item ->
                        addView(LinearLayout(context).apply {
                            orientation = LinearLayout.HORIZONTAL
                            setPadding(0, dp(3), 0, dp(3)
                            )
                            addView(TextView(context).apply {
                                text = "0x${item.addr.toString(16)}"
                                setTextColor(C_TEXT2); textSize = 10f; typeface = Typeface.MONOSPACE
                                layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
                            })
                            addView(TextView(context).apply {
                                text = if (item.locked) "L" else "U"
                                setTextColor(if (item.locked) C_GREEN else C_MUTED)
                                textSize = 11f; typeface = Typeface.MONOSPACE
                                setPadding(dp(4), 0, dp(4), 0)
                                setOnClickListener { item.locked = !item.locked; text = if (item.locked) "L" else "U"; setTextColor(if (item.locked) C_GREEN else C_MUTED) }
                            })
                            addView(EditText(context).apply {
                                hint = item.value
                                setTextColor(C_TEXT); setHintTextColor(C_MUTED)
                                textSize = 11f; typeface = Typeface.MONOSPACE
                                maxWidth = dp(70)
                                setPadding(dp(4), 0, dp(4), 0)
                                setBackgroundColor(C_CARD)
                                setOnEditorActionListener { v, _, _ ->
                                    val nv = v.text.toString()
                                    if (nv.isNotEmpty()) {
                                        val bytes = nv.toByteArray()
                                        XeggBridge.nativeSetValue(item.addr, bytes)
                                        item.value = nv
                                    }
                                    true
                                }
                            })
                        })
                    }
                })
            })
        }
    }

    // --- 脚本页 ---

    @SuppressLint("SetTextI18n")
    private fun createScriptView(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(10), dp(10), dp(10), dp(10))

            addView(TextView(context).apply {
                text = "LUA SCRIPT"
                setTextColor(C_GREEN); textSize = 12f; typeface = Typeface.MONOSPACE
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(6)) })
            addView(EditText(context).apply {
                hint = "/sdcard/script.lua"
                setTextColor(C_TEXT); setHintTextColor(C_MUTED)
                textSize = 11f; typeface = Typeface.MONOSPACE
                setPadding(dp(8), dp(8), dp(8), dp(8))
                setBackgroundColor(C_CARD)
                id = R.id.script_path
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(6)) })
            addView(neonBtn("执行") {
                val path = (expandedPanel?.findViewById<EditText>(R.id.script_path))?.text?.toString() ?: return@neonBtn
                if (path.isEmpty()) return@neonBtn
                val success = XeggBridge.nativeExecFile(path)
                scriptOutput = if (success) "执行完成" else "执行失败"
                updateScriptOutput()
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(6)) })
            addView(ScrollView(context).apply {
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f)
                addView(TextView(context).apply {
                    id = R.id.script_output
                    text = scriptOutput.ifEmpty { "等待执行..." }
                    setTextColor(C_TEXT2); textSize = 10f; typeface = Typeface.MONOSPACE
                })
            })
        }
    }

    @SuppressLint("SetTextI18n")
    private fun updateScriptOutput() {
        expandedPanel?.findViewById<TextView>(R.id.script_output)?.text = scriptOutput
    }

    // --- 设置页 ---

    @SuppressLint("SetTextI18n")
    private fun createSettingsView(): LinearLayout {
        return LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            setPadding(dp(10), dp(10), dp(10), dp(10))

            addView(TextView(context).apply {
                text = "SPEED HACK"
                setTextColor(C_CYAN); textSize = 11f; typeface = Typeface.MONOSPACE
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(4)) })
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                listOf("0.5x", "1x", "2x", "5x").forEach { speed ->
                    addView(neonBtn(speed) {
                        val s = speed.removeSuffix("x").toDouble()
                        XeggBridge.nativeSetSpeed(s)
                    })
                    addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dp(4), 0) })
                }
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(12)) })
            addView(neonBtn("断开连接") {
                XeggBridge.nativeDetach()
                val st = expandedPanel?.findViewWithTag<TextView>("status")
                st?.text = "○ OFF"; st?.setTextColor(C_RED)
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(4)) })
            addView(neonBtn("清除结果") {
                XeggBridge.nativeClearResults()
                resultCount = 0
                updateResultDisplay()
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(4)) })
            addView(neonBtn("打开主界面") {
                startActivity(Intent(this@OverlayService, MainActivity::class.java).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(4)) })
            addView(neonBtn("停止悬浮窗") { stopSelf() })
        }
    }

    // --- 工具 ---

    private fun neonBtn(text: String, onClick: () -> Unit): TextView {
        return TextView(this).apply {
            this.text = text
            setTextColor(C_GREEN)
            textSize = 11f
            typeface = Typeface.MONOSPACE
            setPadding(dp(10), dp(5), dp(10), dp(5))
            background = android.graphics.drawable.GradientDrawable().apply {
                setColor(C_CARD)
                cornerRadius = dp(4).toFloat()
                setStroke(dp(1), (C_GREEN and 0x00FFFFFF) or (0x30 shl 24))
            }
            setOnClickListener { onClick() }
        }
    }

    private fun dp(dp: Int): Int = (dp * resources.displayMetrics.density).toInt()

    private fun createNotificationChannel() {
        val ch = NotificationChannel(CHANNEL_ID, "XEGG 悬浮窗", NotificationManager.IMPORTANCE_LOW)
        getSystemService(NotificationManager::class.java).createNotificationChannel(ch)
    }

    private fun createNotification(): Notification {
        val pi = PendingIntent.getActivity(this, 0,
            Intent(this, MainActivity::class.java), PendingIntent.FLAG_IMMUTABLE)
        return Notification.Builder(this, CHANNEL_ID)
            .setContentTitle("XEGG")
            .setContentText("悬浮窗运行中")
            .setSmallIcon(android.R.drawable.ic_menu_compass)
            .setContentIntent(pi)
            .build()
    }
}
