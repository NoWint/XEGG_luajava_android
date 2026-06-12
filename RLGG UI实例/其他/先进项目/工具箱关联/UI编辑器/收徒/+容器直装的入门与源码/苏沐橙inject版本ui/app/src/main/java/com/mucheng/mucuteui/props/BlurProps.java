package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;

public class BlurProps extends UnsupportedLinkedProps<BlurProps> {

  public ComponentEventBus<?> eventBus() {
    return eventBus;
  }

  public BlurProps eventBus(ComponentEventBus<?> eventBus) {
    this.eventBus = eventBus;
    return this;
  }

  public Float radius() {
    return radius;
  }

  public BlurProps radius(Float radius) {
    this.radius = radius;
    return this;
  }

  private ComponentEventBus<?> eventBus;

  private Float radius;

  @Override
  protected void merge(BlurProps thisObj, BlurProps thatObj) {
    thisObj.radius = isNotNull(thatObj.radius) ? thatObj.radius : thisObj.radius;
    thisObj.eventBus = isNotNull(thatObj.eventBus) ? thatObj.eventBus : thisObj.eventBus;
  }

}
