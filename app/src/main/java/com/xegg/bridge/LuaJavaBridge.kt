package com.xegg.bridge

import android.content.Context
import android.text.Editable
import android.view.View
import android.view.ViewGroup
import android.widget.*

/**
 * luajava 桥接实现
 *
 * 由 Rust Lua 引擎通过 JNI 回调，实现 luajava 的 Android UI 操作。
 * 包括 loadLayout、bindClass、createProxy、startThread 等。
 */
object LuaJavaBridge {

    private var context: Context? = null
    private val views = mutableMapOf<Int, View>()
    private var nextViewId = 1

    fun init(context: Context) {
        this.context = context.applicationContext
    }

    /// bindClass - 返回类的元信息
    fun bindClass(className: String): String {
        return try {
            val clazz = Class.forName(className)
            clazz.simpleName
        } catch (e: Exception) {
            "ERROR:${e.message}"
        }
    }

    /// loadLayout - 从 Lua 表描述创建 Android 布局
    /// layoutJson 是 JSON 格式的布局描述
    fun loadLayout(layoutJson: String): Int {
        val ctx = context ?: return -1

        return try {
            // 解析 JSON 布局描述并创建视图
            val json = org.json.JSONObject(layoutJson)
            val view = createViewFromJson(ctx, json)

            val id = nextViewId++
            views[id] = view
            view.id = id
            id
        } catch (e: Exception) {
            android.util.Log.e("LuaJavaBridge", "loadLayout failed: ${e.message}")
            -1
        }
    }

    /// findViewById - 获取已创建的视图
    fun findViewById(id: Int): Any? {
        return views[id]
    }

    /// setViewProperty - 设置视图属性
    fun setViewProperty(viewId: Int, prop: String, value: String): Boolean {
        val view = views[viewId] ?: return false
        return try {
            when (prop) {
                "text" -> (view as? TextView)?.text = value
                "visibility" -> view.visibility = when (value) {
                    "gone" -> View.GONE
                    "invisible" -> View.INVISIBLE
                    else -> View.VISIBLE
                }
                "backgroundColor" -> {
                    val color = android.graphics.Color.parseColor(value)
                    view.setBackgroundColor(color)
                }
                "width" -> {
                    val params = view.layoutParams
                    params?.width = value.toIntOrNull() ?: params?.width ?: 0
                    view.layoutParams = params
                }
                "height" -> {
                    val params = view.layoutParams
                    params?.height = value.toIntOrNull() ?: params?.height ?: 0
                    view.layoutParams = params
                }
                else -> {
                    android.util.Log.w("LuaJavaBridge", "Unknown property: $prop")
                    return false
                }
            }
            true
        } catch (e: Exception) {
            false
        }
    }

    /// getViewProperty - 获取视图属性
    fun getViewProperty(viewId: Int, prop: String): String {
        val view = views[viewId] ?: return ""
        return when (prop) {
            "text" -> (view as? TextView)?.text?.toString() ?: ""
            "visibility" -> when (view.visibility) {
                View.GONE -> "gone"
                View.INVISIBLE -> "invisible"
                else -> "visible"
            }
            "width" -> view.width.toString()
            "height" -> view.height.toString()
            "x" -> view.x.toString()
            "y" -> view.y.toString()
            else -> ""
        }
    }

    /// removeView - 移除视图
    fun removeView(viewId: Int) {
        views.remove(viewId)
    }

    /// startThread - 在新线程中执行
    fun startThread(runnable: Runnable) {
        Thread(runnable).start()
    }

    /// getContext - 获取 Context
    fun getContext(): Context? = context

    /// 从 JSON 创建视图
    private fun createViewFromJson(ctx: Context, json: org.json.JSONObject): View {
        val type = json.optString("type", "LinearLayout")
        val view = when (type) {
            "LinearLayout" -> LinearLayout(ctx).apply {
                orientation = if (json.optString("orientation") == "horizontal")
                    LinearLayout.HORIZONTAL else LinearLayout.VERTICAL
            }
            "TextView" -> TextView(ctx).apply {
                text = json.optString("text", "")
                textSize = json.optDouble("textSize", 14.0).toFloat()
                val textColor = json.optString("textColor", "")
                if (textColor.isNotEmpty()) setTextColor(android.graphics.Color.parseColor(textColor))
            }
            "Button" -> Button(ctx).apply {
                text = json.optString("text", "Button")
                textSize = json.optDouble("textSize", 14.0).toFloat()
            }
            "EditText" -> EditText(ctx).apply {
                hint = json.optString("hint", "")
                val txt = json.optString("text", "")
                if (txt.isNotEmpty()) setText(txt)
            }
            "CheckBox" -> CheckBox(ctx).apply {
                text = json.optString("text", "")
                isChecked = json.optBoolean("checked", false)
            }
            "Switch" -> Switch(ctx).apply {
                text = json.optString("text", "")
                isChecked = json.optBoolean("checked", false)
            }
            "SeekBar" -> SeekBar(ctx).apply {
                max = json.optInt("max", 100)
                progress = json.optInt("progress", 0)
            }
            "ScrollView" -> ScrollView(ctx)
            "HorizontalScrollView" -> HorizontalScrollView(ctx)
            "FrameLayout" -> FrameLayout(ctx)
            "RelativeLayout" -> RelativeLayout(ctx)
            "ImageView" -> ImageView(ctx)
            else -> LinearLayout(ctx)
        }

        // 处理子视图
        val children = json.optJSONArray("children")
        if (children != null && view is ViewGroup) {
            for (i in 0 until children.length()) {
                val childJson = children.getJSONObject(i)
                val childView = createViewFromJson(ctx, childJson)
                val params = LinearLayout.LayoutParams(
                    json.optInt("childWidth", LinearLayout.LayoutParams.WRAP_CONTENT),
                    json.optInt("childHeight", LinearLayout.LayoutParams.WRAP_CONTENT)
                )
                params.setMargins(8, 4, 8, 4)
                view.addView(childView, params)
            }
        }

        // 设置通用属性
        val padding = json.optInt("padding", 0)
        if (padding > 0) view.setPadding(padding, padding, padding, padding)

        val bgColor = json.optString("backgroundColor", "")
        if (bgColor.isNotEmpty()) {
            view.setBackgroundColor(android.graphics.Color.parseColor(bgColor))
        }

        return view
    }
}
