package com.mucheng.mucuteui.example.ui;

import static com.mucheng.mucuteui.eventbus.EventBus.GlobalEventBus;

import android.view.View;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;

import java.util.List;

public class GUIGroupPVP extends GUIGroup {

  public static final String GUIGroupPVPKey = "GUIGroupPVPKey";

  public static void init() {
    GlobalEventBus.register(GUIGroupPVPKey, new GUIGroupPVP());
  }

  @Override
  protected void makeChildren(List<ComponentEventBus<? extends View>> list) {

  }

}
