package com.mucheng.mucuteui.impl;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.widget.HorizontalScrollView;

import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.props.RowScrollProps;

public class RowScrollImpl extends BaseScrollImpl<HorizontalScrollView> {

  public RowScrollImpl(HorizontalScrollView horizontalScrollView) {
    super(horizontalScrollView);
  }

  @Override
  public void onAccepted(EventBus eventBus, Object value) {
    super.onAccepted(eventBus, value);
    final RowScrollProps props = (RowScrollProps) value;
    if (isNotNull(props.fillViewport())) {
      component.setFillViewport(props.fillViewport());
    }
  }
}
