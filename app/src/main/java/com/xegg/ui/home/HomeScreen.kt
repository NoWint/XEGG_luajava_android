package com.xegg.ui.home

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import com.xegg.ui.theme.*
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
            title = { Text("PID 附加", color = NeonGreen) },
            containerColor = CardDark,
            text = {
                OutlinedTextField(
                    value = pidInput,
                    onValueChange = { pidInput = it.filter { c -> c.isDigit() } },
                    label = { Text("进程 PID", color = TextSecondary) },
                    keyboardOptions = androidx.compose.foundation.text.KeyboardOptions(
                        keyboardType = androidx.compose.ui.text.input.KeyboardType.Number
                    ),
                    singleLine = true,
                    colors = OutlinedTextFieldDefaults.colors(
                        focusedTextColor = TextPrimary,
                        unfocusedTextColor = TextPrimary,
                        focusedBorderColor = NeonGreen,
                        unfocusedBorderColor = TextMuted,
                        cursorColor = NeonGreen,
                    )
                )
            },
            confirmButton = {
                TextButton(onClick = {
                    val pid = pidInput.toIntOrNull() ?: 0
                    if (pid > 0) onAttach("pid:$pid")
                    showPidDialog = false
                    pidInput = ""
                }) { Text("附加", color = NeonGreen) }
            },
            dismissButton = {
                TextButton(onClick = { showPidDialog = false }) { Text("取消", color = TextSecondary) }
            }
        )
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = {
                    Text("XEGG", color = NeonGreen, style = MaterialTheme.typography.headlineMedium)
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = VoidBlack
                ),
                actions = {
                    // 悬浮窗按钮 - 醒目
                    FilledTonalButton(
                        onClick = onStartOverlay,
                        colors = ButtonDefaults.filledTonalButtonColors(
                            containerColor = NeonGreen.copy(alpha = 0.15f),
                            contentColor = NeonGreen
                        ),
                        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 4.dp),
                        modifier = Modifier.padding(end = 4.dp)
                    ) {
                        Icon(Icons.Default.Launch, null, modifier = Modifier.size(16.dp))
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("悬浮窗", style = MaterialTheme.typography.labelLarge)
                    }
                    if (!isAttached) {
                        IconButton(onClick = { showPidDialog = true }) {
                            Icon(Icons.Default.Input, "PID", tint = TextSecondary)
                        }
                    }
                    IconButton(onClick = onRefresh) {
                        if (isLoading) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(18.dp),
                                strokeWidth = 2.dp,
                                color = NeonGreen
                            )
                        } else {
                            Icon(Icons.Default.Refresh, "刷新", tint = TextSecondary)
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
                .background(VoidBlack)
        ) {
            // --- 附加状态 ---
            if (isAttached) {
                // 绿色渐变状态条
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 6.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(
                            Brush.horizontalGradient(
                                listOf(NeonGreen.copy(alpha = 0.1f), CardDark)
                            )
                        )
                        .border(1.dp, NeonGreen.copy(alpha = 0.3f), RoundedCornerShape(8.dp))
                        .padding(12.dp)
                ) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                    ) {
                        Icon(Icons.Default.CheckCircle, null, tint = NeonGreen, modifier = Modifier.size(20.dp))
                        Spacer(modifier = Modifier.width(10.dp))
                        Column(modifier = Modifier.weight(1f)) {
                            Text(targetPackage, style = MaterialTheme.typography.titleSmall, color = TextPrimary, maxLines = 1, overflow = TextOverflow.Ellipsis)
                            Text("${accessModeLabel(accessMode)} | ${regionCount} regions", style = MaterialTheme.typography.labelSmall, color = TextSecondary)
                        }
                        TextButton(onClick = onDetach, contentPadding = PaddingValues(horizontal = 8.dp)) {
                            Text("断开", color = NeonRed, style = MaterialTheme.typography.labelLarge)
                        }
                    }
                }

                // 快捷操作 - 紧凑按钮行
                Row(
                    modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 2.dp),
                    horizontalArrangement = Arrangement.spacedBy(6.dp)
                ) {
                    ActionChip(onClick = onSearchClick, icon = Icons.Default.Search, label = "搜索")
                    ActionChip(onClick = onScriptClick, icon = Icons.Default.Code, label = "脚本")
                }

                HorizontalDivider(modifier = Modifier.padding(vertical = 4.dp), color = TextMuted.copy(alpha = 0.3f))
            } else {
                // 模式状态
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 6.dp)
                        .clip(RoundedCornerShape(8.dp))
                        .background(CardDark)
                        .border(1.dp, TextMuted.copy(alpha = 0.2f), RoundedCornerShape(8.dp))
                        .padding(12.dp)
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            when {
                                isRooted -> Icons.Default.VerifiedUser
                                shizukuAvailable -> Icons.Default.CheckCircle
                                else -> Icons.Default.Launch
                            }, null,
                            tint = when {
                                isRooted -> NeonGreen
                                shizukuAvailable -> NeonCyan
                                else -> NeonOrange
                            },
                            modifier = Modifier.size(20.dp)
                        )
                        Spacer(modifier = Modifier.width(10.dp))
                        Column {
                            Text(
                                when {
                                    isRooted -> "ROOT"
                                    shizukuAvailable -> "SHIZUKU"
                                    else -> "VIRTUAL SPACE"
                                },
                                style = MaterialTheme.typography.labelLarge,
                                color = when {
                                    isRooted -> NeonGreen
                                    shizukuAvailable -> NeonCyan
                                    else -> NeonOrange
                                }
                            )
                            Text("选择目标应用附加", style = MaterialTheme.typography.labelSmall, color = TextSecondary)
                        }
                    }
                }
            }

            // --- 搜索框 ---
            OutlinedTextField(
                value = searchQuery,
                onValueChange = { searchQuery = it },
                placeholder = { Text("搜索应用...", color = TextMuted) },
                leadingIcon = { Icon(Icons.Default.Search, null, tint = TextMuted, modifier = Modifier.size(18.dp)) },
                modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 4.dp),
                singleLine = true,
                shape = RoundedCornerShape(8.dp),
                colors = OutlinedTextFieldDefaults.colors(
                    focusedTextColor = TextPrimary,
                    unfocusedTextColor = TextPrimary,
                    focusedBorderColor = NeonGreen.copy(alpha = 0.5f),
                    unfocusedBorderColor = TextMuted.copy(alpha = 0.3f),
                    cursorColor = NeonGreen,
                    focusedContainerColor = CardDark,
                    unfocusedContainerColor = SurfaceDark,
                )
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
                        Icon(Icons.Default.Apps, null, modifier = Modifier.size(40.dp), tint = TextMuted)
                        Spacer(modifier = Modifier.height(8.dp))
                        Text("点击刷新获取应用列表", color = TextMuted, style = MaterialTheme.typography.bodySmall)
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

