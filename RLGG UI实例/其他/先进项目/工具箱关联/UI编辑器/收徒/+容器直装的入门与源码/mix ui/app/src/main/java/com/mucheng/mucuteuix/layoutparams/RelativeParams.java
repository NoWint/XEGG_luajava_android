package com.mucheng.mucuteuix.layoutparams;

import android.view.ViewGroup;
import android.widget.RelativeLayout;

public class RelativeParams extends BaseMarginLayoutParams<RelativeParams> {

  private RelativeLayout.LayoutParams layoutParams;

  @Override
  protected void init() {
    super.init();
    layoutParams = new RelativeLayout.LayoutParams(RelativeLayout.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);

  }

  public RelativeParams alignWithParent() {
    return alignWithParent(true);
  }

  public RelativeParams alignWithParent(boolean enabled) {
    build().alignWithParent = enabled;
    return this;
  }

  public RelativeParams addRule(int verb) {
    build().addRule(verb);
    return this;
  }

  public RelativeParams addRule(int verb, int subject) {
    build().addRule(verb, subject);
    return this;
  }

  public RelativeParams removeRule(int verb) {
    build().removeRule(verb);
    return this;
  }

  @Override
  public RelativeLayout.LayoutParams build() {
    checkLayoutParamsNotNull();
    return layoutParams;
  }

  private void checkLayoutParamsNotNull() {
    checkNotNull(layoutParams, "layoutParams");
  }

}
