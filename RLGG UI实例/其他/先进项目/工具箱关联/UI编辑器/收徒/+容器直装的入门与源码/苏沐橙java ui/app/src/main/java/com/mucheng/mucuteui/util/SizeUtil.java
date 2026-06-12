package com.mucheng.mucuteui.util;

import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;

import android.util.TypedValue;
import android.view.ViewGroup;

public final class SizeUtil {
  private SizeUtil() {
  }

  // 对两个编译时常量进行了静态导入（虽然有点多余）
  public static final int MatchParent = ViewGroup.LayoutParams.MATCH_PARENT;

  public static final int WrapContent = ViewGroup.LayoutParams.WRAP_CONTENT;

  // 将 dp 转为 px
  public static float dip2px(float value) {
    return TypedValue.applyDimension(
        TypedValue.COMPLEX_UNIT_DIP,
        value,
        requireActivity().getResources().getDisplayMetrics()
    );
  }

  public static int intDip2px(int value) {
    return (int) TypedValue.applyDimension(
        TypedValue.COMPLEX_UNIT_DIP,
        value,
        requireActivity().getResources().getDisplayMetrics()
    );
  }

  public static int intDip2pxRound(int value) {
    return Math.round(TypedValue.applyDimension(
        TypedValue.COMPLEX_UNIT_DIP,
        value,
        requireActivity().getResources().getDisplayMetrics()
    ));
  }

  public static int W() {
    return requireActivity().getResources().getDisplayMetrics().widthPixels;
  }

  public static int H() {
    return requireActivity().getResources().getDisplayMetrics().heightPixels;
  }

}
