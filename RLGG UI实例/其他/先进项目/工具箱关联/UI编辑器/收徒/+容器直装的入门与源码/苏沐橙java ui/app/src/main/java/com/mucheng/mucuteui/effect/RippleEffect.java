package com.mucheng.mucuteui.effect;

import static com.mucheng.mucuteui.components.LinearComponents.Column;
import static com.mucheng.mucuteui.components.LinearComponents.LinearProps;
import static com.mucheng.mucuteui.components.PopupComponents.Popup;
import static com.mucheng.mucuteui.components.PopupComponents.PopupKey;
import static com.mucheng.mucuteui.components.PopupComponents.PopupProps;
import static com.mucheng.mucuteui.util.AnimationUtil.AnimatorSet;
import static com.mucheng.mucuteui.util.AnimationUtil.AnimatorSetProps;
import static com.mucheng.mucuteui.util.AnimationUtil.ObjectAnimator;
import static com.mucheng.mucuteui.util.AnimationUtil.ObjectAnimatorProps;
import static com.mucheng.mucuteui.util.AnimationUtil.OfFloat;
import static com.mucheng.mucuteui.util.AnimationUtil.RevealAnimator;
import static com.mucheng.mucuteui.util.AnimationUtil.RevealAnimatorProps;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawable;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawableProps;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;
import static com.mucheng.mucuteui.util.ParseUtil.parseColor;
import static com.mucheng.mucuteui.util.SizeUtil.H;
import static com.mucheng.mucuteui.util.SizeUtil.MatchParent;
import static com.mucheng.mucuteui.util.SizeUtil.W;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.PopupWindow;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.listener.OnPostListener;
import com.mucheng.mucuteui.model.Container;
import com.mucheng.mucuteui.props.RippleProps;

public final class RippleEffect {
  private RippleEffect() {
  }

  public static ComponentEventBus<PopupWindow> Ripple(RippleProps pProps) {
    final RippleProps props = pProps != null ? pProps : new RippleProps();
    final int x = isNotNull(props.x()) ? props.x() : W() / 2;
    final int y = isNotNull(props.y()) ? props.y() : H() / 2;
    final long duration = isNotNull(props.duration()) ? props.duration() : 1000L;
    final Container popup = new Container();
    final Container column = new Container();
    return Popup(PopupProps()
        .link(popup)
        .width(MatchParent)
        .height(MatchParent)
        .focusable(false)
        .background(null)
        .contentView(Column(LinearProps()
            .link(column)
            .alpha(0f) // 这里设置 alpha 为 0f 是因为 ViewRoot 最先 post 任务, 会出现白色闪烁, 那就默认设置为不透明即可
            .background(GradientDrawable(GradientDrawableProps()
                .color(parseColor("#AFFFFFFF")))
            ).postOnce(new OnPostListener() {
              @Override
              public void post(int width, int height) {
                AnimatorSet(AnimatorSetProps()
                    .duration(duration)
                    .together(RevealAnimator(RevealAnimatorProps()
                            .centerX(x)
                            .centerY(y)
                            .startRadius(0f)
                            .endRadius(H() * 1.2f)
                            .target(column)
                            .start(false)),
                        ObjectAnimator(ObjectAnimatorProps()
                            .ofProp(OfFloat)
                            .prop("alpha")
                            .params(1f, 0f)
                            .target(column)
                            .start(false)
                            .listener(new AnimatorListenerAdapter() {
                              @Override
                              public void onAnimationEnd(Animator animation) {
                                super.onAnimationEnd(animation);
                                popup.send(PopupKey, PopupProps().dismiss(true));
                              }
                            })
                        ))
                );
              }
            }))
        ));
  }

  public static ComponentEventBus<PopupWindow> Ripple() {
    return Ripple(null);
  }

  public static RippleProps RippleProps() {
    return new RippleProps();
  }

}
