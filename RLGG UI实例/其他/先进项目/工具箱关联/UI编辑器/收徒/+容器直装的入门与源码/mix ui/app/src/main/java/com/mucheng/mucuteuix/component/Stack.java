package com.mucheng.mucuteuix.component;

import android.widget.FrameLayout;

import com.mucheng.mucuteuix.base.ViewGroupHelper;

public class Stack extends ViewGroupHelper<Stack> {

  private FrameLayout frameLayout;

  @Override
  protected void init() {
    frameLayout = new FrameLayout(requireActivity());
  }

  @Override
  public FrameLayout build() {
    checkNotNull(frameLayout, "frameLayout");
    return frameLayout;
  }

}
