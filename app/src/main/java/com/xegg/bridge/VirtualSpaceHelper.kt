package com.xegg.bridge

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.os.Process

/**
 * 虚拟空间模式辅助类
 *
 * 原理：通过 am start 以本进程的 UID 启动目标应用，
 * 目标应用会在独立进程中运行，但因为是本应用启动的，
 * 我们可以通过 /proc/pid/mem 读写其内存。
 *
 * 更简单的方案：直接用 ActivityManager 强制启动目标 App，
 * 然后通过 /proc/pid/mem 读取（同一用户下可读）。
 */
object VirtualSpaceHelper {

    /**
     * 在虚拟空间中启动目标应用
     *
     * 使用 am start 启动目标应用，然后获取其 PID
     * 返回 PID（>0 成功，-1 失败）
     */
    fun launchApp(context: Context, packageName: String): Int {
        return try {
            // 先获取目标应用的主 Activity
            val pm = context.packageManager
            val launchIntent = pm.getLaunchIntentForPackage(packageName)

            if (launchIntent != null) {
                // 添加 FLAG_ACTIVITY_NEW_TASK 使其在独立进程中运行
                launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                launchIntent.addFlags(Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED)
                context.startActivity(launchIntent)

                // 等待应用启动
                Thread.sleep(1500)

                // 获取目标应用的 PID
                getPidForPackage(context, packageName)
            } else {
                // 没有 launch intent，尝试用 am start
                amStart(context, packageName)
            }
        } catch (e: Exception) {
            android.util.Log.e("VirtualSpace", "launchApp failed: ${e.message}")
            -1
        }
    }

    /**
     * 通过 am start 启动应用
     */
    private fun amStart(context: Context, packageName: String): Int {
        return try {
            // 获取主 Activity 名
            val pm = context.packageManager
            val resolveInfo = pm.resolveActivity(
                Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER).setPackage(packageName),
                0
            )

            val activityName = resolveInfo?.activityInfo?.name ?: return -1

            val intent = Intent(Intent.ACTION_MAIN).apply {
                addCategory(Intent.CATEGORY_LAUNCHER)
                component = ComponentName(packageName, activityName)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            context.startActivity(intent)

            Thread.sleep(1500)
            getPidForPackage(context, packageName)
        } catch (e: Exception) {
            android.util.Log.e("VirtualSpace", "amStart failed: ${e.message}")
            -1
        }
    }

    /**
     * 获取指定包名的进程 PID
     */
    fun getPidForPackage(context: Context, packageName: String): Int {
        val am = context.getSystemService(Context.ACTIVITY_SERVICE) as android.app.ActivityManager
        val processes = am.runningAppProcesses ?: return -1
        return processes.find { it.processName == packageName }?.pid ?: -1
    }

    /**
     * 检查是否可以读取目标进程的内存
     * 同一用户下的进程可以互相读取 /proc/pid/mem
     */
    fun canReadMemory(pid: Int): Boolean {
        return try {
            val file = java.io.File("/proc/$pid/mem")
            file.canRead()
        } catch (e: Exception) {
            false
        }
    }

    /**
     * 直接附加到目标进程（虚拟空间模式）
     * 目标应用由 XEGG 启动，同一用户下可直接读写 /proc/pid/mem
     *
     * 返回 true 表示附加成功
     */
    fun attachVirtual(pid: Int): Boolean {
        return try {
            // 尝试直接打开 /proc/pid/mem
            // 在同一用户下，Android 允许读取
            val fd = android.os.ParcelFileDescriptor.open(
                java.io.File("/proc/$pid/mem"),
                android.os.ParcelFileDescriptor.MODE_READ_WRITE
            )
            val fdInt = fd.fd
            // 通过 JNI 附加
            val success = XeggBridge.nativeAttachWithFd(pid, fdInt)
            if (!success) {
                fd.close()
            }
            success
        } catch (e: Exception) {
            android.util.Log.e("VirtualSpace", "attachVirtual failed: ${e.message}")
            // 如果直接打开失败，尝试 ptrace 方式
            try {
                XeggBridge.nativeAttach(pid)
            } catch (e2: Exception) {
                false
            }
        }
    }
}
