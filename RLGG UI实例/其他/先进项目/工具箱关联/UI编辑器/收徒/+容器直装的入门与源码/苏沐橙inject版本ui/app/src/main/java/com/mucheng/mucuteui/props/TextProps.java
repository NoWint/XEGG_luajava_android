package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.graphics.Shader;

import com.mucheng.mucuteui.model.Value;

public class TextProps extends ViewProps<TextProps> {

  private Value<String> text;

  private Float textSize;

  private Boolean isSelectable;

  private Integer color;

  private Value<Shader> shader;

  private Boolean singleLine;

  public Integer gravity() {
    return gravity;
  }

  public TextProps gravity(Integer gravity) {
    this.gravity = gravity;
    return this;
  }

  private Integer gravity;

  public Value<ShadowLayerProps> shadowLayer() {
    return shadowLayer;
  }

  public TextProps shadowLayer(ShadowLayerProps shadowLayer) {
    this.shadowLayer = new Value<>(shadowLayer);
    return this;
  }

  private Value<ShadowLayerProps> shadowLayer;

  public Value<String> text() {
    return text;
  }

  public TextProps text(String text) {
    this.text = new Value<>(text);
    return this;
  }

  public Float textSize() {
    return textSize;
  }

  public TextProps textSize(Float textSize) {
    this.textSize = textSize;
    return this;
  }

  public Boolean selectable() {
    return isSelectable;
  }

  public TextProps selectable(Boolean selectable) {
    isSelectable = selectable;
    return this;
  }

  public Integer color() {
    return color;
  }

  public TextProps color(Integer color) {
    this.color = color;
    return this;
  }

  public Value<Shader> shader() {
    return shader;
  }

  public TextProps shader(Shader shader) {
    this.shader = new Value<>(shader);
    return this;
  }

  public Boolean singleLine() {
    return singleLine;
  }

  public TextProps singleLine(Boolean singleLine) {
    this.singleLine = singleLine;
    return this;
  }

  @Override
  protected void merge(TextProps thisObj, TextProps thatObj) {
    super.merge(thisObj, thatObj);
    thisObj.text = isNotNull(thatObj.text) ? thatObj.text : thisObj.text;
    thisObj.color = isNotNull(thatObj.color) ? thatObj.color : thisObj.color;
    thisObj.isSelectable = isNotNull(thatObj.isSelectable) ? thatObj.isSelectable : thisObj.isSelectable;
    thisObj.shader = isNotNull(thatObj.shader) ? thatObj.shader : thisObj.shader;
    thisObj.shadowLayer = isNotNull(thatObj.shadowLayer) ? thatObj.shadowLayer : thisObj.shadowLayer;
    thisObj.singleLine = isNotNull(thatObj.singleLine) ? thatObj.singleLine : thisObj.singleLine;
    thisObj.textSize = isNotNull(thatObj.textSize) ? thatObj.textSize : thisObj.textSize;
    thisObj.gravity = isNotNull(thatObj.gravity) ? thatObj.gravity : thisObj.gravity;
  }
}