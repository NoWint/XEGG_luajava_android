package com.mucheng.mucuteuix.component;

import com.mucheng.mucuteuix.base.ViewHelper;
import com.mucheng.mucuteuix.view.RealtimeBlurView;

public class BlurView extends ViewHelper<BlurView> {

  private RealtimeBlurView blurView;

  @Override
  protected void init() {
    blurView = new RealtimeBlurView(requireActivity());
  }

  public BlurView setBlurRadius(float radius) {
    blurView.setBlurRadius(radius);
    return this;
  }

  public BlurView setOverlayColor(int overlayColor) {
    blurView.setOverlayColor(overlayColor);
    return this;
  }

  @Override
  public RealtimeBlurView build() {
    checkNotNull(blurView, "blurView");
    return blurView;
  }

}
