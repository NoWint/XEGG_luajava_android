package com.xegg

import android.app.Application

class XeggApp : Application() {
    override fun onCreate() {
        super.onCreate()
        System.loadLibrary("xegg")
    }
}
