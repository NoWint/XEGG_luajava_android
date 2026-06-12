package com.mucheng.mucuteuix.layoutparams;

import android.view.ViewGroup;

import com.mucheng.mucuteuix.base.BaseHelper;

public abstract class BaseParams<T extends BaseHelper> extends BaseHelper {

  public T setWidth(int width) {
    build().width = width;
    return (T) this;
  }

  public T setHeight(int height) {
    build().height = height;
    return (T) this;
  }

  public abstract ViewGroup.LayoutParams build();

}
