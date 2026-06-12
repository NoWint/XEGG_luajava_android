package com.mucheng.mucuteuix.animation;

import android.view.View;

public class Animator extends BaseAnimator<Animator> {

  private final android.animation.Animator animator;

  private View target;

  public Animator(android.animation.Animator animator) {
    super();
    this.animator = animator;
  }

  public Animator(android.animation.Animator animator, View target) {
    super();
    this.animator = animator;
    this.target = target;
  }

  @Override
  public android.animation.Animator build() {
    return animator;
  }

  @Override
  public Animator start() {
    if (target != null) {
      target.post(new Runnable() {
        @Override
        public void run() {
          Animator.super.start();
          target.removeCallbacks(this);
        }
      });
      return this;
    } else {
      return super.start();
    }
  }

  @Override
  protected void init() {
  }

}
