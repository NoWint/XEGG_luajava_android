package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.view.View;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.model.Value;

import java.util.Arrays;
import java.util.List;

public class ViewGroupProps<CastProps extends ViewGroupProps<?>> extends ViewProps<CastProps> {

  public Value<List<ComponentEventBus<? extends View>>> children() {
    return children;
  }

  public CastProps children(List<ComponentEventBus<? extends View>> children) {
    this.children = new Value<>(children);
    return (CastProps) this;
  }

  @SafeVarargs
  public final CastProps children(ComponentEventBus<? extends View>... children) {
    this.children = new Value<>(Arrays.asList(children));
    return (CastProps) this;
  }

  private Value<List<ComponentEventBus<? extends View>>> children;

  @Override
  protected void merge(CastProps thisObj, CastProps thatObj) {
    super.merge(thisObj, thatObj);
    if (isNotNull(thatObj.children())) {
      thisObj.children(thatObj.children().value());
    }
  }
}
