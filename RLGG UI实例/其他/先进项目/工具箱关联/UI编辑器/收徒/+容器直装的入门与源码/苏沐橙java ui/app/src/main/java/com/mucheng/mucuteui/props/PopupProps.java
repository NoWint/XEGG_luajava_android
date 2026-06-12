package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.graphics.drawable.Drawable;
import android.view.View;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.model.Value;

public class PopupProps extends BaseProps<PopupProps> {

  private Integer width;

  private Integer height;

  private Boolean focusable;

  private Boolean touchable;

  private String animation;

  public Boolean dismiss() {
    return dismiss;
  }

  public PopupProps dismiss(Boolean dismiss) {
    this.dismiss = dismiss;
    return this;
  }

  private Boolean dismiss;

  public ComponentEventBus<? extends View> contentView() {
    return contentView;
  }

  public PopupProps contentView(ComponentEventBus<? extends View> contentView) {
    this.contentView = contentView;
    return this;
  }

  private ComponentEventBus<? extends View> contentView;

  public Integer width() {
    return width;
  }

  public PopupProps width(Integer width) {
    this.width = width;
    return this;
  }

  public Integer height() {
    return height;
  }

  public PopupProps height(Integer height) {
    this.height = height;
    return this;
  }

  public Boolean focusable() {
    return focusable;
  }

  public PopupProps focusable(Boolean focusable) {
    this.focusable = focusable;
    return this;
  }

  public Boolean touchable() {
    return touchable;
  }

  public PopupProps touchable(Boolean touchable) {
    this.touchable = touchable;
    return this;
  }

  public String animation() {
    return animation;
  }

  public PopupProps animation(String animation) {
    this.animation = animation;
    return this;
  }

  public Value<Drawable> background() {
    return background;
  }

  public PopupProps background(Drawable background) {
    this.background = new Value<>(background);
    return this;
  }

  public Integer gravity() {
    return gravity;
  }

  public PopupProps gravity(Integer gravity) {
    this.gravity = gravity;
    return this;
  }

  public int[] pos() {
    return pos;
  }

  public PopupProps pos(int[] pos) {
    this.pos = pos;
    return this;
  }

  public PopupProps pos(Integer x, Integer y) {
    this.pos = new int[]{x, y};
    return this;
  }

  private Value<Drawable> background;

  private Integer gravity;

  private int[] pos;

  @Override
  protected void merge(PopupProps thisObj, PopupProps thatObj) {
    thisObj.animation = isNotNull(thatObj.animation) ? thatObj.animation : thisObj.animation;
    thisObj.pos = isNotNull(thatObj.pos) ? thatObj.pos : thisObj.pos;
    thisObj.contentView = isNotNull(thatObj.contentView) ? thatObj.contentView : thisObj.contentView;
    thisObj.gravity = isNotNull(thatObj.gravity) ? thatObj.gravity : thisObj.gravity;
    thisObj.background = isNotNull(thatObj.background) ? thatObj.background : thisObj.background;
    thisObj.width = isNotNull(thatObj.width) ? thatObj.width : thisObj.width;
    thisObj.height = isNotNull(thatObj.height) ? thatObj.height : thisObj.height;
    thisObj.touchable = isNotNull(thatObj.touchable) ? thatObj.touchable : thisObj.touchable;
    thisObj.focusable = isNotNull(thatObj.focusable) ? thatObj.focusable : thisObj.focusable;
    thisObj.dismiss = isNotNull(thatObj.dismiss) ? thatObj.dismiss : thisObj.dismiss;
  }

}
