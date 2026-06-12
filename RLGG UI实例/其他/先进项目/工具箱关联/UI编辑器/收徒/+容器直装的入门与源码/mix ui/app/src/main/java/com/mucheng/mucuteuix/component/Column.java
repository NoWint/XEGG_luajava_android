package com.mucheng.mucuteuix.component;

import android.widget.LinearLayout;

import com.mucheng.mucuteuix.base.ViewGroupHelper;

public class Column extends ViewGroupHelper<Column> {

  private LinearLayout linearLayout;

  @Override
  protected void init() {
    linearLayout = new LinearLayout(requireActivity());
    linearLayout.setOrientation(LinearLayout.VERTICAL);
  }

  public Column setGravity(int gravity) {
    checkViewGroupNotNull();
    linearLayout.setGravity(gravity);
    return this;
  }

  public Column setHorizontalGravity(int gravity) {
    checkViewGroupNotNull();
    linearLayout.setHorizontalGravity(gravity);
    return this;
  }

  public Column setVerticalGravity(int gravity) {
    checkViewGroupNotNull();
    linearLayout.setVerticalGravity(gravity);
    return this;
  }

  @Override
  public LinearLayout build() {
    checkViewGroupNotNull();
    return linearLayout;
  }

  private void checkViewGroupNotNull() {
    checkNotNull(linearLayout, "linearLayout");
  }

}
