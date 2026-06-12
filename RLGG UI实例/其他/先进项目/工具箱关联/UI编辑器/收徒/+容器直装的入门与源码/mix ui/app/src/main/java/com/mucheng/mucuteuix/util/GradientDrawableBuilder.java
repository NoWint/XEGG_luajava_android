package com.mucheng.mucuteuix.util;

import android.graphics.drawable.GradientDrawable;

import com.mucheng.mucuteuix.base.BaseHelper;

public class GradientDrawableBuilder extends BaseHelper {

  private GradientDrawable gradientDrawable;

  @Override
  protected void init() {
    gradientDrawable = new GradientDrawable();
  }

  public GradientDrawableBuilder setOrientation(GradientDrawable.Orientation orientation) {
    checkGradientDrawableNotNull();
    gradientDrawable.setOrientation(orientation);
    return this;
  }

  public GradientDrawableBuilder setGradientType(int type) {
    checkGradientDrawableNotNull();
    gradientDrawable.setGradientType(type);
    return this;
  }

  public GradientDrawableBuilder setShape(int shape) {
    checkGradientDrawableNotNull();
    gradientDrawable.setShape(shape);
    return this;
  }

  public GradientDrawableBuilder setColor(int color) {
    checkGradientDrawableNotNull();
    gradientDrawable.setColor(color);
    return this;
  }

  public GradientDrawableBuilder setColors(int... colors) {
    checkGradientDrawableNotNull();
    gradientDrawable.setColors(colors);
    return this;
  }

  public GradientDrawableBuilder setRadius(float... radius) {
    checkGradientDrawableNotNull();
    if (radius.length != 4 && radius.length != 8) {
      throw new IllegalArgumentException("radius array length must equals 4 or 8");
    }

    if (radius.length == 4) {
      gradientDrawable.setCornerRadii(new float[]{radius[0], radius[0], radius[1], radius[1], radius[2], radius[2], radius[3], radius[3]});
    } else {
      gradientDrawable.setCornerRadii(radius);
    }
    return this;
  }

  public GradientDrawableBuilder setAllRadius(float radius) {
    checkGradientDrawableNotNull();
    setRadius(radius, radius, radius, radius);
    return this;
  }

  public GradientDrawable build() {
    checkGradientDrawableNotNull();
    return gradientDrawable;
  }

  private void checkGradientDrawableNotNull() {
    checkNotNull(gradientDrawable, "gradientDrawable");
  }

}
