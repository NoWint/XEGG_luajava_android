package com.mucheng.mucuteui.example.ui;

import static com.mucheng.mucuteui.eventbus.EventBus.GlobalEventBus;

import android.view.View;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;

import java.util.List;

public class GUIGroupCommon extends GUIGroup {

  public static final String GUIGroupCommonKey = "GUIGroupCommonKey";

  public static void init() {
    GlobalEventBus.register(GUIGroupCommonKey, new GUIGroupCommon());
  }

  @Override
  protected void makeChildren(List<ComponentEventBus<? extends View>> list) {

  }

}
