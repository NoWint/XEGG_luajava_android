package com.xegg

import android.app.Application
import com.xegg.bridge.LuaJavaBridge
import com.xegg.bridge.ShizukuHelper

class XeggApp : Application() {
    override fun onCreate() {
        super.onCreate()
        System.loadLibrary("xegg")
        ShizukuHelper.init(this)
        LuaJavaBridge.init(this)
    }
}
