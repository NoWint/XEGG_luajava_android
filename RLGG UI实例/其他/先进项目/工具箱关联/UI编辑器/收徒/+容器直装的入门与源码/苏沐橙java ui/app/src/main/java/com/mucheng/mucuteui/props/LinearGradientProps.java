package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

public class LinearGradientProps extends UnsupportedLinkedProps<LinearGradientProps> {

  public String tile() {
    return tile;
  }

  public LinearGradientProps tile(String tile) {
    this.tile = tile;
    return this;
  }

  public int[] colors() {
    return colors;
  }

  public LinearGradientProps colors(int[] colors) {
    this.colors = colors;
    return this;
  }

  public float[] positions() {
    return positions;
  }

  public LinearGradientProps positions(float... positions) {
    this.positions = positions;
    return this;
  }

  private Float startX;

  private Float startY;

  public Float startX() {
    return startX;
  }

  public LinearGradientProps startX(Float startX) {
    this.startX = startX;
    return this;
  }

  public Float startY() {
    return startY;
  }

  public LinearGradientProps startY(Float startY) {
    this.startY = startY;
    return this;
  }

  public Float endX() {
    return endX;
  }

  public LinearGradientProps endX(Float endX) {
    this.endX = endX;
    return this;
  }

  public Float endY() {
    return endY;
  }

  public LinearGradientProps endY(Float endY) {
    this.endY = endY;
    return this;
  }

  private Float endX;

  private Float endY;

  private String tile;

  private int[] colors;

  private float[] positions;

  @Override
  protected void merge(LinearGradientProps thisObj, LinearGradientProps thatObj) {
    thisObj.startX = isNotNull(thatObj.startX) ? thatObj.startX : thisObj.startX;
    thisObj.startY = isNotNull(thatObj.startY) ? thatObj.startY : thisObj.startY;
    thisObj.endX = isNotNull(thatObj.endX) ? thatObj.endX : thisObj.endX;
    thisObj.endY = isNotNull(thatObj.endY) ? thatObj.endY : thisObj.endY;
    thisObj.colors = isNotNull(thatObj.colors) ? thatObj.colors : thisObj.colors;
    thisObj.positions = isNotNull(thatObj.positions) ? thatObj.positions : thisObj.positions;
    thisObj.tile = isNotNull(thatObj.tile) ? thatObj.tile : thisObj.tile;
  }

}
