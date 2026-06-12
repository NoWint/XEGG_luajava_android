package com.mucheng.mucuteui.example;

import static com.mucheng.mucuteui.eventbus.EventBus.GlobalEventBus;
import static com.mucheng.mucuteui.example.ui.FloatButton.FloatButtonKey;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.view.WindowManager;

import com.mucheng.mucuteui.example.ui.ClickGUI;
import com.mucheng.mucuteui.example.ui.FloatButton;
import com.mucheng.mucuteui.util.MuCuteUtil;

/**
 * Copyright 2023 SuMuCheng All Rights Reserved.
 * QQ: 3578557729
 * QQ群: 204677717
 * Author: SuMuCheng（苏沐橙）
 * 本源码仅包括 UI 调用库、Example
 * 二改请保留此注释、作者信息、以及 LICENSE 文件
 */
public class MainActivity extends Activity {

  @SuppressLint("RtlHardcoded")
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    // 初始化 MuCuteUI
    MuCuteUtil.initialize(this);
    FloatButton.init();
    ClickGUI.init();
    GlobalEventBus.send(FloatButtonKey);
  }

}