package com.xegg

import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.provider.Settings
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.lifecycle.viewmodel.compose.viewModel
import com.xegg.ui.home.HomeScreen
import com.xegg.ui.search.SearchScreen
import com.xegg.ui.settings.SettingsScreen
import com.xegg.ui.theme.XeggTheme
import com.xegg.viewmodel.MainViewModel

class MainActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()

        if (!Settings.canDrawOverlays(this)) {
            val intent = Intent(
                Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                Uri.parse("package:$packageName")
            )
            startActivity(intent)
        }

        setContent {
            XeggTheme {
                MainContent()
            }
        }
    }
}

@Composable
fun MainContent(viewModel: MainViewModel = viewModel()) {
    val state by viewModel.state.collectAsState()
    var currentTab by remember { mutableIntStateOf(0) }

    Scaffold(
        bottomBar = {
            NavigationBar {
                NavigationBarItem(
                    selected = currentTab == 0,
                    onClick = { currentTab = 0 },
                    icon = { Icon(Icons.Default.Home, contentDescription = null) },
                    label = { Text("主页") }
                )
                NavigationBarItem(
                    selected = currentTab == 1,
                    onClick = { currentTab = 1 },
                    icon = { Icon(Icons.Default.Search, contentDescription = null) },
                    label = { Text("搜索") }
                )
                NavigationBarItem(
                    selected = currentTab == 2,
                    onClick = { currentTab = 2 },
                    icon = { Icon(Icons.Default.Settings, contentDescription = null) },
                    label = { Text("设置") }
                )
            }
        }
    ) { padding ->
        when (currentTab) {
            0 -> HomeScreen(
                isAttached = state.isAttached,
                targetPackage = state.targetPackage,
                regionCount = state.regionCount,
                onSearchClick = { currentTab = 1 },
                onSettingsClick = { currentTab = 2 },
                modifier = Modifier.padding(padding)
            )
            1 -> SearchScreen(
                modifier = Modifier.padding(padding)
            )
            2 -> SettingsScreen(
                isAttached = state.isAttached,
                onDetach = { viewModel.detach() },
                modifier = Modifier.padding(padding)
            )
        }
    }
}
