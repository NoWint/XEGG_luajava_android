package com.xegg.bridge

import android.content.Context
import android.content.Intent
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
    private val javaObjects = mutableMapOf<Long, Any>()
    private var nextObjId = 1L

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

    /// newInstance - 通过反射创建 Java 对象实例
    fun newInstance(className: String, argsJson: String): Long {
        return try {
            val clazz = Class.forName(className)
            val args = parseArgsJson(argsJson)
            val argTypes = args.map { it?.javaClass }.toTypedArray()

            // 尝试精确匹配构造函数
            val constructor = try {
                clazz.getConstructor(*argTypes)
            } catch (_: Exception) {
                // 回退：尝试无参构造函数
                if (args.isEmpty()) {
                    clazz.getConstructor()
                } else {
                    // 尝试查找兼容的构造函数
                    clazz.constructors.firstOrNull { c ->
                        c.parameterCount == args.size
                    } ?: throw NoSuchMethodException("找不到匹配的构造函数")
                }
            }

            val instance = if (args.isEmpty() && constructor.parameterCount == 0) {
                constructor.newInstance()
            } else {
                constructor.newInstance(*args)
            }

            val objId = nextObjId++
            javaObjects[objId] = instance
            objId
        } catch (e: Exception) {
            android.util.Log.e("LuaJavaBridge", "newInstance failed: ${e.message}")
            -1L
        }
    }

    /// startActivity - 启动 Activity
    fun startActivity(className: String): Boolean {
        val ctx = context ?: return false
        return try {
            val intent = Intent()
            intent.setClassName(ctx, className)
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            ctx.startActivity(intent)
            true
        } catch (e: Exception) {
            android.util.Log.e("LuaJavaBridge", "startActivity failed: ${e.message}")
            false
        }
    }

    /// getContext - 获取 Context 是否可用
    fun getContext(): Boolean {
        return context != null
    }

    /// startThread - 在新线程中执行
    fun startThread(): Boolean {
        // 简单标记：实际线程管理需要更复杂的实现
        return true
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

    /// 解析参数 JSON 数组
    private fun parseArgsJson(argsJson: String): Array<Any?> {
        if (argsJson.isEmpty() || argsJson == "[]") return emptyArray()
        return try {
            val arr = org.json.JSONArray(argsJson)
            Array(arr.length()) { i ->
                when (val v = arr.get(i)) {
                    is org.json.JSONObject -> null // 复杂对象暂不支持
                    is org.json.JSONArray -> null
                    else -> v
                }
            }
        } catch (e: Exception) {
            emptyArray()
        }
    }

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
