package com.mucheng.mucuteui.example.application;

import android.app.Application;

import com.mucheng.mucuteui.example.handler.CrashHandler;

public class AppContext extends Application {

  @Override
  public void onCreate() {
    super.onCreate();
    CrashHandler.init(getApplicationContext());
  }

}
