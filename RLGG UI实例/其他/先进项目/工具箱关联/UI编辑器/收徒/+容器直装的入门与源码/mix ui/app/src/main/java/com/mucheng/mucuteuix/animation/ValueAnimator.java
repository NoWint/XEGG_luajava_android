package com.mucheng.mucuteuix.animation;

import android.animation.ArgbEvaluator;
import android.animation.TypeEvaluator;

public class ValueAnimator extends BaseAnimator<ValueAnimator> {

  private android.animation.ValueAnimator valueAnimator;

  @Override
  protected void init() {
    valueAnimator = new android.animation.ValueAnimator();
  }

  public ValueAnimator ofInt(int... values) {
    checkValueAnimatorNotNull();
    valueAnimator.setIntValues(values);
    return this;
  }

  public ValueAnimator ofFloat(float... values) {
    checkValueAnimatorNotNull();
    valueAnimator.setFloatValues(values);
    return this;
  }

  public ValueAnimator ofArgb(int... values) {
    checkValueAnimatorNotNull();
    valueAnimator.setIntValues(values);
    valueAnimator.setEvaluator(new ArgbEvaluator());
    return this;
  }

  public ValueAnimator setRepeatCount(int value) {
    checkValueAnimatorNotNull();
    valueAnimator.setRepeatCount(value);
    return this;
  }

  public ValueAnimator setEvaluator(TypeEvaluator<?> evaluator) {
    checkValueAnimatorNotNull();
    valueAnimator.setEvaluator(evaluator);
    return this;
  }

  public ValueAnimator addUpdateListener(android.animation.ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
    checkValueAnimatorNotNull();
    valueAnimator.addUpdateListener(animatorUpdateListener);
    return this;
  }

  public ValueAnimator removeUpdateListener(android.animation.ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
    checkValueAnimatorNotNull();
    valueAnimator.removeUpdateListener(animatorUpdateListener);
    return this;
  }

  @Override
  public android.animation.ValueAnimator build() {
    return valueAnimator;
  }

  private void checkValueAnimatorNotNull() {
    checkNotNull(valueAnimator, "valueAnimator");
  }

}
