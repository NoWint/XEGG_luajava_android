package com.mucheng.mucuteuix.animation;

import android.animation.Animator;
import android.animation.TimeInterpolator;

import com.mucheng.mucuteuix.base.BaseHelper;
import com.mucheng.mucuteuix.base.ViewHelper;

public abstract class BaseAnimator<T extends BaseHelper> extends BaseHelper {

  public T setDuration(long duration) {
    build().setDuration(duration);
    return self();
  }

  public T setStartDelay(long startDelay) {
    build().setStartDelay(startDelay);
    return self();
  }

  public T setInterpolator(TimeInterpolator interpolator) {
    build().setInterpolator(interpolator);
    return self();
  }

  public T setTarget(ViewHelper<?> target) {
    build().setTarget(target.build());
    return self();
  }

  public T addListener(Animator.AnimatorListener animatorListener) {
    build().addListener(animatorListener);
    return self();
  }

  public T removeListener(Animator.AnimatorListener animatorListener) {
    build().removeListener(animatorListener);
    return self();
  }

  public T start() {
    build().start();
    return self();
  }

  public T cancel() {
    build().cancel();
    return self();
  }

  public T pause() {
    build().pause();
    return self();
  }

  public T resume() {
    build().resume();
    return self();
  }

  public T end() {
    build().end();
    return self();
  }

  public abstract Animator build();

  private T self() {
    return (T) this;
  }

}
