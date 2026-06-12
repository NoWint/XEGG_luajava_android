package com.mucheng.mucuteui.example.ui;

import static com.mucheng.mucuteui.eventbus.EventBus.GlobalEventBus;

import android.view.View;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;

import java.util.List;

public class GUIGroupSetting extends GUIGroup {

  public static final String GUIGroupSettingKey = "GUIGroupSettingKey";

  public static void init() {
    GlobalEventBus.register(GUIGroupSettingKey, new GUIGroupSetting());
  }

  @Override
  protected void makeChildren(List<ComponentEventBus<? extends View>> list) {

  }

}
