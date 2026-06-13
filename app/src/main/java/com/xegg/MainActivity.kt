package com.xegg

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.provider.Settings
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Code
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.lifecycle.viewmodel.compose.viewModel
import com.xegg.bridge.ShizukuHelper
import com.xegg.ui.dump.DumpScreen
import com.xegg.ui.home.HomeScreen
import com.xegg.ui.script.ScriptScreen
import com.xegg.ui.search.SearchScreen
import com.xegg.ui.settings.SettingsScreen
import com.xegg.ui.theme.XeggTheme
import com.xegg.viewmodel.MainViewModel

class MainActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()

        if (!Settings.canDrawOverlays(this)) {
            startActivity(Intent(
                Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                Uri.parse("package:$packageName")
            ))
        }

        val vm = androidx.lifecycle.ViewModelProvider(this)[MainViewModel::class.java]
        vm.init(this)

        setContent {
            XeggTheme {
                MainContent()
            }
        }
    }
}

@Composable
fun MainContent(viewModel: MainViewModel = viewModel()) {
    val context = LocalContext.current
    val activity = context as? android.app.Activity
    val state by viewModel.state.collectAsState()
    var previousAttached by remember { mutableStateOf(false) }

    // 监听附加状态变化，显示 Toast
    LaunchedEffect(state.isAttached) {
        if (state.isAttached && !previousAttached) {
            Toast.makeText(context, "附加成功", Toast.LENGTH_SHORT).show()
        } else if (!state.isAttached && previousAttached && state.statusMessage.contains("失败")) {
            Toast.makeText(context, state.statusMessage, Toast.LENGTH_SHORT).show()
        }
        previousAttached = state.isAttached
    }

    // 启动悬浮窗（检查权限）
    fun startOverlay() {
        if (!Settings.canDrawOverlays(context)) {
            Toast.makeText(context, "请先授予悬浮窗权限", Toast.LENGTH_LONG).show()
            context.startActivity(Intent(
                Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                Uri.parse("package:${context.packageName}")
            ))
            return
        }
        if (!com.xegg.service.OverlayService.isRunning) {
            val intent = Intent(context, com.xegg.service.OverlayService::class.java)
            context.startForegroundService(intent)
            Toast.makeText(context, "悬浮窗已启动", Toast.LENGTH_SHORT).show()
        } else {
            Toast.makeText(context, "悬浮窗已在运行", Toast.LENGTH_SHORT).show()
        }
    }

    var currentTab by remember { mutableIntStateOf(0) }

    Scaffold(
        bottomBar = {
            NavigationBar {
                NavigationBarItem(selected = currentTab == 0, onClick = { currentTab = 0 }, icon = { Icon(Icons.Default.Home, null) }, label = { Text("主页") })
                NavigationBarItem(selected = currentTab == 1, onClick = { currentTab = 1 }, icon = { Icon(Icons.Default.Search, null) }, label = { Text("搜索") })
                NavigationBarItem(selected = currentTab == 2, onClick = { currentTab = 2 }, icon = { Icon(Icons.Default.Code, null) }, label = { Text("脚本") })
                NavigationBarItem(selected = currentTab == 3, onClick = { currentTab = 3 }, icon = { Icon(Icons.Default.Settings, null) }, label = { Text("设置") })
                NavigationBarItem(selected = currentTab == 4, onClick = { currentTab = 4 }, icon = { Icon(Icons.Default.Info, null) }, label = { Text("Dump") })
            }
        }
    ) { padding ->
        when (currentTab) {
            0 -> HomeScreen(
                isAttached = state.isAttached,
                targetPackage = state.targetPackage,
                regionCount = state.regionCount,
                runningApps = state.runningApps,
                isLoading = state.isLoading,
                accessMode = state.accessMode,
                shizukuAvailable = state.shizukuAvailable,
                isRooted = state.isRooted,
                statusMessage = state.statusMessage,
                onRefresh = { viewModel.refreshApps(context) },
                onAttach = { identifier ->
                    if (identifier.startsWith("pid:")) {
                        val pid = identifier.removePrefix("pid:").toIntOrNull() ?: 0
                        if (pid > 0) viewModel.attachByPid(context, pid)
                    } else {
                        viewModel.attach(context, identifier)
                    }
                },
                onDetach = {
                    viewModel.detach()
                    Toast.makeText(context, "已断开", Toast.LENGTH_SHORT).show()
                },
                onSearchClick = { currentTab = 1 },
                onScriptClick = { currentTab = 2 },
                onRequestShizuku = {
                    activity?.let { act ->
                        try {
                            ShizukuHelper.requestPermission(act)
                        } catch (_: Exception) {
                            try {
                                act.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=moe.shizuku.privileged.api")))
                            } catch (_: Exception) {}
                        }
                    }
                },
                onStartOverlay = { startOverlay() },
                modifier = Modifier.padding(padding)
            )
            1 -> SearchScreen(isAttached = state.isAttached, modifier = Modifier.padding(padding))
            2 -> ScriptScreen(isAttached = state.isAttached, modifier = Modifier.padding(padding))
            3 -> SettingsScreen(
                isAttached = state.isAttached,
                onDetach = { viewModel.detach(); Toast.makeText(context, "已断开", Toast.LENGTH_SHORT).show() },
                modifier = Modifier.padding(padding)
            )
            4 -> DumpScreen(isAttached = state.isAttached, modifier = Modifier.padding(padding))
        }
    }
}
