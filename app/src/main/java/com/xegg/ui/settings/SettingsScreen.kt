package com.xegg.ui.settings

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.xegg.bridge.XeggBridge

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen(
    isAttached: Boolean,
    onDetach: () -> Unit,
    modifier: Modifier = Modifier
) {
    var speedValue by remember { mutableFloatStateOf(1.0f) }
    var speedHackEnabled by remember { mutableStateOf(false) }
    var speedHackInjected by remember { mutableStateOf(false) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("设置") },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.background
                )
            )
        },
        modifier = modifier
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .padding(16.dp)
        ) {
            // --- 内存访问模式 ---
            Text(
                text = "内存访问模式",
                style = MaterialTheme.typography.titleMedium
            )

            Spacer(modifier = Modifier.height(8.dp))

            Text(
                text = "当前: Root (ptrace)",
                style = MaterialTheme.typography.bodyLarge
            )

            Spacer(modifier = Modifier.height(24.dp))

            if (isAttached) {
                Button(
                    onClick = onDetach,
                    colors = ButtonDefaults.buttonColors(
                        containerColor = MaterialTheme.colorScheme.error
                    )
                ) {
                    Text("断开连接")
                }
            }

            HorizontalDivider(modifier = Modifier.padding(vertical = 16.dp))

            // --- 变速齿轮 ---
            Text(
                text = "变速齿轮",
                style = MaterialTheme.typography.titleMedium
            )

            Spacer(modifier = Modifier.height(12.dp))

            // 启用/禁用开关
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text(
                    text = "启用变速",
                    style = MaterialTheme.typography.bodyLarge
                )
                Switch(
                    checked = speedHackEnabled,
                    onCheckedChange = { enabled ->
                        speedHackEnabled = enabled
                        if (!enabled) {
                            speedValue = 1.0f
                            XeggBridge.nativeSetSpeed(1.0)
                            if (speedHackInjected) {
                                XeggBridge.nativeRemoveSpeedHack()
                                speedHackInjected = false
                            }
                        }
                    }
                )
            }

            Spacer(modifier = Modifier.height(8.dp))

            // 速度滑块
            Slider(
                value = speedValue,
                onValueChange = { value ->
                    speedValue = value
                    XeggBridge.nativeSetSpeed(value.toDouble())
                    if (speedHackInjected) {
                        // 已注入时实时更新速度
                        XeggBridge.nativeInjectSpeedHack()
                    }
                },
                valueRange = 0.1f..10.0f,
                steps = 98,
                enabled = speedHackEnabled,
                modifier = Modifier.fillMaxWidth()
            )

            // 当前速度显示
            Text(
                text = String.format("当前速度: %.1fx", speedValue),
                style = MaterialTheme.typography.bodyLarge,
                color = if (speedHackEnabled && speedValue != 1.0f)
                    MaterialTheme.colorScheme.primary
                else
                    MaterialTheme.colorScheme.onSurface
            )

            Spacer(modifier = Modifier.height(16.dp))

            // 注入/移除按钮
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Button(
                    onClick = {
                        speedHackInjected = XeggBridge.nativeInjectSpeedHack()
                    },
                    enabled = speedHackEnabled && isAttached && !speedHackInjected,
                    modifier = Modifier.weight(1f)
                ) {
                    Text("注入")
                }

                OutlinedButton(
                    onClick = {
                        speedHackInjected = !XeggBridge.nativeRemoveSpeedHack()
                    },
                    enabled = speedHackInjected,
                    modifier = Modifier.weight(1f)
                ) {
                    Text("移除")
                }
            }

            if (speedHackInjected) {
                Spacer(modifier = Modifier.height(8.dp))
                Text(
                    text = "变速已注入目标进程",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.primary
                )
            }
        }
    }
}
