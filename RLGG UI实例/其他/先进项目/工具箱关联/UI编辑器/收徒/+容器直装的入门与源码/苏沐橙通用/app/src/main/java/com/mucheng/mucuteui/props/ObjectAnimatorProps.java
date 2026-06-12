package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.animation.Animator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.Interpolator;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.model.Container;

public class ObjectAnimatorProps extends UnsupportedLinkedProps<ObjectAnimatorProps> {

  private String ofProp;

  private String prop;

  private ComponentEventBus<? extends View> target;

  public Boolean autoCancel() {
    return autoCancel;
  }

  public ObjectAnimatorProps autoCancel(Boolean autoCancel) {
    this.autoCancel = autoCancel;
    return this;
  }

  private Boolean autoCancel;

  private Object params;

  public String ofProp() {
    return ofProp;
  }

  public ObjectAnimatorProps ofProp(String ofProp) {
    this.ofProp = ofProp;
    return this;
  }

  public String prop() {
    return prop;
  }

  public ObjectAnimatorProps prop(String prop) {
    this.prop = prop;
    return this;
  }

  public ComponentEventBus<? extends View> target() {
    return target;
  }

  public ObjectAnimatorProps target(EventBus target) {
    this.target = (ComponentEventBus<? extends View>) target;
    return this;
  }

  public ObjectAnimatorProps target(Container container) {
    return target(container.value());
  }

  public Object params() {
    return params;
  }

  public ObjectAnimatorProps params(int... params) {
    this.params = params;
    return this;
  }

  public ObjectAnimatorProps params(float... params) {
    this.params = params;
    return this;
  }

  public Animator.AnimatorListener listener() {
    return listener;
  }

  public ObjectAnimatorProps listener(Animator.AnimatorListener listener) {
    this.listener = listener;
    return this;
  }

  public ValueAnimator.AnimatorUpdateListener updateListener() {
    return updateListener;
  }

  public ObjectAnimatorProps updateListener(ValueAnimator.AnimatorUpdateListener updateListener) {
    this.updateListener = updateListener;
    return this;
  }

  public Boolean start() {
    return start;
  }

  public ObjectAnimatorProps start(Boolean start) {
    this.start = start;
    return this;
  }

  public Interpolator interpolator() {
    return interpolator;
  }

  public ObjectAnimatorProps interpolator(Interpolator interpolator) {
    this.interpolator = interpolator;
    return this;
  }

  public TypeEvaluator<?> evaluator() {
    return evaluator;
  }

  public ObjectAnimatorProps evaluator(TypeEvaluator<?> evaluator) {
    this.evaluator = evaluator;
    return this;
  }

  public Long duration() {
    return duration;
  }

  public ObjectAnimatorProps duration(Long duration) {
    this.duration = duration;
    return this;
  }

  public Long startDelay() {
    return startDelay;
  }

  public ObjectAnimatorProps startDelay(Long startDelay) {
    this.startDelay = startDelay;
    return this;
  }

  private Animator.AnimatorListener listener;

  private ValueAnimator.AnimatorUpdateListener updateListener;

  private Boolean start;

  private Interpolator interpolator;

  private TypeEvaluator<?> evaluator;

  private Long duration;

  private Long startDelay;

  @Override
  protected void merge(ObjectAnimatorProps thisObj, ObjectAnimatorProps thatObj) {
    thisObj.target = isNotNull(thatObj.target) ? thatObj.target : thisObj.target;
    thisObj.prop = isNotNull(thatObj.prop) ? thatObj.prop : thisObj.prop;
    thisObj.ofProp = isNotNull(thatObj.ofProp) ? thatObj.ofProp : thisObj.ofProp;
    thisObj.autoCancel = isNotNull(thatObj.autoCancel) ? thatObj.autoCancel : thisObj.autoCancel;
    thisObj.duration = isNotNull(thatObj.duration) ? thatObj.duration : thisObj.duration;
    thisObj.evaluator = isNotNull(thatObj.evaluator) ? thatObj.evaluator : thisObj.evaluator;
    thisObj.interpolator = isNotNull(thatObj.interpolator) ? thatObj.interpolator : thisObj.interpolator;
    thisObj.listener = isNotNull(thatObj.listener) ? thatObj.listener : thisObj.listener;
    thisObj.params = isNotNull(thatObj.params) ? thatObj.params : thisObj.params;
    thisObj.start = isNotNull(thatObj.start) ? thatObj.start : thisObj.start;
    thisObj.startDelay = isNotNull(thatObj.startDelay) ? thatObj.startDelay : thisObj.startDelay;
    thisObj.updateListener = isNotNull(thatObj.updateListener) ? thatObj.updateListener : thisObj.updateListener;
  }
}
