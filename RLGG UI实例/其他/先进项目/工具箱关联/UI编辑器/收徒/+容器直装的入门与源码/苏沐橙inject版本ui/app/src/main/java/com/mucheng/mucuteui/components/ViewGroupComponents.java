package com.mucheng.mucuteui.components;

import static com.mucheng.mucuteui.components.ViewComponents.defineView;

import android.view.ViewGroup;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.impl.ViewGroupImpl;
import com.mucheng.mucuteui.props.LayoutParams;

public final class ViewGroupComponents {
  private ViewGroupComponents() {
  }

  public static void defineViewGroup(
      ComponentEventBus<? extends ViewGroup> eventBus,
      String key
  ) {
    defineView(eventBus, key);
    eventBus.register(key, new ViewGroupImpl(eventBus.component()));
  }

  public static LayoutParams ViewGroupParams() {
    return new LayoutParams().mapping(ViewGroup.LayoutParams.class);
  }

  public static LayoutParams ViewGroupMarginsParams() {
    return new LayoutParams().mapping(ViewGroup.MarginLayoutParams.class);
  }

}
