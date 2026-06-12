package com.mucheng.mucuteui.components;

import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;

import android.os.Build;
import android.widget.PopupWindow;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.impl.PopupImpl;
import com.mucheng.mucuteui.props.PopupProps;

public final class PopupComponents {

  private PopupComponents() {
  }

  public static final String PopupKey = "PopupKey";

  public static final String Dialog = "Dialog";

  public static final String InputMethod = "InputMethod";

  public static final String Toast = "Toast";

  public static final String Activity = "Activity";

  public static final String Translucent = "Translucent";

  public static final String Default = "Default";

  public static ComponentEventBus<PopupWindow> Popup(PopupProps props) {
    final PopupWindow popup = new PopupWindow(requireActivity());
    if (Build.VERSION.SDK_INT == Build.VERSION_CODES.M || Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
      // 适配挖孔屏
      popup.setClippingEnabled(false);
    }

    final ComponentEventBus<PopupWindow> eventBus = new ComponentEventBus<>(popup);
    eventBus.register(PopupKey, new PopupImpl(popup));
    eventBus.send(PopupKey, props != null ? props : PopupProps());
    return eventBus;
  }

  public static ComponentEventBus<PopupWindow> Popup() {
    return Popup(null);
  }

  public static PopupProps PopupProps() {
    return new PopupProps();
  }


}