@Composable
private fun ActionChip(onClick: () -> Unit, icon: androidx.compose.ui.graphics.vector.ImageVector, label: String) {
    OutlinedButton(
        onClick = onClick,
        contentPadding = PaddingValues(horizontal = 10.dp, vertical = 2.dp),
        colors = ButtonDefaults.outlinedButtonColors(
            contentColor = NeonGreen,
        ),
        border = ButtonDefaults.outlinedButtonBorder(enabled = true).copy(
            brush = Brush.horizontalGradient(listOf(NeonGreen.copy(alpha = 0.3f), NeonCyan.copy(alpha = 0.3f)))
        ),
        shape = RoundedCornerShape(6.dp)
    ) {
        Icon(icon, null, modifier = Modifier.size(14.dp))
        Spacer(modifier = Modifier.width(4.dp))
        Text(label, style = MaterialTheme.typography.labelLarge)
    }
}

private fun accessModeLabel(mode: Int): String = when (mode) {
    1 -> "ROOT"
    2 -> "VS"
    3 -> "SHIZUKU"
    else -> "?"
}

@Composable
private fun AppItem(app: RunningApp, isSelected: Boolean, onClick: () -> Unit) {
    Box(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 1.dp)
            .clip(RoundedCornerShape(6.dp))
            .background(if (isSelected) NeonGreen.copy(alpha = 0.08f) else SurfaceDark)
            .border(
                width = if (isSelected) 1.dp else 0.dp,
                color = if (isSelected) NeonGreen.copy(alpha = 0.3f) else androidx.compose.ui.graphics.Color.Transparent,
                shape = RoundedCornerShape(6.dp)
            )
            .clickable(onClick = onClick)
            .padding(horizontal = 12.dp, vertical = 8.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // 应用图标占位
            Box(
                modifier = Modifier
                    .size(32.dp)
                    .clip(RoundedCornerShape(6.dp))
                    .background(CardDark),
                contentAlignment = Alignment.Center
            ) {
                Icon(Icons.Default.Android, null,
                    tint = if (isSelected) NeonGreen else TextMuted,
                    modifier = Modifier.size(18.dp)
                )
            }
            Spacer(modifier = Modifier.width(10.dp))
            Column(modifier = Modifier.weight(1f)) {
                Text(app.label, style = MaterialTheme.typography.bodyMedium, color = if (isSelected) NeonGreen else TextPrimary, maxLines = 1, overflow = TextOverflow.Ellipsis)
                Text(app.packageName, style = MaterialTheme.typography.labelSmall, color = TextMuted, maxLines = 1, overflow = TextOverflow.Ellipsis)
            }
            if (app.pid > 0) {
                Text("PID ${app.pid}", style = MaterialTheme.typography.labelSmall, color = NeonCyan)
            } else {
                Text("START", style = MaterialTheme.typography.labelSmall, color = NeonOrange)
            }
        }
    }
}
