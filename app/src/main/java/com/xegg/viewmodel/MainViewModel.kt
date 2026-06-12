package com.xegg.viewmodel

import android.app.ActivityManager
import android.content.Context
import android.content.pm.PackageManager
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.xegg.bridge.ShizukuHelper
import com.xegg.bridge.VirtualSpaceHelper
import com.xegg.bridge.XeggBridge
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch

data class RunningApp(
    val packageName: String,
    val label: String,
    val pid: Int,  // -1 表示未运行
)

data class AppState(
    val isAttached: Boolean = false,
    val targetPackage: String = "",
    val targetPid: Int = -1,
    val regionCount: Int = 0,
    val runningApps: List<RunningApp> = emptyList(),
    val isLoading: Boolean = false,
    val accessMode: Int = 0, // 0=未附加, 1=Root, 2=VirtualSpace, 3=Shizuku
    val shizukuAvailable: Boolean = false,
    val isRooted: Boolean = false,
    val statusMessage: String = "",
)

class MainViewModel : ViewModel() {

    private val _state = MutableStateFlow(AppState())
    val state: StateFlow<AppState> = _state

    /// 初始化：检测设备状态 + 自动加载应用列表
    fun init(context: Context) {
        val rooted = java.io.File("/system/bin/su").exists()
                || java.io.File("/system/xbin/su").exists()
        val shizuku = ShizukuHelper.isAvailable()

        _state.value = _state.value.copy(
            isRooted = rooted,
            shizukuAvailable = shizuku,
            statusMessage = when {
                rooted -> "Root 模式"
                shizuku -> "Shizuku 模式"
                else -> "虚拟空间模式"
            }
        )

        refreshApps(context)
    }

    /// 刷新应用列表
    fun refreshApps(context: Context) {
        viewModelScope.launch(Dispatchers.IO) {
            _state.value = _state.value.copy(isLoading = true)

            val apps = when {
                _state.value.isRooted -> {
                    // Root 模式：获取运行中进程
                    getRunningAppsWithPid(context)
                }
                _state.value.shizukuAvailable -> {
                    // Shizuku 模式：通过 shell 获取进程列表
                    getAppsFromShizuku(context)
                }
                else -> {
                    // 虚拟空间模式：列出所有已安装应用（用户点击后启动）
                    getInstalledApps(context)
                }
            }

            _state.value = _state.value.copy(
                runningApps = apps,
                isLoading = false,
            )
        }
    }

    /// 附加到目标进程（自动选择模式）
    fun attach(context: Context, packageName: String) {
        when {
            _state.value.isRooted -> {
                val pid = getPidForPackage(context, packageName)
                if (pid > 0) {
                    val success = XeggBridge.nativeAttach(pid)
                    _state.value = _state.value.copy(
                        isAttached = success,
                        targetPackage = if (success) packageName else "",
                        targetPid = if (success) pid else -1,
                        regionCount = if (success) XeggBridge.nativeGetRegionCount() else 0,
                        accessMode = if (success) 1 else 0,
                        statusMessage = if (success) "已附加: $packageName" else "附加失败",
                    )
                } else {
                    _state.value = _state.value.copy(statusMessage = "目标应用未运行")
                }
            }
            _state.value.shizukuAvailable -> {
                val pid = getPidForPackage(context, packageName)
                if (pid > 0) {
                    val success = attachViaShizukuInternal(pid)
                    _state.value = _state.value.copy(
                        isAttached = success,
                        targetPackage = if (success) packageName else "",
                        targetPid = if (success) pid else -1,
                        regionCount = if (success) XeggBridge.nativeGetRegionCount() else 0,
                        accessMode = if (success) 3 else 0,
                        statusMessage = if (success) "已附加: $packageName" else "附加失败",
                    )
                }
            }
            else -> {
                // 虚拟空间模式：启动目标 App 并附加
                attachViaVirtualSpace(context, packageName)
            }
        }
    }

    /// 通过 PID 附加
    fun attachByPid(context: Context, pid: Int) {
        val success = when {
            _state.value.isRooted -> XeggBridge.nativeAttach(pid)
            _state.value.shizukuAvailable -> attachViaShizukuInternal(pid)
            else -> VirtualSpaceHelper.attachVirtual(pid)
        }

        _state.value = _state.value.copy(
            isAttached = success,
            targetPid = if (success) pid else -1,
            targetPackage = if (success) "PID $pid" else "",
            regionCount = if (success) XeggBridge.nativeGetRegionCount() else 0,
            accessMode = when {
                !success -> 0
                _state.value.isRooted -> 1
                _state.value.shizukuAvailable -> 3
                else -> 2
            },
            statusMessage = if (success) "已附加: PID $pid" else "附加失败",
        )
    }

    /// 断开连接
    fun detach() {
        XeggBridge.nativeDetach()
        _state.value = _state.value.copy(
            isAttached = false,
            targetPackage = "",
            targetPid = -1,
            regionCount = 0,
            accessMode = 0,
            statusMessage = "已断开",
        )
    }

    // --- 内部方法 ---

