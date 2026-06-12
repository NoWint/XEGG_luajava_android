package com.xegg.bridge

object XeggBridge {
    external fun nativeAttach(pid: Int): Boolean
    external fun nativeDetach()
    external fun nativeReadMemory(addr: Long, size: Int): ByteArray?
    external fun nativeWriteMemory(addr: Long, data: ByteArray): Boolean
    external fun nativeGetRegionCount(): Int
    external fun nativeIsAttached(): Boolean
}
