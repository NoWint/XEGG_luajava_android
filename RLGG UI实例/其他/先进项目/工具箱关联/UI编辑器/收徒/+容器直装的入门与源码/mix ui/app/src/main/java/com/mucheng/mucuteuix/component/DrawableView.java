package com.mucheng.mucuteuix.component;

import com.mucheng.mucuteuix.base.ViewHelper;
import com.mucheng.mucuteuix.callback.DrawCallback;

public class DrawableView extends ViewHelper<DrawableView> {

  private com.mucheng.mucuteuix.view.DrawableView drawableView;

  @Override
  protected void init() {
    drawableView = new com.mucheng.mucuteuix.view.DrawableView(requireActivity());
  }

  public DrawableView addDrawCallback(DrawCallback callback) {
    build().addDrawCallback(callback);
    return this;
  }

  public DrawableView removeDrawCallback(DrawCallback callback) {
    build().removeDrawCallback(callback);
    return this;
  }

  public DrawableView invalidate() {
    build().invalidate();
    return this;
  }

  public DrawableView postInvalidate() {
    build().postInvalidate();
    return this;
  }

  public DrawableView postInvalidateDelayed(long duration) {
    build().postInvalidateDelayed(duration);
    return this;
  }

  public DrawableView postInvalidateOnAnimation() {
    build().postInvalidateOnAnimation();
    return this;
  }

  @Override
  public com.mucheng.mucuteuix.view.DrawableView build() {
    checkDrawableViewNotNull();
    return drawableView;
  }

  private void checkDrawableViewNotNull() {
    checkNotNull(drawableView, "drawableView");
  }

}
