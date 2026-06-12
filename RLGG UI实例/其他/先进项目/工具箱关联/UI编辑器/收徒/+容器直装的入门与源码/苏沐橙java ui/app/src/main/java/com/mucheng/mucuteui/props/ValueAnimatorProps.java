package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.animation.Animator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.view.animation.Interpolator;

public class ValueAnimatorProps extends UnsupportedLinkedProps<ValueAnimatorProps> {

  private String ofProp;

  public Boolean start() {
    return start;
  }

  public ValueAnimatorProps start(Boolean start) {
    this.start = start;
    return this;
  }

  private Boolean start;

  public ValueAnimator.AnimatorUpdateListener updateListener() {
    return updateListener;
  }

  public ValueAnimatorProps updateListener(ValueAnimator.AnimatorUpdateListener updateListener) {
    this.updateListener = updateListener;
    return this;
  }

  private ValueAnimator.AnimatorUpdateListener updateListener;

  public Animator.AnimatorListener listener() {
    return listener;
  }

  public ValueAnimatorProps listener(Animator.AnimatorListener listener) {
    this.listener = listener;
    return this;
  }

  private Animator.AnimatorListener listener;

  public Interpolator interpolator() {
    return interpolator;
  }

  public ValueAnimatorProps interpolator(Interpolator interpolator) {
    this.interpolator = interpolator;
    return this;
  }

  private Interpolator interpolator;

  public TypeEvaluator<?> evaluator() {
    return evaluator;
  }

  public ValueAnimatorProps evaluator(TypeEvaluator<?> evaluator) {
    this.evaluator = evaluator;
    return this;
  }

  private TypeEvaluator<?> evaluator;

  public Long duration() {
    return duration;
  }

  public ValueAnimatorProps duration(Long duration) {
    this.duration = duration;
    return this;
  }

  private Long duration;

  public Long startDelay() {
    return startDelay;
  }

  public ValueAnimatorProps startDelay(Long startDelay) {
    this.startDelay = startDelay;
    return this;
  }

  private Long startDelay;

  public String ofProp() {
    return ofProp;
  }

  public ValueAnimatorProps ofProp(String ofProp) {
    this.ofProp = ofProp;
    return this;
  }

  public Object params() {
    return params;
  }

  public ValueAnimatorProps params(int... params) {
    this.params = params;
    return this;
  }

  public ValueAnimatorProps params(float... params) {
    this.params = params;
    return this;
  }

  private Object params;

  @Override
  protected void merge(ValueAnimatorProps thisObj, ValueAnimatorProps thatObj) {
    thisObj.ofProp = isNotNull(thatObj.ofProp) ? thatObj.ofProp : thisObj.ofProp;
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
