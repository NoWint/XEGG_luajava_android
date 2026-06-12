package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.view.ViewGroup;

public class LayoutParams extends UnsupportedLinkedProps<LayoutParams> {

  public Integer width() {
    return width;
  }

  public LayoutParams width(Integer width) {
    this.width = width;
    return this;
  }

  public Integer height() {
    return height;
  }

  public LayoutParams height(Integer height) {
    this.height = height;
    return this;
  }

  private Integer width;

  private Integer height;

  public int[] margins() {
    return margins;
  }

  public LayoutParams margins(int... margins) {
    this.margins = margins;
    return this;
  }

  public Integer gravity() {
    return gravity;
  }

  public LayoutParams gravity(Integer gravity) {
    this.gravity = gravity;
    return this;
  }

  private int[] margins;

  private Integer gravity;

  public Float weight() {
    return weight;
  }

  public LayoutParams weight(Float weight) {
    this.weight = weight;
    return this;
  }

  private Float weight;

  public Class<? extends ViewGroup.LayoutParams> mapping() {
    return mapping;
  }

  public LayoutParams mapping(Class<? extends ViewGroup.LayoutParams> mapping) {
    this.mapping = mapping;
    return this;
  }

  private Class<? extends ViewGroup.LayoutParams> mapping;

  @Override
  protected void merge(LayoutParams thisObj, LayoutParams thatObj) {
    thisObj.width = isNotNull(thatObj.width) ? thatObj.width : thisObj.width;
    thisObj.height = isNotNull(thatObj.height) ? thatObj.height : thisObj.height;
    thisObj.weight = isNotNull(thatObj.weight) ? thatObj.weight : thisObj.weight;
    thisObj.gravity = isNotNull(thatObj.gravity) ? thatObj.gravity : thisObj.gravity;
    thisObj.margins = isNotNull(thatObj.margins) ? thatObj.margins : thisObj.margins;
    thisObj.mapping = isNotNull(thatObj.mapping) ? thatObj.mapping : thisObj.mapping;
  }

}
