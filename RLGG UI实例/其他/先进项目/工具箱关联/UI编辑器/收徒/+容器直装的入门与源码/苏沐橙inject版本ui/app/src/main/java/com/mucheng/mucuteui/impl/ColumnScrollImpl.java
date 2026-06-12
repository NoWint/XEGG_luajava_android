package com.mucheng.mucuteui.impl;

import static com.mucheng.mucuteui.components.ScrollComponents.Full;
import static com.mucheng.mucuteui.components.ScrollComponents.Horizontal;
import static com.mucheng.mucuteui.components.ScrollComponents.Vertical;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.widget.ScrollView;

import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.props.ColumnScrollProps;

public class ColumnScrollImpl extends BaseScrollImpl<ScrollView> {
  public ColumnScrollImpl(ScrollView frameLayout) {
    super(frameLayout);
  }

  @Override
  public void onAccepted(EventBus eventBus, Object value) {
    super.onAccepted(eventBus, value);
    final ColumnScrollProps props = (ColumnScrollProps) value;
    if (isNotNull(props.fillViewport())) {
      component.setFillViewport(props.fillViewport());
    }
    if (isNotNull(props.fadingEdgeOrientation())) {
      switch (props.fadingEdgeOrientation()) {
        case Vertical:
          component.setVerticalFadingEdgeEnabled(true);
          break;
        case Horizontal:
          component.setHorizontalFadingEdgeEnabled(true);
          break;
        case Full:
          component.setVerticalFadingEdgeEnabled(true);
          component.setHorizontalFadingEdgeEnabled(true);
          break;
      }
    }
    if (isNotNull(props.fadingEdgeLength())) {
      component.setFadingEdgeLength(props.fadingEdgeLength());
    }
  }
}
