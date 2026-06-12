package com.mucheng.mucuteuix.animation;

import android.animation.Animator;

public class AnimatorSet extends BaseAnimator<AnimatorSet> {

  private android.animation.AnimatorSet animatorSet;

  @Override
  protected void init() {
    animatorSet = new android.animation.AnimatorSet();
  }

  public AnimatorSet playQueue(BaseAnimator<?>... animators) {
    android.animation.AnimatorSet.Builder builder = null;
    for (BaseAnimator<?> animator : animators) {
      if (builder != null) {
        builder.before(animator.build());
      } else {
        builder = animatorSet.play(animator.build());
      }
    }
    return this;
  }

  public AnimatorSet playTogether(BaseAnimator<?>... animators) {
    final android.animation.Animator[] animatorArray = new Animator[animators.length];
    for (int index = 0; index < animators.length; index++) {
      animatorArray[index] = animators[index].build();
    }
    animatorSet.playTogether(animatorArray);
    return this;
  }

  @Override
  public android.animation.AnimatorSet build() {
    return animatorSet;
  }
}
