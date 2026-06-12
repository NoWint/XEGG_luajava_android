package com.xegg.bridge

import android.app.AlertDialog
import android.content.Context
import android.widget.Toast

/**
 * Lua 脚本 UI 回调
 *
 * 当 Lua 脚本调用 gg.alert/gg.toast/gg.choice/gg.input 时，
 * Rust 核心通过 JNI 回调到此对象来显示 UI。
 */
class ScriptCallback(private val context: Context) {

    fun onAlert(msg: String): Int {
        var result = 0
        val latch = java.util.concurrent.CountDownLatch(1)

        (context as? android.app.Activity)?.runOnUiThread {
            AlertDialog.Builder(context)
                .setMessage(msg)
                .setPositiveButton("确定") { _, _ ->
                    result = 0
                    latch.countDown()
                }
                .setOnCancelListener {
                    result = -1
                    latch.countDown()
                }
                .show()
        } ?: run { latch.countDown() }

        latch.await(30, java.util.concurrent.TimeUnit.SECONDS)
        return result
    }

    fun onToast(msg: String) {
        (context as? android.app.Activity)?.runOnUiThread {
            Toast.makeText(context, msg, Toast.LENGTH_SHORT).show()
        }
    }

    fun onChoice(items: Array<String>): Int {
        var result = 0
        val latch = java.util.concurrent.CountDownLatch(1)

        (context as? android.app.Activity)?.runOnUiThread {
            AlertDialog.Builder(context)
                .setItems(items) { _, which ->
                    result = which + 1  // GG 返回 1-based 索引
                    latch.countDown()
                }
                .setOnCancelListener {
                    result = 0
                    latch.countDown()
                }
                .show()
        } ?: run { latch.countDown() }

        latch.await(30, java.util.concurrent.TimeUnit.SECONDS)
        return result
    }

    fun onInput(prompt: String): String? {
        var result: String? = null
        val latch = java.util.concurrent.CountDownLatch(1)

        (context as? android.app.Activity)?.runOnUiThread {
            val input = android.widget.EditText(context)
            AlertDialog.Builder(context)
                .setMessage(prompt)
                .setView(input)
                .setPositiveButton("确定") { _, _ ->
                    result = input.text.toString()
                    latch.countDown()
                }
                .setNegativeButton("取消") { _, _ ->
                    result = null
                    latch.countDown()
                }
                .setOnCancelListener {
                    result = null
                    latch.countDown()
                }
                .show()
        } ?: run { latch.countDown() }

        latch.await(30, java.util.concurrent.TimeUnit.SECONDS)
        return result
    }
}
