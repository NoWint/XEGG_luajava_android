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
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.lifecycle.viewmodel.compose.viewModel
import com.xegg.bridge.ShizukuHelper
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
    var currentTab by remember { mutableIntStateOf(0) }

    Scaffold(
        bottomBar = {
            NavigationBar {
                NavigationBarItem(selected = currentTab == 0, onClick = { currentTab = 0 }, icon = { Icon(Icons.Default.Home, null) }, label = { Text("主页") })
                NavigationBarItem(selected = currentTab == 1, onClick = { currentTab = 1 }, icon = { Icon(Icons.Default.Search, null) }, label = { Text("搜索") })
                NavigationBarItem(selected = currentTab == 2, onClick = { currentTab = 2 }, icon = { Icon(Icons.Default.Code, null) }, label = { Text("脚本") })
                NavigationBarItem(selected = currentTab == 3, onClick = { currentTab = 3 }, icon = { Icon(Icons.Default.Settings, null) }, label = { Text("设置") })
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
                    // 延迟检查结果
                    if (state.isAttached) {
                        Toast.makeText(context, "附加成功", Toast.LENGTH_SHORT).show()
                    } else {
                        Toast.makeText(context, "附加失败", Toast.LENGTH_SHORT).show()
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
                modifier = Modifier.padding(padding)
            )
            1 -> SearchScreen(isAttached = state.isAttached, modifier = Modifier.padding(padding))
            2 -> ScriptScreen(isAttached = state.isAttached, modifier = Modifier.padding(padding))
            3 -> SettingsScreen(
                isAttached = state.isAttached,
                onDetach = { viewModel.detach(); Toast.makeText(context, "已断开", Toast.LENGTH_SHORT).show() },
                modifier = Modifier.padding(padding)
            )
        }
    }
}
