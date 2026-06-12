package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.animation.Animator;
import android.view.View;
import android.view.animation.Interpolator;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.model.Container;

public class RevealAnimatorProps extends UnsupportedLinkedProps<RevealAnimatorProps> {

  private Integer centerX;

  private Integer centerY;

  private Float startRadius;

  public Integer centerX() {
    return centerX;
  }

  public RevealAnimatorProps centerX(Integer centerX) {
    this.centerX = centerX;
    return this;
  }

  public Integer centerY() {
    return centerY;
  }

  public RevealAnimatorProps centerY(Integer centerY) {
    this.centerY = centerY;
    return this;
  }

  public Float startRadius() {
    return startRadius;
  }

  public RevealAnimatorProps startRadius(Float startRadius) {
    this.startRadius = startRadius;
    return this;
  }

  public Float endRadius() {
    return endRadius;
  }

  public RevealAnimatorProps endRadius(Float endRadius) {
    this.endRadius = endRadius;
    return this;
  }

  public ComponentEventBus<? extends View> target() {
    return target;
  }

  public RevealAnimatorProps target(EventBus target) {
    this.target = (ComponentEventBus<? extends View>) target;
    return this;
  }

  public RevealAnimatorProps target(Container container) {
    return target(container.value());
  }

  public Long duration() {
    return duration;
  }

  public RevealAnimatorProps duration(Long duration) {
    this.duration = duration;
    return this;
  }

  public Long startDelay() {
    return startDelay;
  }

  public RevealAnimatorProps startDelay(Long startDelay) {
    this.startDelay = startDelay;
    return this;
  }

  public Interpolator interpolator() {
    return interpolator;
  }

  public RevealAnimatorProps interpolator(Interpolator interpolator) {
    this.interpolator = interpolator;
    return this;
  }

  public Animator.AnimatorListener listener() {
    return listener;
  }

  public RevealAnimatorProps listener(Animator.AnimatorListener listener) {
    this.listener = listener;
    return this;
  }

  private Float endRadius;

  private ComponentEventBus<? extends View> target;

  private Long duration;

  private Long startDelay;

  public Boolean start() {
    return start;
  }

  public RevealAnimatorProps start(Boolean start) {
    this.start = start;
    return this;
  }

  private Boolean start;

  private Interpolator interpolator;

  private Animator.AnimatorListener listener;

  @Override
  protected void merge(RevealAnimatorProps thisObj, RevealAnimatorProps thatObj) {
    thisObj.duration = isNotNull(thatObj.duration) ? thatObj.duration : thisObj.duration;
    thisObj.interpolator = isNotNull(thatObj.interpolator) ? thatObj.interpolator : thisObj.interpolator;
    thisObj.listener = isNotNull(thatObj.listener) ? thatObj.listener : thisObj.listener;
    thisObj.start = isNotNull(thatObj.start) ? thatObj.start : thisObj.start;
    thisObj.startDelay = isNotNull(thatObj.startDelay) ? thatObj.startDelay : thisObj.startDelay;
    thisObj.centerX = isNotNull(thatObj.centerX) ? thatObj.centerX : thisObj.centerX;
    thisObj.centerY = isNotNull(thatObj.centerY) ? thatObj.centerY : thisObj.centerY;
    thisObj.startRadius = isNotNull(thatObj.startRadius) ? thatObj.startRadius : thisObj.startRadius;
    thisObj.endRadius = isNotNull(thatObj.endRadius) ? thatObj.endRadius : thisObj.endRadius;
    thisObj.target = isNotNull(thatObj.target) ? thatObj.target : thisObj.target;
  }

}
