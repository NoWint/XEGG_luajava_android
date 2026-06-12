package com.mucheng.mucuteui.components;

import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;

import android.os.Build;
import android.widget.PopupWindow;

import com.mucheng.mucuteui.eventbus.ComponentEventBus;
import com.mucheng.mucuteui.impl.PopupImpl;
import com.mucheng.mucuteui.props.PopupProps;
import android.view.WindowManager;
import android.widget.LinearLayout.LayoutParams;
import android.content.Context;
import android.graphics.PixelFormat;
import android.content.pm.ActivityInfo;
import com.mucheng.mucuteui.util.SizeUtil;

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
  
  public static final String POPUP_MODE = "PopupWindow";
  
  public static class PopupContainer {
	  private PopupWindow popupWindow;
	  private WindowManager.LayoutParams layoutParams;
	  
	  public PopupContainer(PopupWindow popupWindow) {
		  this.popupWindow = popupWindow;
	  }
	  
	  public PopupContainer(WindowManager.LayoutParams layoutParams) {
		  this.layoutParams = layoutParams;
	  }
	  
	  public PopupWindow getPopupWindow() {
		  return popupWindow;
	  }
	  
	  public WindowManager.LayoutParams getLayoutParams() {
		  return layoutParams;
	  }
	  
	  public String getType() {
		  if (popupWindow != null) {
			  return "PopupWindow";
		  }
		  
		  return "LayoutParams";
	  }
	  
	  public boolean isPopupWindow() {
		  return popupWindow != null;
	  }
	  
	  public boolean isLayoutParams() {
		  return layoutParams != null;
	  }
	  
  }

  public static ComponentEventBus<PopupContainer> Popup(PopupProps props) {
	return POPUP_MODE.equals("PopupWindow") ? PopupWindow(props) : LayoutParams(props);
  }
  
  private static ComponentEventBus<PopupContainer> PopupWindow(PopupProps props) {
	  final PopupWindow popupWindow = new PopupWindow(requireActivity());
	  if (Build.VERSION.SDK_INT == Build.VERSION_CODES.M || Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
		  // 适配挖孔屏
		  popupWindow.setClippingEnabled(false);
	  }
	  popupWindow.setBackgroundDrawable(null);
	  
	  final PopupContainer popupContainer = new PopupContainer(popupWindow);
	  final ComponentEventBus<PopupContainer> eventBus = new ComponentEventBus<PopupContainer>(popupContainer);
	  eventBus.register(PopupKey, new PopupImpl(popupContainer));
	  eventBus.send(PopupKey, props != null ? props : PopupProps());
	  return eventBus;
  }
  
  private static ComponentEventBus<PopupContainer> LayoutParams(PopupProps props) {
	  final WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
	  layoutParams.format = PixelFormat.RGBA_8888;
	  layoutParams.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_FULLSCREEN | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN;
	  if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
		  layoutParams.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
	  } else {
		  layoutParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
	  }
	  if (Build.VERSION.SDK_INT >= 28) {
		  layoutParams.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
	  }

	  // 如果不想要设备横屏请删掉这行代码
	  // layoutParams.screenOrientation = ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE;
	  
	  final PopupContainer popupContainer = new PopupContainer(layoutParams);
	  final ComponentEventBus<PopupContainer> eventBus = new ComponentEventBus<PopupContainer>(popupContainer);
	  eventBus.register(PopupKey, new PopupImpl(popupContainer));
	  eventBus.send(PopupKey, props != null ? props : PopupProps());
	  return eventBus;
  }

  public static ComponentEventBus<PopupContainer> Popup() {
    return Popup(null);
  }

  public static PopupProps PopupProps() {
    return new PopupProps();
  }


}
