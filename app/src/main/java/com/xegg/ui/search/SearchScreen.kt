package com.xegg.ui.search

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.xegg.bridge.XeggBridge
import java.nio.ByteBuffer
import java.nio.ByteOrder

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SearchScreen(
    isAttached: Boolean,
    modifier: Modifier = Modifier
) {
    var searchValue by remember { mutableStateOf("") }
    var selectedType by remember { mutableIntStateOf(XeggBridge.TYPE_I32) }
    var resultCount by remember { mutableIntStateOf(0) }
    var isSearching by remember { mutableStateOf(false) }
    var hasSearched by remember { mutableStateOf(false) }
    var showResults by remember { mutableStateOf(false) }

    val typeNames = listOf("I8", "I16", "I32", "I64", "U8", "U16", "U32", "U64", "F32", "F64")
    val typeCodes = listOf(
        XeggBridge.TYPE_I8, XeggBridge.TYPE_I16, XeggBridge.TYPE_I32, XeggBridge.TYPE_I64,
        XeggBridge.TYPE_U8, XeggBridge.TYPE_U16, XeggBridge.TYPE_U32, XeggBridge.TYPE_U64,
        XeggBridge.TYPE_F32, XeggBridge.TYPE_F64
    )

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("内存搜索") },
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
            // 搜索值输入
            OutlinedTextField(
                value = searchValue,
                onValueChange = { searchValue = it },
                label = { Text("搜索值") },
                modifier = Modifier.fillMaxWidth(),
                enabled = isAttached,
                singleLine = true
            )

            Spacer(modifier = Modifier.height(12.dp))

            // 数据类型选择
            Text("数据类型", style = MaterialTheme.typography.titleSmall)
            Spacer(modifier = Modifier.height(4.dp))

            // 类型选择器（横向滚动芯片）
            Row(
                horizontalArrangement = Arrangement.spacedBy(4.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                typeNames.forEachIndexed { idx, name ->
                    FilterChip(
                        selected = selectedType == typeCodes[idx],
                        onClick = { selectedType = typeCodes[idx] },
                        label = { Text(name, style = MaterialTheme.typography.labelSmall) }
                    )
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // 搜索按钮
            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                Button(
                    onClick = {
                        if (isAttached && searchValue.isNotEmpty()) {
                            isSearching = true
                            val count = XeggBridge.nativeSearchNumber(
                                searchValue, selectedType, XeggBridge.REGION_ALL
                            )
                            resultCount = count
                            hasSearched = true
                            isSearching = false
                        }
                    },
                    enabled = isAttached && searchValue.isNotEmpty() && !isSearching,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.Search, contentDescription = null, modifier = Modifier.size(18.dp))
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("精确搜索")
                }

                if (hasSearched) {
                    OutlinedButton(
                        onClick = {
                            if (isAttached && searchValue.isNotEmpty()) {
                                val count = XeggBridge.nativeRefineSearch(searchValue)
                                resultCount = count
                            }
                        },
                        enabled = isAttached && searchValue.isNotEmpty(),
                        modifier = Modifier.weight(1f)
                    ) {
                        Icon(Icons.Default.FilterAlt, contentDescription = null, modifier = Modifier.size(18.dp))
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("继续筛选")
                    }
                }
            }

            // 模糊搜索按钮
            if (hasSearched) {
                Spacer(modifier = Modifier.height(8.dp))
                Row(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    modifier = Modifier.fillMaxWidth()
                ) {
                    FuzzyButton("变大", XeggBridge.FUZZY_INCREASED, isAttached) { cond ->
                        val count = XeggBridge.nativeFuzzySearch(cond)
                        resultCount = count
                    }
                    FuzzyButton("变小", XeggBridge.FUZZY_DECREASED, isAttached) { cond ->
                        val count = XeggBridge.nativeFuzzySearch(cond)
                        resultCount = count
                    }
                    FuzzyButton("变化", XeggBridge.FUZZY_CHANGED, isAttached) { cond ->
                        val count = XeggBridge.nativeFuzzySearch(cond)
                        resultCount = count
                    }
                    FuzzyButton("不变", XeggBridge.FUZZY_UNCHANGED, isAttached) { cond ->
                        val count = XeggBridge.nativeFuzzySearch(cond)
                        resultCount = count
                    }
                }
            }

            Spacer(modifier = Modifier.height(16.dp))

            // 搜索结果统计
            if (hasSearched) {
                Card(
                    modifier = Modifier.fillMaxWidth(),
                    colors = CardDefaults.cardColors(
                        containerColor = MaterialTheme.colorScheme.surface
                    )
                ) {
                    Row(
                        modifier = Modifier.padding(12.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text(
                            "找到 ${resultCount} 个结果",
                            style = MaterialTheme.typography.titleMedium
                        )
                        Row {
                            TextButton(onClick = { showResults = !showResults }) {
                                Text(if (showResults) "隐藏" else "查看")
                            }
                            TextButton(onClick = {
                                XeggBridge.nativeClearResults()
                                resultCount = 0
                                hasSearched = false
                            }) {
                                Text("清空")
                            }
                        }
                    }
                }
            }

            // 结果列表
            if (showResults && resultCount > 0) {
                Spacer(modifier = Modifier.height(8.dp))
                LazyColumn(
                    modifier = Modifier.fillMaxWidth().weight(1f)
                ) {
                    val displayCount = minOf(resultCount, 100)
                    itemsIndexed(List(displayCount) { it }) { _, index ->
                        val addr = XeggBridge.nativeGetResultAddress(index)
                        val valueBytes = XeggBridge.nativeGetResultValue(index)
                        val valueStr = valueBytes?.let { formatValue(it, selectedType) } ?: "??"

                        ListItem(
                            headlineContent = { Text("0x${addr.toString(16)}") },
                            trailingContent = {
                                Row(verticalAlignment = Alignment.CenterVertically) {
                                    Text(valueStr, style = MaterialTheme.typography.bodyMedium)
                                    Spacer(modifier = Modifier.width(8.dp))
                                    IconButton(onClick = {
                                        // 修改值（简单实现：直接写入搜索值）
                                        if (valueBytes != null) {
                                            XeggBridge.nativeSetValue(addr, valueBytes)
                                        }
                                    }) {
                                        Icon(Icons.Default.Edit, contentDescription = "修改", modifier = Modifier.size(18.dp))
                                    }
                                }
                            },
                            colors = ListItemDefaults.colors(
                                containerColor = MaterialTheme.colorScheme.surface
                            )
                        )
                    }
                    if (resultCount > 100) {
                        item {
                            Text(
                                "仅显示前 100 条，共 $resultCount 条",
                                modifier = Modifier.padding(16.dp),
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
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

@Composable
private fun FuzzyButton(
    label: String,
    condition: Int,
    enabled: Boolean,
    onClick: (Int) -> Unit
) {
    OutlinedButton(
        onClick = { onClick(condition) },
        enabled = enabled,
        contentPadding = PaddingValues(horizontal = 8.dp, vertical = 4.dp)
    ) {
        Text(label, style = MaterialTheme.typography.labelSmall)
    }
}

private fun formatValue(bytes: ByteArray, typeCode: Int): String {
    val buf = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
    return when (typeCode) {
        XeggBridge.TYPE_I8 -> buf.get().toString()
        XeggBridge.TYPE_I16 -> buf.short.toString()
        XeggBridge.TYPE_I32 -> buf.int.toString()
        XeggBridge.TYPE_I64 -> buf.long.toString()
        XeggBridge.TYPE_U8 -> (buf.get().toInt() and 0xFF).toString()
        XeggBridge.TYPE_U16 -> (buf.short.toInt() and 0xFFFF).toString()
        XeggBridge.TYPE_U32 -> (buf.int.toLong() and 0xFFFFFFFFL).toString()
        XeggBridge.TYPE_U64 -> buf.long.toString()
        XeggBridge.TYPE_F32 -> buf.float.toString()
        XeggBridge.TYPE_F64 -> buf.double.toString()
        else -> bytes.joinToString(" ") { "%02x".format(it) }
    }
}
