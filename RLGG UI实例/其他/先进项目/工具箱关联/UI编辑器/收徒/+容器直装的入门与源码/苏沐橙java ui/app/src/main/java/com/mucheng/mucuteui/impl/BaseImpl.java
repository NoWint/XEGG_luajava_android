package com.mucheng.mucuteui.impl;

import com.mucheng.mucuteui.eventbus.EventBus;

public abstract class BaseImpl<Component> implements EventBus.Listener {

  protected final Component component;

  public BaseImpl(Component component) {
    this.component = component;
  }

}
