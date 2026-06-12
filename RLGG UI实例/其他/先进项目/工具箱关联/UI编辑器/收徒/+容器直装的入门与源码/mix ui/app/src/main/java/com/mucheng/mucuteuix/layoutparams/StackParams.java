package com.mucheng.mucuteuix.layoutparams;

import android.view.ViewGroup;
import android.widget.FrameLayout;

public class StackParams extends BaseMarginLayoutParams<StackParams> {

  private FrameLayout.LayoutParams layoutParams;

  @Override
  protected void init() {
    super.init();
    layoutParams = new FrameLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, WrapContent);
  }

  public StackParams setGravity(int gravity) {
    checkLayoutParamsNotNull();
    layoutParams.gravity = gravity;
    return this;
  }

  @Override
  public ViewGroup.MarginLayoutParams build() {
    return layoutParams;
  }

  private void checkLayoutParamsNotNull() {
    checkNotNull(layoutParams, "layoutParams");
  }

}
