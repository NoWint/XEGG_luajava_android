package com.mucheng.mucuteui.components;

import static com.mucheng.mucuteui.components.ViewGroupComponents.defineViewGroup;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNull;
import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;

import android.widget.LinearLayout;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.impl.LinearImpl;
import com.mucheng.mucuteui.props.LayoutParams;
import com.mucheng.mucuteui.props.LinearProps;

public final class LinearComponents {
  private LinearComponents() {
  }

  public static final int Vertical = LinearLayout.VERTICAL;

  public static final int Horizontal = LinearLayout.HORIZONTAL;

  public static final String ColumnKey = "ColumnKey";

  public static final String RowKey = "RowKey";

  public static ComponentEventBus<LinearLayout> Column(LinearProps props) {
    final LinearLayout linearLayout = new LinearLayout(requireActivity());
    final ComponentEventBus<LinearLayout> eventBus = new ComponentEventBus<>(linearLayout);
    if (props != null && isNull(props.orientation())) {
      props.orientation(Vertical);
    }
    defineViewGroup(eventBus, ColumnKey);
    eventBus.register(ColumnKey, new LinearImpl(linearLayout));
    eventBus.send(ColumnKey, props != null ? props : new LinearProps().orientation(Vertical));
    return eventBus;
  }

  public static ComponentEventBus<LinearLayout> Column() {
    return Column(null);
  }

  public static ComponentEventBus<LinearLayout> Row(LinearProps props) {
    final LinearLayout linearLayout = new LinearLayout(requireActivity());
    final ComponentEventBus<LinearLayout> eventBus = new ComponentEventBus<>(linearLayout);
    if (props != null && isNull(props.orientation())) {
      props.orientation(Horizontal);
    }
    defineViewGroup(eventBus, RowKey);
    eventBus.register(RowKey, new LinearImpl(linearLayout));
    eventBus.send(RowKey, props != null ? props : new LinearProps().orientation(Horizontal));
    return eventBus;
  }

  public static ComponentEventBus<LinearLayout> Row() {
    return Row(null);
  }

  public static LinearProps ColumnProps() {
    return new LinearProps().orientation(Vertical);
  }

  public static LinearProps RowProps() {
    return new LinearProps().orientation(Horizontal);
  }

  public static LinearProps LinearProps() {
    return new LinearProps();
  }

  public static LayoutParams LinearParams() {
    return new LayoutParams().mapping(LinearLayout.LayoutParams.class);
  }

}
