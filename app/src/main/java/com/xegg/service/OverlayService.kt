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

    // MD3 颜色 (深色主题)
    private val CPrimary = 0xFF5DDBB2.toInt()       // Green80
    private val COnPrimary = 0xFF002112.toInt()      // Green10
    private val CPrimaryContainer = 0xFF005037.toInt() // Green30
    private val COnPrimaryContainer = 0xFF82F7CD.toInt() // Green90
    private val CSurface = 0xFF1A1C19.toInt()        // Neutral10
    private val CSurfaceContainer = 0xFF1D1F1B.toInt() // NeutralVariant10
    private val CSurfaceHigh = 0xFF2F312D.toInt()    // Neutral20
    private val COnSurface = 0xFFE2E1DC.toInt()      // Neutral90
    private val COnSurfaceVariant = 0xFFC8C9C2.toInt() // NeutralVariant80
    private val COutline = 0xFF787A74.toInt()        // NeutralVariant50
    private val COutlineVariant = 0xFF494B45.toInt() // NeutralVariant30
    private val CError = 0xFFFFB4AB.toInt()          // Red80
    private val COnError = 0xFF410002.toInt()        // Red10

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

        val size = dp(48)
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

        // MD3 FAB 风格：圆角方形 + primary 色
        val icon = ImageView(this).apply {
            setImageDrawable(android.graphics.drawable.GradientDrawable().apply {
                shape = android.graphics.drawable.GradientDrawable.RECTANGLE
                cornerRadius = dp(14).toFloat()
                setColor(CPrimaryContainer)
                setStroke(dp(1), COutlineVariant)
            })
            elevation = dp(3).toFloat()
            setPadding(dp(10), dp(10), dp(10), dp(10))
            setImageResource(android.R.drawable.ic_menu_search)
            setColorFilter(COnPrimaryContainer)
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

        val w = dp(320); val h = dp(480)
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
            background = android.graphics.drawable.GradientDrawable().apply {
                setColor(CSurface)
                cornerRadius = dp(16).toFloat()
                setStroke(dp(1), COutlineVariant)
            }
            clipToOutline = true

            // === 顶栏 (MD3 TopAppBar 风格) ===
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                setBackgroundColor(CSurfaceContainer)
                setPadding(dp(8), dp(12), dp(8), dp(12))
                gravity = Gravity.CENTER_VERTICAL
                tag = "drag"

                addView(TextView(context).apply {
                    text = "XEGG"
                    setTextColor(CPrimary)
                    textSize = 18f
                    setTypeface(typeface, Typeface.BOLD)
                    setPadding(dp(8), 0, dp(8), 0)
                })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, 0, 1f) })
                addView(TextView(context).apply {
                    text = if (XeggBridge.nativeIsAttached()) "已连接" else "未连接"
                    setTextColor(if (XeggBridge.nativeIsAttached()) CPrimary else CError)
                    textSize = 12f
                    tag = "status"
                    setPadding(dp(8), dp(4), dp(8), dp(4))
                    background = android.graphics.drawable.GradientDrawable().apply {
                        setColor(if (XeggBridge.nativeIsAttached()) CPrimaryContainer else CError.copy(alpha = 0.15f))
                        cornerRadius = dp(8).toFloat()
                    }
                })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dp(8), 0) })
                addView(TextView(context).apply {
                    text = "X"
                    setTextColor(COnSurfaceVariant)
                    textSize = 16f
                    setPadding(dp(8), 0, dp(8), 0)
                    setOnClickListener { togglePanel() }
                })
            })

            // === Tab 栏 (MD3 SecondaryTabRow 风格) ===
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                setBackgroundColor(CSurfaceContainer)
                setPadding(dp(4), 0, dp(4), dp(4))
                val tabBar = this
                listOf("搜索", "保存", "脚本", "设置").forEachIndexed { index, name ->
                    addView(TextView(context).apply {
                        text = name
                        setTextColor(if (index == 0) CPrimary else COnSurfaceVariant)
                        textSize = 13f
                        setPadding(dp(12), dp(8), dp(12), dp(8))
                        tag = "tab_$index"
                        background = if (index == 0) android.graphics.drawable.GradientDrawable().apply {
                            setColor(CPrimaryContainer)
                            cornerRadius = dp(8).toFloat()
                        } else null
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
                setBackgroundColor(CSurface)
                addView(createSearchView())
            })
        }
    }

    @SuppressLint("SetTextI18n")
    private fun updateTabContent(tabBar: LinearLayout, tabIndex: Int) {
        for (i in 0 until tabBar.childCount) {
            val tab = tabBar.getChildAt(i) as? TextView ?: continue
            tab.setTextColor(if (i == tabIndex) CPrimary else COnSurfaceVariant)
            tab.background = if (i == tabIndex) android.graphics.drawable.GradientDrawable().apply {
                setColor(CPrimaryContainer)
                cornerRadius = dp(8).toFloat()
            } else null
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
            setPadding(dp(12), dp(12), dp(12), dp(12))

            // 值输入
            addView(EditText(context).apply {
                hint = "输入搜索值"
                setTextColor(COnSurface)
                setHintTextColor(COutline)
                textSize = 14f
                setPadding(dp(12), dp(12), dp(12), dp(12))
                background = android.graphics.drawable.GradientDrawable().apply {
                    setColor(CSurfaceContainer)
                    cornerRadius = dp(12).toFloat()
                    setStroke(dp(1), COutlineVariant)
                }
                id = R.id.search_input
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT)
            })

            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(8)) })

            // 类型选择
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                val types = listOf("I8","I16","I32","I64","U8","U16","U32","U64","F32","F64")
                types.forEachIndexed { index, name ->
                    addView(TextView(context).apply {
                        text = name
                        setTextColor(if (index == 2) COnPrimaryContainer else COnSurfaceVariant)
                        textSize = 11f
                        setPadding(dp(6), dp(4), dp(6), dp(4))
                        background = if (index == 2) android.graphics.drawable.GradientDrawable().apply {
                            setColor(CPrimaryContainer)
                            cornerRadius = dp(6).toFloat()
                        } else null
                        setOnClickListener {
                            searchType = index
                            (parent as? LinearLayout)?.let { bar ->
                                for (i in 0 until bar.childCount) {
                                    val tv = bar.getChildAt(i) as? TextView ?: continue
                                    tv.setTextColor(if (i == index) COnPrimaryContainer else COnSurfaceVariant)
                                    tv.background = if (i == index) android.graphics.drawable.GradientDrawable().apply {
                                        setColor(CPrimaryContainer)
                                        cornerRadius = dp(6).toFloat()
                                    } else null
                                }
                            }
                        }
                    })
                }
            })

            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(8)) })

            // 搜索按钮行
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                addView(md3Btn("精确搜索") {
                    val input = (expandedPanel?.findViewById<EditText>(R.id.search_input))?.text?.toString() ?: return@md3Btn
                    if (input.isEmpty()) return@md3Btn
                    searchValue = input
                    resultCount = XeggBridge.nativeSearchNumber(input, searchType, -1)
                    updateResultDisplay()
                })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dp(6), 0) })
                addView(md3OutlinedBtn("再次") {
                    val input = (expandedPanel?.findViewById<EditText>(R.id.search_input))?.text?.toString() ?: return@md3OutlinedBtn
                    if (input.isEmpty()) return@md3OutlinedBtn
                    searchValue = input
                    resultCount = XeggBridge.nativeRefineSearch(input)
                    updateResultDisplay()
                })
                addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dp(6), 0) })
                addView(md3OutlinedBtn("模糊") {
                    resultCount = XeggBridge.nativeFuzzySearch(0)
                    updateResultDisplay()
                })
            })

            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(8)) })

            addView(TextView(context).apply {
                id = R.id.result_text
                text = "找到 0 个结果"
                setTextColor(CPrimary)
                textSize = 13f
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
        resultText?.text = "找到 $resultCount 个结果"

        val listInner = expandedPanel?.findViewById<LinearLayout>(R.id.result_list_inner)
        listInner?.removeAllViews()

        val showCount = minOf(resultCount, 50)
        for (i in 0 until showCount) {
            val addr = XeggBridge.nativeGetResultAddress(i)
            val valueBytes = XeggBridge.nativeGetResultValue(i)
            val valueStr = valueBytes?.let { String(it) } ?: "?"
            listInner?.addView(LinearLayout(this).apply {
                orientation = LinearLayout.HORIZONTAL
                setPadding(0, dp(4), 0, dp(4))
                addView(TextView(context).apply {
                    text = "0x${addr.toString(16)}"
                    setTextColor(COnSurfaceVariant)
                    textSize = 12f
                    layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
                })
                addView(TextView(context).apply {
                    text = valueStr
                    setTextColor(COnSurface)
                    textSize = 12f
                })
                addView(TextView(context).apply {
                    text = "  +"
                    setTextColor(CPrimary)
                    textSize = 14f
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
            setPadding(dp(12), dp(12), dp(12), dp(12))

            addView(TextView(context).apply {
                text = "已保存 (${savedItems.size})"
                setTextColor(CPrimary)
                textSize = 14f
                setTypeface(typeface, Typeface.BOLD)
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(8)) })
            addView(ScrollView(context).apply {
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f)
                addView(LinearLayout(context).apply {
                    orientation = LinearLayout.VERTICAL
                    savedItems.forEachIndexed { index, item ->
                        addView(LinearLayout(context).apply {
                            orientation = LinearLayout.HORIZONTAL
                            setPadding(dp(8), dp(6), dp(8), dp(6)
                            )
                            background = android.graphics.drawable.GradientDrawable().apply {
                                setColor(CSurfaceContainer)
                                cornerRadius = dp(8).toFloat()
                            }
                            addView(TextView(context).apply {
                                text = "0x${item.addr.toString(16)}"
                                setTextColor(COnSurfaceVariant); textSize = 12f
                                layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.WRAP_CONTENT, 1f)
                            })
                            addView(TextView(context).apply {
                                text = if (item.locked) "锁定" else "解锁"
                                setTextColor(if (item.locked) CPrimary else COutline)
                                textSize = 11f
                                setPadding(dp(6), dp(2), dp(6), dp(2))
                                background = android.graphics.drawable.GradientDrawable().apply {
                                    setColor(if (item.locked) CPrimaryContainer else CSurfaceHigh)
                                    cornerRadius = dp(4).toFloat()
                                }
                                setOnClickListener {
                                    item.locked = !item.locked
                                    text = if (item.locked) "锁定" else "解锁"
                                    setTextColor(if (item.locked) CPrimary else COutline)
                                    background = android.graphics.drawable.GradientDrawable().apply {
                                        setColor(if (item.locked) CPrimaryContainer else CSurfaceHigh)
                                        cornerRadius = dp(4).toFloat()
                                    }
                                }
                            })
                            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dp(6), 0) })
                            addView(EditText(context).apply {
                                hint = item.value
                                setTextColor(COnSurface); setHintTextColor(COutline)
                                textSize = 12f
                                maxWidth = dp(70)
                                setPadding(dp(6), dp(2), dp(6), dp(2))
                                background = android.graphics.drawable.GradientDrawable().apply {
                                    setColor(CSurfaceHigh)
                                    cornerRadius = dp(4).toFloat()
                                }
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
                        addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(4)) })
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
            setPadding(dp(12), dp(12), dp(12), dp(12))

            addView(TextView(context).apply {
                text = "Lua 脚本"
                setTextColor(CPrimary); textSize = 14f; setTypeface(typeface, Typeface.BOLD)
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(8)) })
            addView(EditText(context).apply {
                hint = "/sdcard/script.lua"
                setTextColor(COnSurface); setHintTextColor(COutline)
                textSize = 13f
                setPadding(dp(12), dp(10), dp(12), dp(10))
                background = android.graphics.drawable.GradientDrawable().apply {
                    setColor(CSurfaceContainer)
                    cornerRadius = dp(12).toFloat()
                    setStroke(dp(1), COutlineVariant)
                }
                id = R.id.script_path
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(8)) })
            addView(md3Btn("执行脚本") {
                val path = (expandedPanel?.findViewById<EditText>(R.id.script_path))?.text?.toString() ?: return@md3Btn
                if (path.isEmpty()) return@md3Btn
                val success = XeggBridge.nativeExecFile(path)
                scriptOutput = if (success) "执行完成" else "执行失败"
                updateScriptOutput()
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(8)) })
            addView(ScrollView(context).apply {
                layoutParams = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f)
                addView(TextView(context).apply {
                    id = R.id.script_output
                    text = scriptOutput.ifEmpty { "等待执行..." }
                    setTextColor(COnSurfaceVariant); textSize = 12f
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
            setPadding(dp(12), dp(12), dp(12), dp(12))

            addView(TextView(context).apply {
                text = "变速齿轮"
                setTextColor(CPrimary); textSize = 14f; setTypeface(typeface, Typeface.BOLD)
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(8)) })
            addView(LinearLayout(context).apply {
                orientation = LinearLayout.HORIZONTAL
                listOf("0.5x", "1x", "2x", "5x").forEach { speed ->
                    addView(md3OutlinedBtn(speed) {
                        val s = speed.removeSuffix("x").toDouble()
                        XeggBridge.nativeSetSpeed(s)
                    })
                    addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(dp(6), 0) })
                }
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(16)) })
            addView(md3OutlinedBtn("断开连接") {
                XeggBridge.nativeDetach()
                val st = expandedPanel?.findViewWithTag<TextView>("status")
                st?.text = "未连接"; st?.setTextColor(CError)
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(6)) })
            addView(md3OutlinedBtn("清除结果") {
                XeggBridge.nativeClearResults()
                resultCount = 0
                updateResultDisplay()
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(6)) })
            addView(md3OutlinedBtn("打开主界面") {
                startActivity(Intent(this@OverlayService, MainActivity::class.java).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
            })
            addView(Space(context).apply { layoutParams = LinearLayout.LayoutParams(0, dp(6)) })
            addView(md3OutlinedBtn("停止悬浮窗") { stopSelf() })
        }
    }

    // --- MD3 风格按钮 ---

    private fun md3Btn(text: String, onClick: () -> Unit): TextView {
        return TextView(this).apply {
            this.text = text
            setTextColor(COnPrimary)
            textSize = 13f
            setPadding(dp(16), dp(8), dp(16), dp(8))
            background = android.graphics.drawable.GradientDrawable().apply {
                setColor(CPrimary)
                cornerRadius = dp(20).toFloat()
            }
            setOnClickListener { onClick() }
        }
    }

    private fun md3OutlinedBtn(text: String, onClick: () -> Unit): TextView {
        return TextView(this).apply {
            this.text = text
            setTextColor(CPrimary)
            textSize = 13f
            setPadding(dp(12), dp(6), dp(12), dp(6))
            background = android.graphics.drawable.GradientDrawable().apply {
                setColor(0x00000000)
                cornerRadius = dp(20).toFloat()
                setStroke(dp(1), COutline)
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

    private fun Int.copy(alpha: Float): Int {
        val a = (255 * alpha).toInt().coerceIn(0, 255)
        return (this and 0x00FFFFFF) or (a shl 24)
    }
}
