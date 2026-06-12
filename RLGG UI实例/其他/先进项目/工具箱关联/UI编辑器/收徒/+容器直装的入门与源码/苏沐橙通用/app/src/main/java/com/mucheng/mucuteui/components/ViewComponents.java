package com.mucheng.mucuteui.components;

import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;

import android.view.View;
import android.view.ViewGroup;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.impl.ViewImpl;
import com.mucheng.mucuteui.props.LayoutParams;
import com.mucheng.mucuteui.props.ViewProps;

import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

public final class ViewComponents {
  private ViewComponents() {
  }

  public static final Map<Class<? extends ViewGroup.LayoutParams>,
      Constructor<? extends ViewGroup.LayoutParams>> cache = new HashMap<>();

  public static final String ViewKey = "ViewKey";

  public static ComponentEventBus<View> View(ViewProps<?> props) {
    final View view = new View(requireActivity());
    final ComponentEventBus<View> eventBus = new ComponentEventBus<>(view);
    defineView(eventBus, ViewKey);
    eventBus.send(ViewKey, props != null ? props : new ViewProps<>());
    return eventBus;
  }

  public static ComponentEventBus<View> View() {
    return View(null);
  }

  public static ViewProps<?> ViewProps() {
    return new ViewProps<>();
  }

  public static LayoutParams LayoutParams() {
    return new LayoutParams();
  }

  public static <T extends ViewProps<?>> void defineView(
      ComponentEventBus<? extends View> eventBus,
      String key
  ) {
    eventBus.register(key, new ViewImpl(eventBus.component()));
  }

}
