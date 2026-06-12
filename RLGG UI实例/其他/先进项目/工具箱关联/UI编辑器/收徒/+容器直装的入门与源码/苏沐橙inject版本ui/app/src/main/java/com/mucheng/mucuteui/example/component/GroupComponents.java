package com.mucheng.mucuteui.example.component;

import static com.mucheng.mucuteui.components.LinearComponents.Column;
import static com.mucheng.mucuteui.components.LinearComponents.ColumnKey;
import static com.mucheng.mucuteui.components.LinearComponents.LinearParams;
import static com.mucheng.mucuteui.components.TextComponents.Text;
import static com.mucheng.mucuteui.components.TextComponents.TextKey;
import static com.mucheng.mucuteui.components.TextComponents.TextProps;
import static com.mucheng.mucuteui.util.AnimationUtil.ObjectAnimator;
import static com.mucheng.mucuteui.util.AnimationUtil.ObjectAnimatorProps;
import static com.mucheng.mucuteui.util.AnimationUtil.OfFloat;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawable;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawableProps;
import static com.mucheng.mucuteui.util.GravityUtil.Center;
import static com.mucheng.mucuteui.util.MuCuteUtil.checkNotNullForProps;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;
import static com.mucheng.mucuteui.util.ParseUtil.parseColor;
import static com.mucheng.mucuteui.util.SizeUtil.MatchParent;
import static com.mucheng.mucuteui.util.SizeUtil.WrapContent;
import static com.mucheng.mucuteui.util.SizeUtil.dip2px;
import static com.mucheng.mucuteui.util.SizeUtil.intDip2px;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.example.props.GroupProps;
import com.mucheng.mucuteui.props.LinearProps;
import com.mucheng.mucuteui.util.MuCuteUtil;

public final class GroupComponents {

  private GroupComponents() {
  }

  public static final String GroupKey = "GroupKey";

  public static ComponentEventBus<LinearLayout> Group(GroupProps props) {
    checkNotNullForProps(props);
    final boolean animatedText = props.animatedText();
    final com.mucheng.mucuteui.props.TextProps textProps = TextProps()
        .textSize(12f)
        .color(parseColor("#FF828282"))
        .layoutParams(LinearParams()
            .width(WrapContent)
            .height(WrapContent)
            .gravity(Center)
            .margins(intDip2px(5), intDip2px(5), intDip2px(5), intDip2px(5))
        ).copyWith(props.textProps());
    final ComponentEventBus<TextView> text = Text(textProps);
    final LinearProps buttonProps = new LinearProps()
        .layoutParams(LinearParams()
            .width(MatchParent)
            .height(intDip2px(30))
            .margins(intDip2px(5), 0, intDip2px(5), intDip2px(15))
        )
        .gravity(Center)
        .focusable(true)
        .clickable(true)
        .background(GradientDrawable(GradientDrawableProps()
            .color(parseColor("#FFEfEfEf"))
            .radius(dip2px(10f)))
        )
        .children(text)
        .copyWith(props.buttonProps());
    return (ComponentEventBus<LinearLayout>) Column(buttonProps).register(GroupKey, new EventBus.Listener() {
      @Override
      public void onAccepted(EventBus eventBus, Object value) {
        MuCuteUtil.checkNotNullForProps(value);
        final GroupProps props = (GroupProps) value;
        if (isNotNull(props.textProps())) {
          if (animatedText) {
            ObjectAnimator(ObjectAnimatorProps()
                .ofProp(OfFloat)
                .prop("alpha")
                .params(1f, 0f)
                .target(text)
                .duration(100L)
                .listener(new AnimatorListenerAdapter() {
                  @Override
                  public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    text.send(TextKey, textProps.copyWith(props.textProps()));
                    ObjectAnimator(ObjectAnimatorProps()
                        .ofProp(OfFloat)
                        .prop("alpha")
                        .params(0f, 1f)
                        .target(text)
                        .duration(100L));
                  }
                }));
          } else {
            text.send(TextKey, textProps.copyWith(props.textProps()));
          }
        }
        if (isNotNull(props.buttonProps())) {
          eventBus.send(ColumnKey, buttonProps.copyWith(props.buttonProps()));
        }
      }
    });
  }

  public static GroupProps GroupProps() {
    return new GroupProps();
  }

  public static LinearProps ButtonProps() {
    return new LinearProps();
  }

}
