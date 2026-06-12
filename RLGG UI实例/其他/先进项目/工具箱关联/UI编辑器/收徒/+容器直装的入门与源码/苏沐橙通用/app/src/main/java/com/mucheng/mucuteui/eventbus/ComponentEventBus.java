package com.mucheng.mucuteui.eventbus;

public class ComponentEventBus<Component> extends EventBus {

  private final Component component;

  public ComponentEventBus(Component component) {
    this.component = component;
  }

  public Component component() {
    return component;
  }

}
