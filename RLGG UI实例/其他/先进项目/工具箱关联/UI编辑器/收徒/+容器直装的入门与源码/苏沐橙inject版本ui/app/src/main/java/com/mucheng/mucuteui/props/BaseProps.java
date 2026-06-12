package com.mucheng.mucuteui.props;

import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.model.MutableValue;

public abstract class BaseProps<CastProps> implements Cloneable {

  private MutableValue<EventBus> eventBus;

  public CastProps link(MutableValue<EventBus> eventBus) {
    this.eventBus = eventBus;
    return (CastProps) this;
  }

  public MutableValue<EventBus> link() {
    return eventBus;
  }

  @Override
  public CastProps clone() {
    try {
      return (CastProps) super.clone();
    } catch (CloneNotSupportedException e) {
      throw new RuntimeException(e);
    }
  }

  public CastProps copyWith(CastProps props) {
    CastProps clonedProps = clone();
    if (props == null) {
      return clonedProps;
    }
    merge(clonedProps, props);
    return clonedProps;
  }

  protected abstract void merge(CastProps thisObj, CastProps thatObj);

}
