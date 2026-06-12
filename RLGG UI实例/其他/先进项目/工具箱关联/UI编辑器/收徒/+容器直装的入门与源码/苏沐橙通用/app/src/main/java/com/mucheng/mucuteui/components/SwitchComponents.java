package com.mucheng.mucuteui.components;

import static com.mucheng.mucuteui.components.LinearComponents.LinearParams;
import static com.mucheng.mucuteui.components.LinearComponents.Row;
import static com.mucheng.mucuteui.components.LinearComponents.RowKey;
import static com.mucheng.mucuteui.components.LinearComponents.RowProps;
import static com.mucheng.mucuteui.components.ViewComponents.View;
import static com.mucheng.mucuteui.components.ViewComponents.ViewKey;
import static com.mucheng.mucuteui.components.ViewComponents.ViewProps;
import static com.mucheng.mucuteui.util.AnimationUtil.AnimatorSet;
import static com.mucheng.mucuteui.util.AnimationUtil.AnimatorSetProps;
import static com.mucheng.mucuteui.util.AnimationUtil.OfArgb;
import static com.mucheng.mucuteui.util.AnimationUtil.OfInt;
import static com.mucheng.mucuteui.util.AnimationUtil.ValueAnimator;
import static com.mucheng.mucuteui.util.AnimationUtil.ValueAnimatorProps;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawable;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawableProps;
import static com.mucheng.mucuteui.util.GravityUtil.Center;
import static com.mucheng.mucuteui.util.GravityUtil.Left;
import static com.mucheng.mucuteui.util.GravityUtil.Right;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;
import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;
import static com.mucheng.mucuteui.util.ParseUtil.parseColor;
import static com.mucheng.mucuteui.util.SizeUtil.MatchParent;
import static com.mucheng.mucuteui.util.SizeUtil.dip2px;
import static com.mucheng.mucuteui.util.SizeUtil.intDip2px;

import android.util.Log;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.listener.OnGlobalLayoutListener;
import com.mucheng.mucuteui.model.Container;
import com.mucheng.mucuteui.props.LinearProps;
import com.mucheng.mucuteui.props.SwitchProps;
import com.mucheng.mucuteui.util.MuCuteUtil;

public final class SwitchComponents {

  private SwitchComponents() {
  }

  public static ComponentEventBus<LinearLayout> Switch(final SwitchProps props) {
    MuCuteUtil.checkNotNullForProps(props);
    final boolean[] isChecked = {false};
    if (isNotNull(props.checked())) {
      isChecked[0] = props.checked();
    }

    final Container root = new Container();
    final ComponentEventBus<android.view.View> view = View(ViewProps()
        .background(GradientDrawable(GradientDrawableProps()
            .color(parseColor("#FFFFFFFF"))
            .radius(dip2px(30f))))
        .layoutParams(LinearParams()
            .width(intDip2px(12))
            .height(MatchParent)
            .gravity(Center)
            .margins(intDip2px(10), intDip2px(9), intDip2px(10), intDip2px(9))));

    return Row(RowProps()
        .link(root)
        .layoutParams(LinearParams()
            .width(intDip2px(60))
            .height(intDip2px(30))
            .margins(intDip2px(5), 0, intDip2px(5), intDip2px(15)))
        .gravity(isChecked[0] ? Right : Left)
        .background(GradientDrawable(GradientDrawableProps()
            .color(isChecked[0] ? parseColor("#FF7F7FD5") : parseColor("#FFEFEFEF"))
            .radius(dip2px(15f))))
        .onClick(new android.view.View.OnClickListener() {
          @Override
          public void onClick(android.view.View v) {
            isChecked[0] = !isChecked[0];
            updateState(root, view, isChecked[0]);
            if (isNotNull(props.onChecked())) {
              props.onChecked().onChecked(isChecked[0]);
            }
          }
        })
        .children(view)
        .copyWith(props.buttonProps())
        .onGlobalLayout(new OnGlobalLayoutListener() {
          @Override
          public void onGlobalLayout(int width, int height) {

          }
        }));
  }

  private static void updateState(final Container root, final EventBus view, boolean isChecked) {
    final com.mucheng.mucuteui.props.ViewProps<?> finalViewProps = ViewProps();
    final LinearProps cache = new LinearProps();
    if (isChecked) {
      AnimatorSet(AnimatorSetProps()
          .duration(200L)
          .together(ValueAnimator(ValueAnimatorProps()
                  .ofProp(OfArgb)
                  .params(parseColor("#FFEFEFEF"), parseColor("#FF7F7FD5"))
                  .interpolator(new AccelerateDecelerateInterpolator())
                  .updateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public void onAnimationUpdate(android.animation.ValueAnimator animation) {
                      int color = (int) animation.getAnimatedValue();
                      cache.background(GradientDrawable(GradientDrawableProps()
                          .color(color)
                          .radius(dip2px(15f))));
                      root.send(RowKey, cache);
                    }
                  })
                  .start(false)),
              ValueAnimator(ValueAnimatorProps()
                  .ofProp(OfInt)
                  .params(intDip2px(12), intDip2px(60) - intDip2px(22))
                  .interpolator(new AccelerateDecelerateInterpolator())
                  .updateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public void onAnimationUpdate(android.animation.ValueAnimator animation) {
                      float x = (int) animation.getAnimatedValue();
                      view.send(ViewKey, finalViewProps.x(x));
                    }
                  })
                  .start(false))));
    } else {
      AnimatorSet(AnimatorSetProps()
          .duration(200L)
          .together(ValueAnimator(ValueAnimatorProps()
                  .ofProp(OfArgb)
                  .params(parseColor("#FF7F7FD5"), parseColor("#FFEFEFEF"))
                  .interpolator(new AccelerateDecelerateInterpolator())
                  .updateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public void onAnimationUpdate(android.animation.ValueAnimator animation) {
                      int color = (int) animation.getAnimatedValue();
                      cache.background(GradientDrawable(GradientDrawableProps()
                          .color(color)
                          .radius(dip2px(15f))));
                      root.send(RowKey, cache);
                    }
                  })
                  .start(false)),
              ValueAnimator(ValueAnimatorProps()
                  .ofProp(OfInt)
                  .params(intDip2px(60) - intDip2px(22), intDip2px(12))
                  .interpolator(new AccelerateDecelerateInterpolator())
                  .updateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public void onAnimationUpdate(android.animation.ValueAnimator animation) {
                      float x = (int) animation.getAnimatedValue();
                      view.send(ViewKey, finalViewProps.x(x));
                    }
                  })
                  .start(false))));
    }
  }

  public static SwitchProps SwitchProps() {
    return new SwitchProps();
  }

}
