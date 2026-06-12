package com.mucheng.mucuteuix.example.application;

import android.app.Application;

import com.mucheng.mucuteuix.example.handler.CrashHandler;

public class AppContext extends Application {

  @Override
  public void onCreate() {
    super.onCreate();
    CrashHandler.init(getApplicationContext());
  }
}
