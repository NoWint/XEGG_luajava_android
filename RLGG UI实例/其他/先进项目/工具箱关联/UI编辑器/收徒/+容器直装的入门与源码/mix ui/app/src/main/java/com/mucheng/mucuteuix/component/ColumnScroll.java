package com.mucheng.mucuteuix.component;

import android.widget.ScrollView;

import com.mucheng.mucuteuix.base.ViewGroupHelper;

public class ColumnScroll extends ViewGroupHelper<ColumnScroll> {

  private ScrollView scrollView;

  @Override
  protected void init() {
    scrollView = new ScrollView(requireActivity());
  }

  public ColumnScroll setFillViewport(boolean fillViewport) {
    scrollView.setFillViewport(fillViewport);
    return this;
  }

  public ColumnScroll setVerticalScrollBarEnabled(boolean enabled) {
    scrollView.setVerticalScrollBarEnabled(enabled);
    return this;
  }

  public ColumnScroll setHorizontalScrollBarEnabled(boolean enabled) {
    scrollView.setHorizontalScrollBarEnabled(enabled);
    return this;
  }

  public ColumnScroll setVerticalFadingEdgeEnabled(boolean enabled) {
    scrollView.setVerticalFadingEdgeEnabled(enabled);
    return this;
  }

  public ColumnScroll setHorizontalFadingEdgeEnabled(boolean enabled) {
    scrollView.setHorizontalFadingEdgeEnabled(enabled);
    return this;
  }

  public ColumnScroll setFadingEdgeLength(int length) {
    scrollView.setFadingEdgeLength(length);
    return this;
  }

  @Override
  public ScrollView build() {
    checkScrollViewNotNull();
    return scrollView;
  }

  private void checkScrollViewNotNull() {
    checkNotNull(scrollView, "scrollView");
  }

}
