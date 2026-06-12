package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

public class RippleProps extends UnsupportedLinkedProps<RippleProps> {

  public Integer x() {
    return x;
  }

  public RippleProps x(Integer x) {
    this.x = x;
    return this;
  }

  public Integer y() {
    return y;
  }

  public RippleProps y(Integer y) {
    this.y = y;
    return this;
  }

  public Long duration() {
    return duration;
  }

  public RippleProps duration(Long duration) {
    this.duration = duration;
    return this;
  }

  private Integer x;

  private Integer y;

  private Long duration;

  @Override
  protected void merge(RippleProps thisObj, RippleProps thatObj) {
    thisObj.x = isNotNull(thatObj.x) ? thatObj.x : thisObj.x;
    thisObj.y = isNotNull(thatObj.y) ? thatObj.y : thisObj.y;
    thisObj.duration = isNotNull(thatObj.duration) ? thatObj.duration : thisObj.duration;
  }

}
