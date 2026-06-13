package com.xegg

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.provider.Settings
import android.widget.Toast
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.slideInVertically
import androidx.compose.animation.slideOutVertically
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material.icons.outlined.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
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

// 自适应导航项
data class NavItem(
    val label: String,
    val selectedIcon: androidx.compose.ui.graphics.vector.ImageVector,
    val unselectedIcon: androidx.compose.ui.graphics.vector.ImageVector,
)

val navItems = listOf(
    NavItem("主页", Icons.Filled.Home, Icons.Outlined.Home),
    NavItem("搜索", Icons.Filled.Search, Icons.Outlined.Search),
    NavItem("脚本", Icons.Filled.Code, Icons.Outlined.Code),
    NavItem("设置", Icons.Filled.Settings, Icons.Outlined.Settings),
    NavItem("Dump", Icons.Filled.Info, Icons.Outlined.Info),
)

@Composable
fun MainContent(viewModel: MainViewModel = viewModel()) {
    val context = LocalContext.current
    val activity = context as? android.app.Activity
    val state by viewModel.state.collectAsState()
    var previousAttached by remember { mutableStateOf(false) }

    // 监听附加状态变化
    LaunchedEffect(state.isAttached) {
        if (state.isAttached && !previousAttached) {
            Toast.makeText(context, "附加成功", Toast.LENGTH_SHORT).show()
        } else if (!state.isAttached && previousAttached && state.statusMessage.contains("失败")) {
            Toast.makeText(context, state.statusMessage, Toast.LENGTH_SHORT).show()
        }
        previousAttached = state.isAttached
    }

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

    // 自适应导航：手机用 NavigationBar，平板用 NavigationRail
    val configuration = androidx.compose.ui.platform.LocalConfiguration.current
    val useRail = configuration.screenWidthDp >= 600

    Scaffold(
        modifier = Modifier,
        bottomBar = {
            if (!useRail) {
                AnimatedVisibility(
                    visible = true,
                    enter = slideInVertically(initialOffsetY = { it }),
                    exit = slideOutVertically(targetOffsetY = { it }),
                ) {
                    NavigationBar {
                        navItems.forEachIndexed { index, item ->
                            NavigationBarItem(
                                selected = currentTab == index,
                                onClick = { currentTab = index },
                                icon = {
                                    Icon(
                                        if (currentTab == index) item.selectedIcon else item.unselectedIcon,
                                        contentDescription = item.label
                                    )
                                },
                                label = { Text(item.label) },
                            )
                        }
                    }
                }
            }
        }
    ) { padding ->
        if (useRail) {
            // 平板：NavigationRail + 内容区
            Row(modifier = Modifier.padding(padding)) {
                NavigationRail {
                    navItems.forEachIndexed { index, item ->
                        NavigationRailItem(
                            selected = currentTab == index,
                            onClick = { currentTab = index },
                            icon = {
                                Icon(
                                    if (currentTab == index) item.selectedIcon else item.unselectedIcon,
                                    contentDescription = item.label
                                )
                            },
                            label = { Text(item.label, style = MaterialTheme.typography.labelSmall) },
                        )
                    }
                }
                ContentArea(currentTab, state, viewModel, context, activity, { startOverlay() })
            }
        } else {
            // 手机：全屏内容
            ContentArea(currentTab, state, viewModel, context, activity, { startOverlay() }, Modifier.padding(padding))
        }
    }
}

@Composable
private fun ContentArea(
    currentTab: Int,
    state: com.xegg.viewmodel.AppState,
    viewModel: MainViewModel,
    context: android.content.Context,
    activity: android.app.Activity?,
    startOverlay: () -> Unit,
    modifier: Modifier = Modifier,
) {
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
            onSearchClick = { /* 切到搜索 tab 由外部控制 */ },
            onScriptClick = { /* 切到脚本 tab */ },
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
            onStartOverlay = startOverlay,
            modifier = modifier
        )
        1 -> SearchScreen(isAttached = state.isAttached, modifier = modifier)
        2 -> ScriptScreen(isAttached = state.isAttached, modifier = modifier)
        3 -> SettingsScreen(
            isAttached = state.isAttached,
            onDetach = { viewModel.detach(); Toast.makeText(context, "已断开", Toast.LENGTH_SHORT).show() },
            modifier = modifier
        )
        4 -> DumpScreen(isAttached = state.isAttached, modifier = modifier)
    }
}
