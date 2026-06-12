package com.xegg.ui.home

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.xegg.viewmodel.RunningApp

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HomeScreen(
    isAttached: Boolean,
    targetPackage: String,
    regionCount: Int,
    runningApps: List<RunningApp>,
    isLoading: Boolean,
    accessMode: Int,
    shizukuAvailable: Boolean,
    isRooted: Boolean,
    statusMessage: String,
    onRefresh: () -> Unit,
    onAttach: (String) -> Unit,
    onDetach: () -> Unit,
    onSearchClick: () -> Unit,
    onScriptClick: () -> Unit,
    onRequestShizuku: () -> Unit,
    modifier: Modifier = Modifier
) {
    var searchQuery by remember { mutableStateOf("") }
    var showPidDialog by remember { mutableStateOf(false) }
    var pidInput by remember { mutableStateOf("") }

    // PID 输入对话框
    if (showPidDialog) {
        AlertDialog(
            onDismissRequest = { showPidDialog = false },
            title = { Text("通过 PID 附加") },
            text = {
                OutlinedTextField(
                    value = pidInput,
                    onValueChange = { pidInput = it.filter { c -> c.isDigit() } },
                    label = { Text("进程 PID") },
                    keyboardOptions = androidx.compose.foundation.text.KeyboardOptions(
                        keyboardType = androidx.compose.ui.text.input.KeyboardType.Number
                    ),
                    singleLine = true
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        val pid = pidInput.toIntOrNull() ?: 0
                        if (pid > 0) onAttach("pid:$pid")
                        showPidDialog = false
                        pidInput = ""
                    }
                ) { Text("附加") }
            },
            dismissButton = {
                TextButton(onClick = { showPidDialog = false }) { Text("取消") }
            }
        )
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("XEGG") },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.background
                ),
                actions = {
                    if (!isAttached) {
                        IconButton(onClick = { showPidDialog = true }) {
                            Icon(Icons.Default.Input, contentDescription = "PID 附加")
                        }
                    }
                    IconButton(onClick = onRefresh) {
                        if (isLoading) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(20.dp),
                                strokeWidth = 2.dp
                            )
                        } else {
                            Icon(Icons.Default.Refresh, contentDescription = "刷新")
                        }
                    }
                }
            )
        },
        modifier = modifier
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
        ) {
            // --- 附加状态卡片 ---
            if (isAttached) {
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 8.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.primaryContainer
                    )
                ) {
                    Row(
                        modifier = Modifier.padding(16.dp).fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Icon(Icons.Default.CheckCircle, null, tint = MaterialTheme.colorScheme.primary, modifier = Modifier.size(28.dp))
                        Spacer(modifier = Modifier.width(12.dp))
                        Column(modifier = Modifier.weight(1f)) {
                            Text(targetPackage, style = MaterialTheme.typography.titleMedium, maxLines = 1, overflow = TextOverflow.Ellipsis)
                            Text("${accessModeLabel(accessMode)} | ${regionCount} 个内存区域", style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                        }
                        OutlinedButton(onClick = onDetach, colors = ButtonDefaults.outlinedButtonColors(contentColor = MaterialTheme.colorScheme.error)) {
                            Text("断开")
                        }
                    }
                }

                // 快捷操作
                Row(
                    modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 4.dp),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Button(onClick = onSearchClick, modifier = Modifier.weight(1f)) {
                        Icon(Icons.Default.Search, null, modifier = Modifier.size(18.dp))
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("内存搜索")
                    }
                    OutlinedButton(onClick = onScriptClick, modifier = Modifier.weight(1f)) {
                        Icon(Icons.Default.Code, null, modifier = Modifier.size(18.dp))
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Lua 脚本")
                    }
                }

                HorizontalDivider(modifier = Modifier.padding(vertical = 8.dp))
            } else {
                // 未附加：显示权限状态提示
                Card(
                    modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.primaryContainer
                    )
                ) {
                    Row(
                        modifier = Modifier.padding(16.dp).fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Icon(
                            when {
                                isRooted -> Icons.Default.VerifiedUser
                                shizukuAvailable -> Icons.Default.CheckCircle
                                else -> Icons.Default.Launch
                            }, null,
                            tint = MaterialTheme.colorScheme.primary,
                            modifier = Modifier.size(28.dp)
                        )
                        Spacer(modifier = Modifier.width(12.dp))
                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                when {
                                    isRooted -> "Root 模式就绪"
                                    shizukuAvailable -> "Shizuku 模式就绪"
                                    else -> "虚拟空间模式"
                                },
                                style = MaterialTheme.typography.titleSmall
                            )
                            Text(
                                "点击应用启动并附加",
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }
            }

            // --- 搜索框 ---
            OutlinedTextField(
                value = searchQuery,
                onValueChange = { searchQuery = it },
                placeholder = { Text("搜索应用...") },
                leadingIcon = { Icon(Icons.Default.Search, contentDescription = null) },
                modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 4.dp),
                singleLine = true
            )

            // --- 应用列表 ---
            val filteredApps = if (searchQuery.isBlank()) runningApps
                else runningApps.filter {
                    it.label.contains(searchQuery, ignoreCase = true) ||
                    it.packageName.contains(searchQuery, ignoreCase = true)
                }

            if (filteredApps.isEmpty() && !isLoading) {
                Box(
                    modifier = Modifier.fillMaxWidth().weight(1f),
                    contentAlignment = Alignment.Center
                ) {
                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                        Icon(Icons.Default.Apps, null, modifier = Modifier.size(48.dp), tint = MaterialTheme.colorScheme.onSurfaceVariant)
                        Spacer(modifier = Modifier.height(8.dp))
                        Text("点击右上角刷新获取应用列表", color = MaterialTheme.colorScheme.onSurfaceVariant)
                    }
                }
            } else {
                LazyColumn(modifier = Modifier.fillMaxWidth().weight(1f)) {
                    items(filteredApps, key = { it.packageName + it.pid }) { app ->
                        val isSelected = isAttached && app.packageName == targetPackage
                        AppItem(app = app, isSelected = isSelected, onClick = { onAttach(app.packageName) })
                    }
                }
            }
        }
    }
}

private fun accessModeLabel(mode: Int): String = when (mode) {
    1 -> "Root"
    2 -> "虚拟空间"
    3 -> "Shizuku"
    else -> "未知"
}

@Composable
private fun AppItem(app: RunningApp, isSelected: Boolean, onClick: () -> Unit) {
    Card(
        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 2.dp),
        colors = CardDefaults.cardColors(
            containerColor = if (isSelected) MaterialTheme.colorScheme.primaryContainer else MaterialTheme.colorScheme.surface
        ),
        onClick = onClick
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 16.dp, vertical = 10.dp).fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(Icons.Default.Android, null,
                tint = if (isSelected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.size(36.dp)
            )
            Spacer(modifier = Modifier.width(12.dp))
            Column(modifier = Modifier.weight(1f)) {
                Text(app.label, style = MaterialTheme.typography.bodyLarge, maxLines = 1, overflow = TextOverflow.Ellipsis)
                Text(app.packageName, style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant, maxLines = 1, overflow = TextOverflow.Ellipsis)
            }
            Column(horizontalAlignment = Alignment.End) {
                if (app.pid > 0) {
                    Text("PID ${app.pid}", style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                } else {
                    Text("点击启动", style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.primary)
                }
                if (isSelected) Icon(Icons.Default.CheckCircle, null, tint = MaterialTheme.colorScheme.primary, modifier = Modifier.size(16.dp))
            }
        }
    }
}
