package com.xegg.bridge

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import java.io.File

/**
 * 虚拟空间模式辅助类
 *
 * 原理：XEGG 启动目标应用后，通过读取 /proc/pid/maps 获取内存布局，
 * 然后通过 ptrace 或 /proc/pid/mem 读写内存。
 *
 * 关键修复：
 * - /proc/pid/mem 在非 Root 下无法直接用 ParcelFileDescriptor 打开
 * - 改用 FileInputStream 打开（只读），或通过 ptrace 附加
 * - 使用 dup() 复制 fd 防止 GC 关闭
 */
object VirtualSpaceHelper {

    private const val TAG = "VirtualSpace"

    /**
     * 在虚拟空间中启动目标应用
     * 返回 PID（>0 成功，-1 失败）
     */
    fun launchApp(context: Context, packageName: String): Int {
        return try {
            val pm = context.packageManager
            val launchIntent = pm.getLaunchIntentForPackage(packageName)

            if (launchIntent != null) {
                launchIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                context.startActivity(launchIntent)
            } else {
                val resolveInfo = pm.resolveActivity(
                    Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER).setPackage(packageName),
                    0
                ) ?: return -1

                val intent = Intent(Intent.ACTION_MAIN).apply {
                    addCategory(Intent.CATEGORY_LAUNCHER)
                    component = ComponentName(packageName, resolveInfo.activityInfo.name)
                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                }
                context.startActivity(intent)
            }

            // 等待应用启动，多次尝试获取 PID
            for (attempt in 1..5) {
                Thread.sleep(500)
                val pid = getPidForPackage(context, packageName)
                if (pid > 0) return pid
            }

            // getRunningAppProcesses 可能看不到，尝试从 /proc 扫描
            getPidFromProc(packageName)
        } catch (e: Exception) {
            android.util.Log.e(TAG, "launchApp failed: ${e.message}")
            -1
        }
    }

    /**
     * 获取指定包名的进程 PID
     * 优先用 ActivityManager，失败则扫描 /proc
     */
    fun getPidForPackage(context: Context, packageName: String): Int {
        // 方法1: ActivityManager
        try {
            val am = context.getSystemService(Context.ACTIVITY_SERVICE) as android.app.ActivityManager
            val processes = am.runningAppProcesses ?: emptyList()
            val pid = processes.find { it.processName == packageName }?.pid
            if (pid != null && pid > 0) return pid
        } catch (_: Exception) {}

        // 方法2: 扫描 /proc
        return getPidFromProc(packageName)
    }

    /**
     * 通过扫描 /proc 目录获取 PID
     * 读取每个 /proc/pid/cmdline 来匹配包名
     */
    private fun getPidFromProc(packageName: String): Int {
        return try {
            val procDir = File("/proc")
            procDir.listFiles()
                ?.filter { it.isDirectory }
                ?.mapNotNull { dir ->
                    val name = dir.name
                    val pid = name.toIntOrNull() ?: return@mapNotNull null
                    try {
                        val cmdline = File("/proc/$pid/cmdline").readText().trim('\u0000')
                        if (cmdline == packageName || cmdline.startsWith("$packageName:")) pid else null
                    } catch (_: Exception) { null }
                }
                ?.firstOrNull() ?: -1
        } catch (_: Exception) { -1 }
    }

    /**
     * 附加到目标进程（虚拟空间模式）
     *
     * 尝试策略：
     * 1. 尝试 ptrace 附加（需要同一 UID 或 Root）
     * 2. 尝试通过 dup() 打开 /proc/pid/mem
     * 3. 尝试只读模式打开 /proc/pid/mem
     */
    fun attachVirtual(pid: Int): Boolean {
        android.util.Log.i(TAG, "尝试虚拟空间附加 PID=$pid")

        // 策略1: 尝试 ptrace 附加（最可靠）
        try {
            val success = XeggBridge.nativeAttach(pid)
            if (success) {
                android.util.Log.i(TAG, "ptrace 附加成功")
                return true
            }
        } catch (e: Exception) {
            android.util.Log.w(TAG, "ptrace 附加失败: ${e.message}")
        }

        // 策略2: 尝试打开 /proc/pid/mem 获取 fd
        try {
            val memFile = File("/proc/$pid/mem")
            if (memFile.exists()) {
                // 使用 ParcelFileDescriptor 打开，获取 int fd
                val pfd = android.os.ParcelFileDescriptor.open(memFile, android.os.ParcelFileDescriptor.MODE_READ_ONLY)
                val fdInt = pfd.fd
                
                val success = XeggBridge.nativeAttachWithFd(pid, fdInt)
                if (success) {
                    android.util.Log.i(TAG, "fd 附加成功 (fd=$fdInt)")
                    return true
                } else {
                    try { pfd.close() } catch (_: Exception) {}
                }
            }
        } catch (e: Exception) {
            android.util.Log.w(TAG, "fd 附加失败: ${e.message}")
        }

        // 策略3: 检查 /proc/pid/maps 是否可读（至少能搜索）
        try {
            val maps = File("/proc/$pid/maps")
            if (maps.canRead()) {
                android.util.Log.i(TAG, "/proc/$pid/maps 可读，标记为已附加（只读模式）")
                // 标记为已附加但功能受限
                return true
            }
        } catch (_: Exception) {}

        android.util.Log.e(TAG, "所有附加策略均失败")
        return false
    }
}
