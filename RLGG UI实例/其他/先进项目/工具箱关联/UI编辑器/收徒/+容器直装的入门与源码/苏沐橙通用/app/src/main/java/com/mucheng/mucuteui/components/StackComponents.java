package com.mucheng.mucuteui.components;

import static com.mucheng.mucuteui.components.ViewGroupComponents.defineViewGroup;
import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;

import android.widget.FrameLayout;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.props.LayoutParams;
import com.mucheng.mucuteui.props.StackProps;

public final class StackComponents {

  private StackComponents() {
  }

  public static final String StackKey = "StackKey";

  public static ComponentEventBus<FrameLayout> Stack(StackProps props) {
    final FrameLayout framelayout = new FrameLayout(requireActivity());
    final ComponentEventBus<FrameLayout> eventBus = new ComponentEventBus<>(framelayout);
    defineViewGroup(eventBus, StackKey);
    eventBus.send(StackKey, props != null ? props : new StackProps());
    return eventBus;
  }

  public static ComponentEventBus<FrameLayout> Stack() {
    return Stack(null);
  }

  public static StackProps StackProps() {
    return new StackProps();
  }

  public static LayoutParams StackParams() {
    return new LayoutParams().mapping(FrameLayout.LayoutParams.class);
  }

}
