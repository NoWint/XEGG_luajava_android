package com.mucheng.mucuteui.impl;

import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.util.MuCuteUtil;

public abstract class BaseScrollImpl<Component> extends BaseImpl<Component> {

  public BaseScrollImpl(Component component) {
    super(component);
  }

  @Override
  public void onAccepted(EventBus eventBus, Object value) {
    MuCuteUtil.checkNotNullForProps(value);
  }
}
