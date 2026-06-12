package com.mucheng.mucuteui.components;

import static com.mucheng.mucuteui.components.ViewComponents.defineView;
import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;

import android.widget.TextView;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.impl.TextImpl;
import com.mucheng.mucuteui.props.ShadowLayerProps;
import com.mucheng.mucuteui.props.TextProps;

public final class TextComponents {

  private TextComponents() {
  }

  public static final String TextKey = "TextKey";

  public static ComponentEventBus<TextView> Text(TextProps props) {
    final TextView textView = new TextView(requireActivity());
    final ComponentEventBus<TextView> eventBus = new ComponentEventBus<>(textView);
    defineView(eventBus, TextKey);
    eventBus.register(TextKey, new TextImpl(textView));
    eventBus.send(TextKey, props != null ? props : new TextProps());
    return eventBus;
  }

  public static ComponentEventBus<TextView> Text() {
    return Text(null);
  }

  public static TextProps TextProps() {
    return new TextProps();
  }

  public static ShadowLayerProps ShadowLayerProps() {
    return new ShadowLayerProps();
  }

}
