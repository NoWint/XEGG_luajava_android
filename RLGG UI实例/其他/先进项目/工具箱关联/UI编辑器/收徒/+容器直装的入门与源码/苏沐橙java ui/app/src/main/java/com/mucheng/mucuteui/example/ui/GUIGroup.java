package com.mucheng.mucuteui.example.ui;

import static com.mucheng.mucuteui.components.LinearComponents.ColumnKey;
import static com.mucheng.mucuteui.components.LinearComponents.ColumnProps;

import android.view.View;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.model.Container;

import java.util.ArrayList;
import java.util.List;

public abstract class GUIGroup implements EventBus.Listener {
  protected GUIGroup() {
  }

  @Override
  public void onAccepted(EventBus eventBus, Object value) {
    Container container = (Container) value;
    List<ComponentEventBus<? extends View>> list = new ArrayList<>();
    makeChildren(list);
    container.send(ColumnKey, ColumnProps().children(list));
  }

  protected abstract void makeChildren(List<ComponentEventBus<? extends View>> list);
}
