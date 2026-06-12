package com.mucheng.mucuteuix.component;

import android.view.ViewGroup;
import android.widget.LinearLayout;

import com.mucheng.mucuteuix.base.ViewGroupHelper;

public class Row extends ViewGroupHelper<Row> {

  private LinearLayout linearLayout;

  @Override
  protected void init() {
    linearLayout = new LinearLayout(requireActivity());
    linearLayout.setOrientation(LinearLayout.HORIZONTAL);
  }

  public Row setGravity(int gravity) {
    checkViewGroupNotNull();
    linearLayout.setGravity(gravity);
    return this;
  }

  public Row setHorizontalGravity(int gravity) {
    checkViewGroupNotNull();
    linearLayout.setHorizontalGravity(gravity);
    return this;
  }

  public Row setVerticalGravity(int gravity) {
    checkViewGroupNotNull();
    linearLayout.setVerticalGravity(gravity);
    return this;
  }

  @Override
  public ViewGroup build() {
    checkViewGroupNotNull();
    return linearLayout;
  }

  private void checkViewGroupNotNull() {
    checkNotNull(linearLayout, "linearLayout");
  }


}
