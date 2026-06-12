package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

public class ShadowLayerProps extends UnsupportedLinkedProps<ShadowLayerProps> {

  public Float radius() {
    return radius;
  }

  public ShadowLayerProps radius(Float radius) {
    this.radius = radius;
    return this;
  }

  public Float x() {
    return x;
  }

  public ShadowLayerProps x(Float x) {
    this.x = x;
    return this;
  }

  public Float y() {
    return y;
  }

  public ShadowLayerProps y(Float y) {
    this.y = y;
    return this;
  }

  public Integer color() {
    return color;
  }

  public ShadowLayerProps color(Integer color) {
    this.color = color;
    return this;
  }

  private Float radius;

  private Float x;

  private Float y;

  private Integer color;

  @Override
  protected void merge(ShadowLayerProps thisObj, ShadowLayerProps thatObj) {
    thisObj.x = isNotNull(thatObj.x) ? thatObj.x : thisObj.x;
    thisObj.y = isNotNull(thatObj.y) ? thatObj.y : thisObj.y;
    thisObj.color = isNotNull(thatObj.color) ? thatObj.color : thisObj.color;
    thisObj.radius = isNotNull(thatObj.radius) ? thatObj.radius : thisObj.radius;
  }

}
