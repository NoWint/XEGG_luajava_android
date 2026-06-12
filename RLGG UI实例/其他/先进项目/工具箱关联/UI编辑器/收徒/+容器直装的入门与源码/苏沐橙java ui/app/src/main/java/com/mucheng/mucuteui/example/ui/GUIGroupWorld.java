package com.mucheng.mucuteui.example.ui;

import static com.mucheng.mucuteui.eventbus.EventBus.GlobalEventBus;

import android.view.View;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;

import java.util.List;

public class GUIGroupWorld extends GUIGroup {

  public static final String GUIGroupWorldKey = "GUIGroupWorldKey";

  public static void init() {
    GlobalEventBus.register(GUIGroupWorldKey, new GUIGroupWorld());
  }

  @Override
  protected void makeChildren(List<ComponentEventBus<? extends View>> list) {

  }

}
