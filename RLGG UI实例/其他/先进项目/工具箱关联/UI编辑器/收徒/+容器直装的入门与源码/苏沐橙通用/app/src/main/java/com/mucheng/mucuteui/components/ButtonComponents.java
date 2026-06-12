package com.mucheng.mucuteui.components;

import static com.mucheng.mucuteui.components.LinearComponents.Column;
import static com.mucheng.mucuteui.components.LinearComponents.LinearProps;
import static com.mucheng.mucuteui.components.TextComponents.Text;
import static com.mucheng.mucuteui.components.TextComponents.TextKey;
import static com.mucheng.mucuteui.components.TextComponents.TextProps;
import static com.mucheng.mucuteui.components.ViewComponents.LayoutParams;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawable;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawableProps;
import static com.mucheng.mucuteui.util.GravityUtil.Center;
import static com.mucheng.mucuteui.util.LinearGradientUtil.LinearGradient;
import static com.mucheng.mucuteui.util.LinearGradientUtil.LinearGradientProps;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNull;
import static com.mucheng.mucuteui.util.ParseUtil.parseColor;
import static com.mucheng.mucuteui.util.SizeUtil.WrapContent;
import static com.mucheng.mucuteui.util.SizeUtil.dip2px;
import static com.mucheng.mucuteui.util.SizeUtil.intDip2px;

import android.widget.LinearLayout;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.listener.OnPostListener;
import com.mucheng.mucuteui.model.Container;
import com.mucheng.mucuteui.props.ButtonProps;

public final class ButtonComponents {
  private ButtonComponents() {
  }

  public static ComponentEventBus<LinearLayout> Button(ButtonProps pProps) {
    final ButtonProps props = pProps != null ? pProps : new ButtonProps();
    final int[] defaultColors = new int[]{
        parseColor("#FF828282"),
        parseColor("#FF828282"),
        parseColor("#FF828282")
    };
    final int[] specialColors = new int[]{
        parseColor("#FFFF9A8B"),
        parseColor("#FFFF6A88"),
        parseColor("#FFFF99AC")
    };

    final Container text = new Container();

    return Column(LinearProps()
        .layoutParams(LayoutParams()
            .width(WrapContent)
            .height(WrapContent))
        .focusable(true)
        .clickable(true)
        .gravity(Center)
        .background(GradientDrawable(GradientDrawableProps()
            .color(parseColor("#FFEFEFEF"))
            .radius(dip2px(15f))))
        .children(Text(TextProps()
            .link(text)
            .textSize(13f)
            .paddings(intDip2px(15), intDip2px(5), intDip2px(15), intDip2px(5))
            .gravity(Center)
            .postOnce(new OnPostListener() {
              @Override
              public void post(int width, int height) {
                int[] colors;
                if (isNull(props.specialProp())) {
                  colors = defaultColors;
                } else {
                  boolean specialProp = props.specialProp();
                  if (specialProp) {
                    colors = specialColors;
                  } else {
                    colors = defaultColors;
                  }
                }
                text.send(TextKey, TextProps().shader(LinearGradient(LinearGradientProps()
                    .startX(0f)
                    .startY(0f)
                    .endX((float) width)
                    .endY(0f)
                    .colors(colors)
                    .positions(0f, 0.5f, 1f)
                )));
              }
            })
            .copyWith(props.textProps())))
        .copyWith(props.buttonProps())
    );
  }

  public static ComponentEventBus<LinearLayout> Button() {
    return Button(null);
  }

  public static ButtonProps ButtonProps() {
    return new ButtonProps();
  }

}
