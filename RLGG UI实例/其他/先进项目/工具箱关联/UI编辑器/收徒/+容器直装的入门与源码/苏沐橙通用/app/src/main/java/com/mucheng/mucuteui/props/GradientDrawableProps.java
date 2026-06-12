package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

public class GradientDrawableProps extends UnsupportedLinkedProps<GradientDrawableProps> {

  private String orientation;

  private String type;

  private String shape;

  public String orientation() {
    return orientation;
  }

  public GradientDrawableProps orientation(String orientation) {
    this.orientation = orientation;
    return this;
  }

  public String type() {
    return type;
  }

  public GradientDrawableProps type(String type) {
    this.type = type;
    return this;
  }

  public String shape() {
    return shape;
  }

  public GradientDrawableProps shape(String shape) {
    this.shape = shape;
    return this;
  }

  public float[] radius() {
    return radius;
  }

  public GradientDrawableProps radius(float[] radius) {
    this.radius = radius;
    return this;
  }

  public GradientDrawableProps radius(float radius) {
    this.radius = new float[]{radius, radius, radius, radius};
    return this;
  }

  public int[] colors() {
    return colors;
  }

  public GradientDrawableProps colors(int... colors) {
    this.colors = colors;
    return this;
  }

  private float[] radius;

  private int[] colors;

  public Integer color() {
    return color;
  }

  public GradientDrawableProps color(Integer color) {
    this.color = color;
    return this;
  }

  private Integer color;

  @Override
  protected void merge(GradientDrawableProps thisObj, GradientDrawableProps thatObj) {
    thisObj.radius = isNotNull(thatObj.radius) ? thatObj.radius : thisObj.radius;
    thisObj.orientation = isNotNull(thatObj.orientation) ? thatObj.orientation : thisObj.orientation;
    thisObj.type = isNotNull(thatObj.type) ? thatObj.type : thisObj.type;
    thisObj.shape = isNotNull(thatObj.shape) ? thatObj.shape : thisObj.shape;
    thisObj.color = isNotNull(thatObj.color) ? thatObj.color : thisObj.color;
    thisObj.colors = isNotNull(thatObj.colors) ? thatObj.colors : thisObj.colors;
  }

}
