package com.mucheng.mucuteui.components;

import static com.mucheng.mucuteui.components.StackComponents.StackParams;
import static com.mucheng.mucuteui.components.ViewGroupComponents.defineViewGroup;
import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;

import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.impl.ColumnScrollImpl;
import com.mucheng.mucuteui.impl.RowScrollImpl;
import com.mucheng.mucuteui.props.ColumnScrollProps;
import com.mucheng.mucuteui.props.LayoutParams;
import com.mucheng.mucuteui.props.RowScrollProps;

public final class ScrollComponents {
  private ScrollComponents() {
  }

  public static final String ColumnScrollKey = "ColumnScrollKey";

  public static final String RowScrollKey = "RowScrollKey";

  public static final String Vertical = "Vertical";

  public static final String Horizontal = "Horizontal";

  public static final String Full = "Full";

  public static ComponentEventBus<ScrollView> ColumnScroll(ColumnScrollProps props) {
    final ScrollView scrollView = new ScrollView(requireActivity());
    scrollView.setOverScrollMode(View.OVER_SCROLL_NEVER);
    scrollView.setVerticalScrollBarEnabled(false);
    scrollView.setHorizontalScrollBarEnabled(false);

    final ComponentEventBus<ScrollView> eventBus = new ComponentEventBus<>(scrollView);
    defineViewGroup(eventBus, ColumnScrollKey);
    eventBus.register(ColumnScrollKey, new ColumnScrollImpl(scrollView));
    eventBus.send(ColumnScrollKey, props != null ? props : new ColumnScrollProps());
    return eventBus;
  }

  public static ComponentEventBus<HorizontalScrollView> RowScroll(RowScrollProps props) {
    final HorizontalScrollView scrollView = new HorizontalScrollView(requireActivity());
    scrollView.setOverScrollMode(View.OVER_SCROLL_NEVER);
    scrollView.setVerticalScrollBarEnabled(false);
    scrollView.setHorizontalScrollBarEnabled(false);

    final ComponentEventBus<HorizontalScrollView> eventBus = new ComponentEventBus<HorizontalScrollView>(scrollView);
    defineViewGroup(eventBus, RowScrollKey);
    eventBus.register(RowScrollKey, new RowScrollImpl(scrollView));
    eventBus.send(RowScrollKey, props != null ? props : new RowScrollProps());
    return eventBus;
  }

  public static ColumnScrollProps ColumnScrollProps() {
    return new ColumnScrollProps();
  }

  public static RowScrollProps RowScrollProps() {
    return new RowScrollProps();
  }

  public static LayoutParams ScrollParams() {
    return StackParams();
  }

  public static ComponentEventBus<ScrollView> ColumnScroll() {
    return ColumnScroll(null);
  }

  public static ComponentEventBus<HorizontalScrollView> RowScroll() {
    return RowScroll(null);
  }

}
