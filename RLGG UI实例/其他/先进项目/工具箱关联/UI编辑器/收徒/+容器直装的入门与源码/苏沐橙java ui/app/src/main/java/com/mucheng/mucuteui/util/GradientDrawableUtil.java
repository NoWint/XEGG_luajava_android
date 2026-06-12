package com.mucheng.mucuteui.util;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.graphics.drawable.GradientDrawable;

import com.mucheng.mucuteui.props.GradientDrawableProps;

public final class GradientDrawableUtil {
  private GradientDrawableUtil() {
  }

  public static final String BL_TR = "BL_TR";

  public static final String BT = "BT";

  public static final String BR_TL = "BR_TL";

  public static final String LR = "LR";

  public static final String RL = "RL";

  public static final String TL_BR = "TL_BR";

  public static final String TB = "TB";

  public static final String TR_BL = "TR_BL";

  public static final String Linear = "Linear";

  public static final String Sweep = "Sweep";

  public static final String Rect = "Rect";

  public static final String Oval = "Oval";

  public static final String Line = "Line";

  public static final String Ring = "Ring";

  public static GradientDrawable GradientDrawable(GradientDrawableProps pProps) {
    final GradientDrawableProps props = pProps != null ? pProps : new GradientDrawableProps();
    final GradientDrawable drawable = new GradientDrawable();

    if (isNotNull(props.orientation())) {
      GradientDrawable.Orientation orientation = GradientDrawable.Orientation.LEFT_RIGHT;
      switch (props.orientation()) {
        case BL_TR:
          orientation = GradientDrawable.Orientation.BL_TR;
          break;
        case BT:
          orientation = GradientDrawable.Orientation.BOTTOM_TOP;
          break;
        case BR_TL:
          orientation = GradientDrawable.Orientation.BR_TL;
          break;
        case RL:
          orientation = GradientDrawable.Orientation.RIGHT_LEFT;
          break;
        case TL_BR:
          orientation = GradientDrawable.Orientation.TL_BR;
          break;
        case TB:
          orientation = GradientDrawable.Orientation.TOP_BOTTOM;
          break;
        case TR_BL:
          orientation = GradientDrawable.Orientation.TR_BL;
          break;
      }
      drawable.setOrientation(orientation);
    }

    if (Sweep.equals(props.type())) {
      drawable.setGradientType(GradientDrawable.SWEEP_GRADIENT);
    }
    if (isNotNull(props.shape())) {
      int shape = GradientDrawable.RECTANGLE;
      switch (props.shape()) {
        case Oval:
          shape = GradientDrawable.OVAL;
          break;
        case Line:
          shape = GradientDrawable.LINE;
          break;
        case Ring:
          shape = GradientDrawable.RING;
          break;
      }
      drawable.setShape(shape);
    }
    if (isNotNull(props.color())) {
      drawable.setColor(props.color());
    }
    if (isNotNull(props.colors())) {
      drawable.setColors(props.colors());
    }
    if (isNotNull(props.radius())) {
      float[] radius = props.radius();
      if (radius.length == 4) {
        drawable.setCornerRadii(new float[]{radius[0], radius[0], radius[1], radius[1], radius[2], radius[2], radius[3], radius[3]});
      } else {
        drawable.setCornerRadii(radius);
      }
    }
    return drawable;
  }

  public static GradientDrawable GradientDrawable() {
    return GradientDrawable(null);
  }

  public static GradientDrawableProps GradientDrawableProps() {
    return new GradientDrawableProps();
  }

}
