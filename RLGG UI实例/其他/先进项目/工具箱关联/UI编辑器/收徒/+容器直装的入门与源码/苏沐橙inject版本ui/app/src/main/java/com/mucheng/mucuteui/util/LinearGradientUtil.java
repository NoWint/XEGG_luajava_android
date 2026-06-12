package com.mucheng.mucuteui.util;

import android.graphics.LinearGradient;
import android.graphics.Shader;

import com.mucheng.mucuteui.props.LinearGradientProps;

public final class LinearGradientUtil {

  private LinearGradientUtil() {
  }

  public static final String Mirror = "Mirror";

  public static final String Repeat = "Repeat";

  public static LinearGradient LinearGradient(LinearGradientProps pProps) {
    LinearGradientProps props = pProps != null ? pProps : new LinearGradientProps();
    Shader.TileMode tileMode = Shader.TileMode.CLAMP;
    switch (props.tile()) {
      case Mirror:
        tileMode = Shader.TileMode.MIRROR;
        break;
      case Repeat:
        tileMode = Shader.TileMode.REPEAT;
        break;
    }

    return new LinearGradient(
        props.startX(),
        props.startY(),
        props.endX(),
        props.endY(),
        props.colors(),
        props.positions(),
        tileMode
    );
  }

  public static LinearGradient LinearGradient() {
    return LinearGradient(null);
  }

  public static LinearGradientProps LinearGradientProps() {
    return new LinearGradientProps();
  }

}
