package com.mucheng.mucuteui.impl;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.view.View;
import android.view.ViewGroup;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.props.ViewGroupProps;
import com.mucheng.mucuteui.util.MuCuteUtil;

import java.util.List;

public class ViewGroupImpl extends BaseImpl<ViewGroup> {

  private List<? extends View> last;

  public ViewGroupImpl(ViewGroup viewGroup) {
    super(viewGroup);
  }

  @Override
  public void onAccepted(EventBus eventBus, Object value) {
    MuCuteUtil.checkNotNullForProps(value);
    ViewGroupProps<?> props = (ViewGroupProps<?>) value;
    if (isNotNull(props.children())) {
      component.removeAllViews();
      List<ComponentEventBus<? extends View>> children = props.children().value();
      if (children == null) {
        return;
      }
      for (ComponentEventBus<? extends View> child : children) {
        component.addView(child.component());
      }
    }
  }

}
