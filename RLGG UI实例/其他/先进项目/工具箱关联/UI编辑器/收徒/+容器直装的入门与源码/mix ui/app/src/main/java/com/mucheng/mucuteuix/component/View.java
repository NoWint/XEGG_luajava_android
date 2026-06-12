package com.mucheng.mucuteuix.component;

import com.mucheng.mucuteuix.base.ViewHelper;

public class View extends ViewHelper<View> {

  private android.view.View view;

  @Override
  protected void init() {
    view = new android.view.View(requireActivity());
  }

  @Override
  public android.view.View build() {
    checkNotNull(view, "view");
    return view;
  }

}
