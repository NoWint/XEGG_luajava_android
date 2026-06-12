package com.xegg.viewmodel

import android.app.ActivityManager
import android.content.Context
import androidx.lifecycle.ViewModel
import com.xegg.bridge.XeggBridge
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow

data class AppState(
    val isAttached: Boolean = false,
    val targetPackage: String = "",
    val targetPid: Int = -1,
    val regionCount: Int = 0,
)

class MainViewModel : ViewModel() {

    private val _state = MutableStateFlow(AppState())
    val state: StateFlow<AppState> = _state

    fun attachToProcess(context: Context, packageName: String) {
        val pid = getPidForPackage(context, packageName)
        if (pid <= 0) return

        val success = XeggBridge.nativeAttach(pid)
        _state.value = _state.value.copy(
            isAttached = success,
            targetPackage = packageName,
            targetPid = if (success) pid else -1,
            regionCount = if (success) XeggBridge.nativeGetRegionCount() else 0,
        )
    }

    fun detach() {
        XeggBridge.nativeDetach()
        _state.value = AppState()
    }

    private fun getPidForPackage(context: Context, packageName: String): Int {
        val am = context.getSystemService(Context.ACTIVITY_SERVICE) as ActivityManager
        val processes = am.runningAppProcesses ?: return -1
        return processes.find { it.processName == packageName }?.pid ?: -1
    }
}
