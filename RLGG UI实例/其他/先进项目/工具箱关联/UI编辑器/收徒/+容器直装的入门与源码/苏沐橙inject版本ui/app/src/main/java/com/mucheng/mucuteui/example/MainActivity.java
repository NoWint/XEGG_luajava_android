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
import android.content.res.Configuration;
import android.view.OrientationEventListener;
import android.hardware.SensorManager;
import android.widget.Toast;
import android.widget.FrameLayout;
import android.view.ViewGroup;
import android.view.View;
import android.widget.TextView;
import com.mucheng.mucuteui.util.SizeUtil;
import android.view.Gravity;
import com.mucheng.mucuteui.components.PopupComponents;

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
	
	if (!PopupComponents.POPUP_MODE.equals("PopupWindow")) {
	    addContentView(makeUI(), new ViewGroup.LayoutParams(-1, -1));
	}
	
	FloatButton.init();
	ClickGUI.init();
	GlobalEventBus.send(FloatButtonKey);
  }
  
  private View makeUI() {
	  FrameLayout root = new FrameLayout(this);
	  TextView textView = new TextView(this);
	  textView.setText("如果没有悬浮窗出现，请检查是否给予了悬浮窗权限!");
	  textView.setTextSize(18f);
	  FrameLayout.LayoutParams layoutParams =  new FrameLayout.LayoutParams(-2, -2);
	  layoutParams.gravity = Gravity.CENTER;
	  layoutParams.setMargins(SizeUtil.intDip2px(15), 0, SizeUtil.intDip2px(15), 0);
	  root.addView(textView, layoutParams);
	  return root;
  }

}
