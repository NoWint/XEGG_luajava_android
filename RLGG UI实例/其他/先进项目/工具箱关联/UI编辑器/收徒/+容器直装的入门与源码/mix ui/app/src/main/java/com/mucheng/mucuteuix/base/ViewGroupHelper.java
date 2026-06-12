package com.mucheng.mucuteuix.base;

import android.view.ViewGroup;

import java.util.List;

public abstract class ViewGroupHelper<T extends BaseHelper> extends ViewHelper<T> {

  public T addView(List<ViewHelper<?>> views) {
    final ViewGroup viewGroup = build();
    for (ViewHelper<?> view : views) {
      viewGroup.addView(view.build());
    }
    return self();
  }

  public T addView(ViewHelper<?>... views) {
    final ViewGroup viewGroup = build();
    for (ViewHelper<?> view : views) {
      viewGroup.addView(view.build());
    }
    return self();
  }

  public T addView(ViewHelper<?> view, int index) {
    build().addView(view.build(), index);
    return self();
  }

  public T removeView(ViewHelper<?>... views) {
    final ViewGroup viewGroup = build();
    for (ViewHelper<?> view : views) {
      viewGroup.removeView(view.build());
    }
    return self();
  }

  public T removeViewAt(int index) {
    build().removeViewAt(index);
    return self();
  }

  public abstract ViewGroup build();

}
