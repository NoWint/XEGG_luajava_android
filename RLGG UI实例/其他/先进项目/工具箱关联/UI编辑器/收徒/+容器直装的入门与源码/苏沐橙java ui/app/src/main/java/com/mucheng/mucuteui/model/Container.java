package com.mucheng.mucuteui.model;

import com.mucheng.mucuteui.eventbus.EventBus;

public class Container extends MutableValue<EventBus> {

  public void send(String key, Object value) {
    if (this.value != null) {
      this.value.send(key, value);
    }
  }

  public void send(String key) {
    send(key, null);
  }

}
