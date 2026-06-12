package com.xegg.ui.script

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.xegg.bridge.XeggBridge

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ScriptScreen(
    isAttached: Boolean,
    modifier: Modifier = Modifier
) {
    var scriptCode by remember { mutableStateOf("") }
    var isRunning by remember { mutableStateOf(false) }
    var outputLog by remember { mutableStateOf("") }
    var scriptPath by remember { mutableStateOf("") }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Lua 脚本") },
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
            // 脚本路径输入（执行文件）
            OutlinedTextField(
                value = scriptPath,
                onValueChange = { scriptPath = it },
                label = { Text("脚本文件路径") },
                placeholder = { Text("/sdcard/script.lua") },
                modifier = Modifier.fillMaxWidth(),
                enabled = isAttached && !isRunning,
                singleLine = true
            )

            Spacer(modifier = Modifier.height(8.dp))

            // 执行文件按钮
            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Button(
                    onClick = {
                        if (isAttached && scriptPath.isNotEmpty()) {
                            isRunning = true
                            val success = XeggBridge.nativeExecFile(scriptPath)
                            isRunning = false
                            if (success) {
                                outputLog += "[完成] 脚本执行成功\n"
                            } else {
                                outputLog += "[错误] 脚本执行失败\n"
                            }
                        }
                    },
                    enabled = isAttached && scriptPath.isNotEmpty() && !isRunning,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.PlayArrow, contentDescription = null, modifier = Modifier.size(18.dp))
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("执行文件")
                }

                if (isRunning) {
                    OutlinedButton(
                        onClick = {
                            XeggBridge.nativeStopScript()
                            isRunning = false
                            outputLog += "[停止] 脚本已停止\n"
                        },
                        modifier = Modifier.weight(1f)
                    ) {
                        Icon(Icons.Default.Stop, contentDescription = null, modifier = Modifier.size(18.dp))
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("停止")
                    }
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // 代码编辑区
            Text("内联代码", style = MaterialTheme.typography.titleSmall)
            Spacer(modifier = Modifier.height(4.dp))

            OutlinedTextField(
                value = scriptCode,
                onValueChange = { scriptCode = it },
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f),
                placeholder = { Text("-- 在此输入 Lua 代码\ngg.toast('Hello from XEGG!')") },
                enabled = !isRunning,
                maxLines = Int.MAX_VALUE
            )

            Spacer(modifier = Modifier.height(8.dp))

            // 执行内联代码按钮
            Button(
                onClick = {
                    if (scriptCode.isNotEmpty()) {
                        isRunning = true
                        val success = XeggBridge.nativeExecScript(scriptCode)
                        isRunning = false
                        if (success) {
                            outputLog += "[完成] 内联脚本执行成功\n"
                        } else {
                            outputLog += "[错误] 内联脚本执行失败\n"
                        }
                    }
                },
                enabled = scriptCode.isNotEmpty() && !isRunning,
                modifier = Modifier.fillMaxWidth()
            ) {
                Icon(Icons.Default.Code, contentDescription = null, modifier = Modifier.size(18.dp))
                Spacer(modifier = Modifier.width(4.dp))
                Text("执行代码")
            }

            // 输出日志
            if (outputLog.isNotEmpty()) {
                Spacer(modifier = Modifier.height(8.dp))
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surface
                    )
                ) {
                    Column(modifier = Modifier.padding(12.dp)) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.SpaceBetween,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Text("输出", style = MaterialTheme.typography.titleSmall)
                            TextButton(onClick = { outputLog = "" }) {
                                Text("清空")
                            }
                        }
                        Text(
                            outputLog,
                            style = MaterialTheme.typography.bodySmall,
                            modifier = Modifier.fillMaxWidth()
                        )
                    }
                }
            }

            if (!isAttached) {
                Spacer(modifier = Modifier.height(24.dp))
                Text(
                    "请先在主页选择并附加目标应用",
                    style = MaterialTheme.typography.bodyLarge,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}
