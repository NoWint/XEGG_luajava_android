package com.mucheng.mucuteui.util;

import static com.mucheng.mucuteui.util.MuCuteUtil.checkNotNull;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNull;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.view.ViewAnimationUtils;

import com.mucheng.mucuteui.props.AnimatorSetProps;
import com.mucheng.mucuteui.props.ObjectAnimatorProps;
import com.mucheng.mucuteui.props.RevealAnimatorProps;
import com.mucheng.mucuteui.props.ValueAnimatorProps;

import java.util.List;

public final class AnimationUtil {

  private AnimationUtil() {
  }

  public static final String OfInt = "OfInt";

  public static final String OfFloat = "OfFloat";

  public static final String OfArgb = "OfArgb";

  public static ValueAnimator ValueAnimator(ValueAnimatorProps pProps) {
    final ValueAnimatorProps props = pProps != null ? pProps : new ValueAnimatorProps();
    checkNotNull(props.ofProp(), "ofProp cannot be null");
    checkNotNull(props.params(), "params cannot be null");

    ValueAnimator animator;
    switch (props.ofProp()) {
      case OfInt:
        animator = ValueAnimator.ofInt((int[]) props.params());
        break;
      case OfFloat:
        animator = ValueAnimator.ofFloat((float[]) props.params());
        break;
      case OfArgb:
        animator = ValueAnimator.ofArgb((int[]) props.params());
        animator.setEvaluator(new ArgbEvaluator());
        break;
      default:
        throw new IllegalArgumentException("No matching result.");
    }
    if (isNotNull(props.duration())) {
      animator.setDuration(props.duration());
    } else {
      animator.setDuration(1000L);
    }
    if (isNotNull(props.startDelay())) {
      animator.setStartDelay(props.startDelay());
    }
    if (isNotNull(props.evaluator())) {
      animator.setEvaluator(props.evaluator());
    }
    if (isNotNull(props.interpolator())) {
      animator.setInterpolator(props.interpolator());
    }
    if (isNotNull(props.listener())) {
      animator.addListener(props.listener());
    }
    if (isNotNull(props.updateListener())) {
      animator.addUpdateListener(props.updateListener());
    }
    if (isNull(props.start())) {
      animator.start();
    } else {
      boolean start = props.start();
      if (start) {
        animator.start();
      }
    }
    return animator;
  }

  public static ObjectAnimator ObjectAnimator(ObjectAnimatorProps pProps) {
    final ObjectAnimatorProps props = pProps != null ? pProps : new ObjectAnimatorProps();
    checkNotNull(props.ofProp(), "ofProp cannot be null");
    checkNotNull(props.prop(), "prop cannot be null");
    checkNotNull(props.params(), "params cannot be null");
    checkNotNull(props.target(), "target cannot be null");


    final ObjectAnimator animator;
    switch (props.ofProp()) {
      case OfInt:
        animator = ObjectAnimator.ofInt(props.target().component(), props.prop(), (int[]) props.params());
        break;
      case OfFloat:
        animator = ObjectAnimator.ofFloat(props.target().component(), props.prop(), (float[]) props.params());
        break;
      case OfArgb:
        animator = ObjectAnimator.ofInt(props.target().component(), props.prop(), (int[]) props.params());
        animator.setEvaluator(new ArgbEvaluator());
        break;
      default:
        throw new IllegalArgumentException("No matching result.");
    }
    if (isNotNull(props.duration())) {
      animator.setDuration(props.duration());
    } else {
      animator.setDuration(1000L);
    }
    if (isNotNull(props.startDelay())) {
      animator.setStartDelay(props.startDelay());
    }
    if (isNotNull(props.evaluator())) {
      animator.setEvaluator(props.evaluator());
    }
    if (isNotNull(props.interpolator())) {
      animator.setInterpolator(props.interpolator());
    }
    if (isNotNull(props.listener())) {
      animator.addListener(props.listener());
    }
    if (isNotNull(props.updateListener())) {
      animator.addUpdateListener(props.updateListener());
    }
    if (isNotNull(props.autoCancel())) {
      animator.setAutoCancel(props.autoCancel());
    }
    props.target().component().post(new Runnable() {
      @Override
      public void run() {
        if (isNull(props.start())) {
          animator.start();
        } else {
          boolean start = props.start();
          if (start) {
            animator.start();
          }
        }
      }
    });
    return animator;
  }

  public static Animator RevealAnimator(RevealAnimatorProps pProps) {
    final RevealAnimatorProps props = pProps != null ? pProps : new RevealAnimatorProps();
    checkNotNull(props.centerX(), "centerX cannot be null.");
    checkNotNull(props.centerY(), "centerY cannot be null.");
    checkNotNull(props.startRadius(), "startRadius cannot be null.");
    checkNotNull(props.endRadius(), "endRadius cannot be null.");
    checkNotNull(props.target(), "target cannot be null.");

    final Animator animator = ViewAnimationUtils.createCircularReveal(props.target().component(), props.centerX(), props.centerY(), props.startRadius(), props.endRadius());
    if (isNotNull(props.duration())) {
      animator.setDuration(props.duration());
    } else {
      animator.setDuration(1000L);
    }
    if (isNotNull(props.startDelay())) {
      animator.setStartDelay(props.startDelay());
    }
    if (isNotNull(props.interpolator())) {
      animator.setInterpolator(props.interpolator());
    }
    if (isNotNull(props.listener())) {
      animator.addListener(props.listener());
    }
    props.target().component().post(new Runnable() {
      @Override
      public void run() {
        if (isNull(props.start())) {
          animator.start();
        } else {
          boolean start = props.start();
          if (start) {
            animator.start();
          }
        }
      }
    });
    return animator;
  }

  public static AnimatorSet AnimatorSet(AnimatorSetProps pProps) {
    final AnimatorSetProps props = pProps != null ? pProps : new AnimatorSetProps();
    final AnimatorSet animatorSet = new AnimatorSet();
    final List<Animator> queue = props.queue();
    final List<Animator> together = props.together();
    AnimatorSet.Builder builder = null;
    if (isNotNull(queue)) {
      for (int index = 0; index < queue.size(); index++) {
        if (builder != null) {
          builder.before(queue.get(index));
        }
        builder = animatorSet.play(queue.get(index));
      }
    }
    if (together != null) {
      animatorSet.playTogether(together);
    }
    if (isNotNull(props.startDelay())) {
      animatorSet.setStartDelay(props.startDelay());
    }
    if (isNotNull(props.listener())) {
      animatorSet.addListener(props.listener());
    }
    if (isNotNull(props.duration())) {
      animatorSet.setDuration(props.duration());
    }
    if (isNotNull(props.start())) {
      boolean start = props.start();
      if (start) {
        animatorSet.start();
      }
    } else {
      animatorSet.start();
    }
    return animatorSet;
  }

  public static ValueAnimator ValueAnimator() {
    return ValueAnimator(null);
  }

  public static ValueAnimator ObjectAnimator() {
    return ObjectAnimator(null);
  }

  public static Animator RevealAnimator() {
    return RevealAnimator(null);
  }

  public static AnimatorSet AnimatorSet() {
    return AnimatorSet(null);
  }

  public static ValueAnimatorProps ValueAnimatorProps() {
    return new ValueAnimatorProps();
  }

  public static ObjectAnimatorProps ObjectAnimatorProps() {
    return new ObjectAnimatorProps();
  }

  public static RevealAnimatorProps RevealAnimatorProps() {
    return new RevealAnimatorProps();
  }

  public static AnimatorSetProps AnimatorSetProps() {
    return new AnimatorSetProps();
  }

}
