package com.mucheng.mucuteuix.animation;

import android.animation.ArgbEvaluator;
import android.view.View;

import com.mucheng.mucuteuix.base.ViewHelper;

public class ObjectAnimator extends BaseAnimator<ObjectAnimator> {

  private android.animation.ObjectAnimator objectAnimator;

  @Override
  protected void init() {
    objectAnimator = new android.animation.ObjectAnimator();
  }

  public ObjectAnimator ofInt(int... values) {
    checkObjectAnimatorNotNull();
    objectAnimator.setIntValues(values);
    return this;
  }

  public ObjectAnimator ofFloat(float... values) {
    checkObjectAnimatorNotNull();
    objectAnimator.setFloatValues(values);
    return this;
  }

  public ObjectAnimator ofArgb(int... values) {
    checkObjectAnimatorNotNull();
    objectAnimator.setIntValues(values);
    objectAnimator.setEvaluator(new ArgbEvaluator());
    return this;
  }

  public ObjectAnimator ofInt(ViewHelper<?> view, String propertyName, int... values) {
    checkObjectAnimatorNotNull();
    objectAnimator.setTarget(view.build());
    objectAnimator.setPropertyName(propertyName);
    objectAnimator.setIntValues(values);
    return this;
  }

  public ObjectAnimator ofFloat(ViewHelper<?> view, String propertyName, float... values) {
    checkObjectAnimatorNotNull();
    objectAnimator.setTarget(view.build());
    objectAnimator.setPropertyName(propertyName);
    objectAnimator.setFloatValues(values);
    return this;
  }

  public ObjectAnimator ofArgb(ViewHelper<?> view, String propertyName, int... values) {
    checkObjectAnimatorNotNull();
    objectAnimator.setTarget(view.build());
    objectAnimator.setPropertyName(propertyName);
    objectAnimator.setIntValues(values);
    objectAnimator.setEvaluator(new ArgbEvaluator());
    return this;
  }

  public ObjectAnimator setAutoCancel(boolean cancel) {
    checkObjectAnimatorNotNull();
    objectAnimator.setAutoCancel(cancel);
    return this;
  }

  public ObjectAnimator setPropertyName(String propertyName) {
    checkObjectAnimatorNotNull();
    objectAnimator.setPropertyName(propertyName);
    return this;
  }

  public ObjectAnimator addUpdateListener(android.animation.ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
    checkObjectAnimatorNotNull();
    objectAnimator.addUpdateListener(animatorUpdateListener);
    return this;
  }

  public ObjectAnimator removeUpdateListener(android.animation.ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
    checkObjectAnimatorNotNull();
    objectAnimator.removeUpdateListener(animatorUpdateListener);
    return this;
  }

  @Override
  public ObjectAnimator start() {
    View view = (View) objectAnimator.getTarget();
    if (view != null) {
      view.post(new Runnable() {
        @Override
        public void run() {
          ObjectAnimator.super.start();
        }
      });
    }
    return this;
  }

  private void checkObjectAnimatorNotNull() {
    checkNotNull(objectAnimator, "objectAnimator");
  }

  @Override
  public android.animation.ObjectAnimator build() {
    return objectAnimator;
  }

}
