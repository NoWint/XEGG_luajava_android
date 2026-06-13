package com.xegg.ui.home

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material.icons.outlined.*
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
    onStartOverlay: () -> Unit,
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
                    singleLine = true,
                    modifier = Modifier.fillMaxWidth()
                )
            },
            confirmButton = {
                TextButton(onClick = {
                    val pid = pidInput.toIntOrNull() ?: 0
                    if (pid > 0) onAttach("pid:$pid")
                    showPidDialog = false
                    pidInput = ""
                }) { Text("附加") }
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
                actions = {
                    FilledTonalButton(
                        onClick = onStartOverlay,
                        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 4.dp),
                        modifier = Modifier.padding(end = 4.dp)
                    ) {
                        Icon(Icons.Outlined.PictureInPicture, null, modifier = Modifier.size(18.dp))
                        Spacer(modifier = Modifier.width(6.dp))
                        Text("悬浮窗", style = MaterialTheme.typography.labelLarge)
                    }
                    if (!isAttached) {
                        IconButton(onClick = { showPidDialog = true }) {
                            Icon(Icons.Outlined.Input, "PID 附加")
                        }
                    }
                    IconButton(onClick = onRefresh) {
                        if (isLoading) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(18.dp),
                                strokeWidth = 2.dp,
                            )
                        } else {
                            Icon(Icons.Outlined.Refresh, "刷新")
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
            // --- 附加状态 / 模式信息 ---
            if (isAttached) {
                // 附加成功卡片
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 8.dp),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.primaryContainer
                    )
                ) {
                    ListItem(
                        headlineContent = {
                            Text(
                                targetPackage,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis
                            )
                        },
                        supportingContent = {
                            Text("${accessModeLabel(accessMode)} | $regionCount regions")
                        },
                        leadingContent = {
                            Icon(
                                Icons.Filled.CheckCircle, null,
                                tint = MaterialTheme.colorScheme.primary
                            )
                        },
                        trailingContent = {
                            TextButton(onClick = onDetach) {
                                Text("断开", color = MaterialTheme.colorScheme.error)
                            }
                        }
                    )
                }

                // 快捷操作
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 4.dp),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    FilledTonalButton(
                        onClick = onSearchClick,
                        modifier = Modifier.weight(1f)
                    ) {
                        Icon(Icons.Outlined.Search, null, modifier = Modifier.size(18.dp))
                        Spacer(modifier = Modifier.width(6.dp))
                        Text("搜索")
                    }
                    FilledTonalButton(
                        onClick = onScriptClick,
                        modifier = Modifier.weight(1f)
                    ) {
                        Icon(Icons.Outlined.Code, null, modifier = Modifier.size(18.dp))
                        Spacer(modifier = Modifier.width(6.dp))
                        Text("脚本")
                    }
                }

                HorizontalDivider(modifier = Modifier.padding(vertical = 4.dp))
            } else {
                // 模式状态卡片
                Card(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 8.dp),
                ) {
                    ListItem(
                        headlineContent = {
                            Text(
                                when {
                                    isRooted -> "Root 模式"
                                    shizukuAvailable -> "Shizuku 模式"
                                    else -> "虚拟空间模式"
                                }
                            )
                        },
                        supportingContent = { Text("选择目标应用以附加") },
                        leadingContent = {
                            Icon(
                                when {
                                    isRooted -> Icons.Filled.VerifiedUser
                                    shizukuAvailable -> Icons.Filled.CheckCircle
                                    else -> Icons.Filled.Launch
                                }, null,
                                tint = MaterialTheme.colorScheme.primary
                            )
                        }
                    )
                }
            }

            // --- 搜索框 ---
            SearchBar(
                query = searchQuery,
                onQueryChange = { searchQuery = it },
                onSearch = {},
                active = false,
                onActiveChange = {},
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp, vertical = 4.dp),
                placeholder = { Text("搜索应用") },
                leadingIcon = { Icon(Icons.Default.Search, null) },
            ) {}

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
                        Icon(
                            Icons.Outlined.Apps, null,
                            modifier = Modifier.size(48.dp),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        Spacer(modifier = Modifier.height(12.dp))
                        Text(
                            "点击刷新获取应用列表",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
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
    else -> "?"
}

@Composable
private fun AppItem(app: RunningApp, isSelected: Boolean, onClick: () -> Unit) {
    ListItem(
        headlineContent = {
            Text(
                app.label,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                color = if (isSelected) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface
            )
        },
        supportingContent = {
            Text(
                app.packageName,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                style = MaterialTheme.typography.bodySmall
            )
        },
        leadingContent = {
            Icon(
                Icons.Filled.Android, null,
                tint = if (isSelected) MaterialTheme.colorScheme.primary
                    else MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.size(24.dp)
            )
        },
        trailingContent = {
            if (app.pid > 0) {
                AssistChip(
                    onClick = {},
                    label = { Text("PID ${app.pid}", style = MaterialTheme.typography.labelSmall) },
                    leadingIcon = { Icon(Icons.Filled.PlayArrow, null, modifier = Modifier.size(14.dp)) }
                )
            } else {
                AssistChip(
                    onClick = {},
                    label = { Text("启动", style = MaterialTheme.typography.labelSmall) },
                )
            }
        },
        modifier = Modifier.clickable(onClick = onClick),
        colors = ListItemDefaults.colors(
            containerColor = if (isSelected)
                MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.5f)
            else MaterialTheme.colorScheme.surface
        )
    )
}
