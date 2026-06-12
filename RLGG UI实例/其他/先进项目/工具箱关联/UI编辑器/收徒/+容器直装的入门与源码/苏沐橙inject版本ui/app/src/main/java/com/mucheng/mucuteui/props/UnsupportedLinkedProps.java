package com.mucheng.mucuteui.props;

import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.model.MutableValue;

public abstract class UnsupportedLinkedProps<CastProps> extends BaseProps<CastProps> {

  @Override
  public CastProps link(MutableValue<EventBus> eventBus) {
    throw new UnsupportedOperationException();
  }

  @Override
  public MutableValue<EventBus> link() {
    throw new UnsupportedOperationException();
  }
}
