package com.mucheng.mucuteuix.layoutparams;

import android.view.ViewGroup;

import com.mucheng.mucuteuix.base.BaseHelper;

public abstract class BaseMarginLayoutParams<T extends BaseHelper> extends BaseParams<T> {

  @Override
  protected void init() {

  }

  public T setAllMargins(int margins) {
    return setMargins(margins, margins, margins, margins);
  }

  public T setMargins(int left, int top, int right, int bottom) {
    build().setMargins(left, top, right, bottom);
    return (T) this;
  }

  public T setLeftMargin(int left) {
    build().leftMargin = left;
    return (T) this;
  }

  public T setTopMargin(int top) {
    build().topMargin = top;
    return (T) this;
  }

  public T setRightMargin(int right) {
    build().rightMargin = right;
    return (T) this;
  }

  public T setBottomMargin(int bottom) {
    build().bottomMargin = bottom;
    return (T) this;
  }

  @Override
  public abstract ViewGroup.MarginLayoutParams build();

}