    /// 虚拟空间模式：启动目标 App 并附加
    private fun attachViaVirtualSpace(context: Context, packageName: String) {
        viewModelScope.launch(Dispatchers.IO) {
            _state.value = _state.value.copy(isLoading = true, statusMessage = "正在启动 $packageName ...")

            val pid = VirtualSpaceHelper.launchApp(context, packageName)

            if (pid <= 0) {
                _state.value = _state.value.copy(
                    isLoading = false,
                    statusMessage = "启动失败"
                )
                return@launch
            }

            val success = VirtualSpaceHelper.attachVirtual(pid)

            _state.value = _state.value.copy(
                isLoading = false,
                isAttached = success,
                targetPackage = if (success) packageName else "",
                targetPid = if (success) pid else -1,
                regionCount = if (success) XeggBridge.nativeGetRegionCount() else 0,
                accessMode = if (success) 2 else 0,
                statusMessage = if (success) "已附加: $packageName (虚拟空间)" else "附加失败",
            )
        }
    }

    private fun attachViaShizukuInternal(pid: Int): Boolean {
        val fd = ShizukuHelper.openProcMem(pid)
        return when {
            fd >= 0 -> XeggBridge.nativeAttachWithFd(pid, fd)
            fd == -2 -> true // 命令模式
            else -> false
        }
    }

    /// 获取所有已安装应用（虚拟空间模式用）
    /// 不需要特殊权限，PackageManager 就能获取
    private fun getInstalledApps(context: Context): List<RunningApp> {
        val pm = context.packageManager
        val myPackage = context.packageName

        // 先尝试只显示用户应用
        val userApps = pm.getInstalledApplications(PackageManager.GET_META_DATA)
            .filter { it.packageName != myPackage }
            .filter { it.flags and android.content.pm.ApplicationInfo.FLAG_SYSTEM == 0 }
            .filter { pm.getLaunchIntentForPackage(it.packageName) != null }
            .map { appInfo ->
                val label = pm.getApplicationLabel(appInfo).toString()
                val pid = getPidForPackage(context, appInfo.packageName)
                RunningApp(appInfo.packageName, label, pid)
            }
            .sortedBy { it.label.lowercase() }

        if (userApps.isNotEmpty()) return userApps

        // 回退：显示所有有启动入口的应用（包括系统应用）
        return pm.getInstalledApplications(PackageManager.GET_META_DATA)
            .filter { it.packageName != myPackage }
            .filter { pm.getLaunchIntentForPackage(it.packageName) != null }
            .map { appInfo ->
                val label = pm.getApplicationLabel(appInfo).toString()
                val pid = getPidForPackage(context, appInfo.packageName)
                RunningApp(appInfo.packageName, label, pid)
            }
            .sortedBy { it.label.lowercase() }
    }

    /// Root 模式：获取运行中进程及其 PID
    private fun getRunningAppsWithPid(context: Context): List<RunningApp> {
        val am = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        val pm = context.packageManager
        val processes = am.runningAppProcesses ?: emptyList()

        return processes
            .filter { it.processName.contains(".") }
            .filter { it.pid > 0 }
            .map { proc ->
                val label = try {
                    val appInfo = pm.getApplicationInfo(proc.processName, 0)
                    pm.getApplicationLabel(appInfo).toString()
                } catch (_: PackageManager.NameNotFoundException) {
                    proc.processName.substringAfterLast(".")
                }
                RunningApp(proc.processName, label, proc.pid)
            }
            .sortedBy { it.label.lowercase() }
    }

    /// Shizuku 模式：通过 shell 获取进程列表
    private fun getAppsFromShizuku(context: Context): List<RunningApp> {
        val pm = context.packageManager
        val shizukuApps = ShizukuHelper.getRunningProcesses()

        return shizukuApps.mapNotNull { (cmd, pid, _) ->
            val pkgName = cmd.substringAfterLast("/").substringBefore(":")
            if (!pkgName.contains(".")) return@mapNotNull null

            val label = try {
                val appInfo = pm.getApplicationInfo(pkgName, 0)
                pm.getApplicationLabel(appInfo).toString()
            } catch (_: Exception) {
                pkgName.substringAfterLast(".")
            }
            RunningApp(pkgName, label, pid)
        }
        .distinctBy { it.packageName }
        .sortedBy { it.label.lowercase() }
    }

    private fun getPidForPackage(context: Context, packageName: String): Int {
        // 方法1: ActivityManager
        try {
            val am = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
            val processes = am.runningAppProcesses ?: emptyList()
            val pid = processes.find { it.processName == packageName }?.pid
            if (pid != null && pid > 0) return pid
        } catch (_: Exception) {}

        // 方法2: 扫描 /proc/pid/cmdline
        return try {
            val procDir = java.io.File("/proc")
            procDir.listFiles()
                ?.filter { it.isDirectory }
                ?.mapNotNull { dir ->
                    val p = dir.name.toIntOrNull() ?: return@mapNotNull null
                    try {
                        val cmdline = java.io.File("/proc/$p/cmdline").readText().trim('\u0000')
                        if (cmdline == packageName || cmdline.startsWith("$packageName:")) p else null
                    } catch (_: Exception) { null }
                }
                ?.firstOrNull() ?: -1
        } catch (_: Exception) { -1 }
    }
}
