package com.mucheng.mucuteuix.component;

import android.view.ViewGroup;
import android.widget.RelativeLayout;

import com.mucheng.mucuteuix.base.ViewGroupHelper;

public class Relative extends ViewGroupHelper<Relative> {

  private RelativeLayout relativeLayout;

  @Override
  protected void init() {
    relativeLayout = new RelativeLayout(requireActivity());
  }

  @Override
  public RelativeLayout build() {
    checkRelativeLayoutNotNull();
    return relativeLayout;
  }

  private void checkRelativeLayoutNotNull() {
    checkNotNull(relativeLayout, "relativeLayout");
  }

}
