package com.xegg.ui.dump

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.unit.dp
import com.xegg.bridge.XeggBridge

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun DumpScreen(
    isAttached: Boolean,
    modifier: Modifier = Modifier
) {
    var addressInput by remember { mutableStateOf("") }
    var currentAddress by remember { mutableLongStateOf(0L) }
    var selectedSize by remember { mutableIntStateOf(256) }
    var hexContent by remember { mutableStateOf("") }
    var isLoading by remember { mutableStateOf(false) }
    var errorMessage by remember { mutableStateOf("") }

    val sizes = listOf(64, 128, 256, 512, 1024)

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("内存 Dump") },
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
            // 地址输入
            OutlinedTextField(
                value = addressInput,
                onValueChange = { addressInput = it.filter { c -> c.isDigit() || c.lowercaseChar() in 'a'..'f' || c == 'x' } },
                label = { Text("地址 (Hex)") },
                placeholder = { Text("0x12345678") },
                leadingIcon = { Icon(Icons.Default.Memory, null) },
                modifier = Modifier.fillMaxWidth(),
                singleLine = true
            )

            Spacer(modifier = Modifier.height(8.dp))

            // 大小选择
            Row(
                horizontalArrangement = Arrangement.spacedBy(4.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                sizes.forEach { size ->
                    FilterChip(
                        selected = selectedSize == size,
                        onClick = { selectedSize = size },
                        label = { Text("${size}B", style = MaterialTheme.typography.labelSmall) }
                    )
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            // 操作按钮
            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Button(
                    onClick = {
                        val addr = parseHexAddress(addressInput)
                        if (addr > 0) {
                            currentAddress = addr
                            errorMessage = ""
                            loadDump(addr, selectedSize) { content, error ->
                                hexContent = content
                                errorMessage = error
                                isLoading = false
                            }
                            isLoading = true
                        } else {
                            errorMessage = "无效地址"
                        }
                    },
                    enabled = isAttached && addressInput.isNotBlank(),
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.Search, null, modifier = Modifier.size(18.dp))
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("读取")
                }

                OutlinedButton(
                    onClick = {
                        if (currentAddress > 0) {
                            val prevAddr = currentAddress - selectedSize
                            if (prevAddr > 0) {
                                currentAddress = prevAddr
                                addressInput = "0x${prevAddr.toString(16)}"
                                isLoading = true
                                loadDump(prevAddr, selectedSize) { content, error ->
                                    hexContent = content
                                    errorMessage = error
                                    isLoading = false
                                }
                            }
                        }
                    },
                    enabled = isAttached && currentAddress > 0
                ) {
                    Icon(Icons.Default.ArrowBack, null, modifier = Modifier.size(18.dp))
                }

                OutlinedButton(
                    onClick = {
                        if (currentAddress > 0) {
                            val nextAddr = currentAddress + selectedSize
                            currentAddress = nextAddr
                            addressInput = "0x${nextAddr.toString(16)}"
                            isLoading = true
                            loadDump(nextAddr, selectedSize) { content, error ->
                                hexContent = content
                                errorMessage = error
                                isLoading = false
                            }
                        }
                    },
                    enabled = isAttached && currentAddress > 0
                ) {
                    Icon(Icons.Default.ArrowForward, null, modifier = Modifier.size(18.dp))
                }
            }

            Spacer(modifier = Modifier.height(8.dp))

            // 错误信息
            if (errorMessage.isNotEmpty()) {
                Text(errorMessage, color = MaterialTheme.colorScheme.error, style = MaterialTheme.typography.bodySmall)
            }

            // 未附加提示
            if (!isAttached) {
                Box(
                    modifier = Modifier.fillMaxWidth().weight(1f),
                    contentAlignment = androidx.compose.ui.Alignment.Center
                ) {
                    Column(horizontalAlignment = androidx.compose.ui.Alignment.CenterHorizontally) {
                        Icon(Icons.Default.LinkOff, null, modifier = Modifier.size(48.dp), tint = MaterialTheme.colorScheme.onSurfaceVariant)
                        Spacer(modifier = Modifier.height(8.dp))
                        Text("请先附加到目标进程", color = MaterialTheme.colorScheme.onSurfaceVariant)
                    }
                }
            } else if (isLoading) {
                Box(modifier = Modifier.fillMaxWidth().weight(1f), contentAlignment = androidx.compose.ui.Alignment.Center) {
                    CircularProgressIndicator()
                }
            } else if (hexContent.isNotEmpty()) {
                // Hex 视图
                Card(
                    modifier = Modifier.fillMaxWidth().weight(1f),
                    colors = CardDefaults.cardColors(containerColor = MaterialTheme.colorScheme.surfaceVariant)
                ) {
                    androidx.compose.foundation.text.selection.SelectionContainer {
                        Text(
                            hexContent,
                            fontFamily = FontFamily.Monospace,
                            style = MaterialTheme.typography.bodySmall,
                            modifier = Modifier.padding(8.dp).verticalScroll(rememberScrollState())
                        )
                    }
                }
            } else {
                Box(
                    modifier = Modifier.fillMaxWidth().weight(1f),
                    contentAlignment = androidx.compose.ui.Alignment.Center
                ) {
                    Column(horizontalAlignment = androidx.compose.ui.Alignment.CenterHorizontally) {
                        Icon(Icons.Default.Info, null, modifier = Modifier.size(48.dp), tint = MaterialTheme.colorScheme.onSurfaceVariant)
                        Spacer(modifier = Modifier.height(8.dp))
                        Text("输入地址查看内存内容", color = MaterialTheme.colorScheme.onSurfaceVariant)
                    }
                }
            }
        }
    }
}

private fun parseHexAddress(input: String): Long {
    return try {
        val clean = input.removePrefix("0x").removePrefix("0X").trim()
        if (clean.isEmpty()) 0L else clean.toLong(16)
    } catch (_: Exception) { 0L }
}

private fun loadDump(addr: Long, size: Int, callback: (String, String) -> Unit) {
    Thread {
        try {
            val result = XeggBridge.nativeHexDump(addr, size)
            if (result != null) {
                callback(result, "")
            } else {
                callback("", "读取失败：无法访问该地址")
            }
        } catch (e: Exception) {
            callback("", "错误: ${e.message}")
        }
    }.start()
}
