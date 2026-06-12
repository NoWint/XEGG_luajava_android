package com.xegg.bridge

object XeggBridge {

    // 搜索类型常量（与 Rust SearchType 一致）
    const val TYPE_I8 = 0
    const val TYPE_I16 = 1
    const val TYPE_I32 = 2
    const val TYPE_I64 = 3
    const val TYPE_U8 = 4
    const val TYPE_U16 = 5
    const val TYPE_U32 = 6
    const val TYPE_U64 = 7
    const val TYPE_F32 = 8
    const val TYPE_F64 = 9

    // 模糊搜索条件
    const val FUZZY_INCREASED = 0
    const val FUZZY_DECREASED = 1
    const val FUZZY_CHANGED = 2
    const val FUZZY_UNCHANGED = 3

    // 区域过滤掩码
    const val REGION_C_ALLOC = 1
    const val REGION_C_BSS = 2
    const val REGION_C_HEAP = 4
    const val REGION_C_JAVA_HEAP = 8
    const val REGION_C_SO = 16
    const val REGION_C_STACK = 32
    const val REGION_C_OTHER = 64
    const val REGION_C_BAD = 128
    const val REGION_C_APP = 256
    const val REGION_ALL = -1 // 0xFFFFFFFF

    // 内存操作
    external fun nativeAttach(pid: Int): Boolean
    external fun nativeDetach()
    external fun nativeReadMemory(addr: Long, size: Int): ByteArray?
    external fun nativeWriteMemory(addr: Long, data: ByteArray): Boolean
    external fun nativeGetRegionCount(): Int
    external fun nativeIsAttached(): Boolean

    // 搜索操作
    external fun nativeSearchNumber(value: String, typeCode: Int, regionFilter: Int): Int
    external fun nativeRefineSearch(value: String): Int
    external fun nativeFuzzySearch(condition: Int): Int
    external fun nativeGetResultCount(): Int
    external fun nativeGetResultAddress(index: Int): Long
    external fun nativeGetResultValue(index: Int): ByteArray?
    external fun nativeClearResults()

    // 修改操作
    external fun nativeSetValue(addr: Long, data: ByteArray): Boolean

    // 脚本操作
    external fun nativeExecScript(code: String): Boolean
    external fun nativeExecFile(path: String): Boolean
    external fun nativeStopScript()

    // 变速齿轮
    external fun nativeSetSpeed(speed: Double): Boolean
    external fun nativeInjectSpeedHack(): Boolean
    external fun nativeRemoveSpeedHack()

    // 指针追踪
    external fun nativeResolvePointer(baseAddr: Long, offsets: ByteArray): Long

    // 内存 Dump
    external fun nativeHexDump(addr: Long, len: Int): String?

    // Shizuku 框架模式
    external fun nativeAttachWithFd(pid: Int, fd: Int): Boolean
    external fun nativeGetAccessMode(): Int

    // 虚拟空间模式
    external fun nativeLaunchInVirtualSpace(pid: Int): Boolean
}
