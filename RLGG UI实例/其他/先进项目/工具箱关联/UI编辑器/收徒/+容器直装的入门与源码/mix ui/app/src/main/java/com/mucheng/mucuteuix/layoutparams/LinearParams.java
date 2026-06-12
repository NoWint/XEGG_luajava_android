package com.mucheng.mucuteuix.layoutparams;

import android.view.ViewGroup;
import android.widget.LinearLayout;

public class LinearParams extends BaseMarginLayoutParams<LinearParams> {

  private LinearLayout.LayoutParams layoutParams;

  @Override
  protected void init() {
    super.init();
    layoutParams = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
  }

  public LinearParams setGravity(int gravity) {
    checkLayoutParamsNotNull();
    layoutParams.gravity = gravity;
    return this;
  }

  public LinearParams setWeight(float weight) {
    checkLayoutParamsNotNull();
    layoutParams.weight = weight;
    return this;
  }

  @Override
  public LinearLayout.LayoutParams build() {
    checkLayoutParamsNotNull();
    return layoutParams;
  }

  private void checkLayoutParamsNotNull() {
    checkNotNull(layoutParams, "layoutParams");
  }

}
