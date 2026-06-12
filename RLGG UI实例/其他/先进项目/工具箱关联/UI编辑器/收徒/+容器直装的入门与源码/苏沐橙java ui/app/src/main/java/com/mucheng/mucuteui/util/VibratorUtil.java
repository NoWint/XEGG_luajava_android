package com.mucheng.mucuteui.util;

import static com.mucheng.mucuteui.eventbus.EventBus.GlobalEventBus;
import static com.mucheng.mucuteui.util.MuCuteUtil.requireActivity;

import android.content.Context;
import android.os.Vibrator;

import com.mucheng.mucuteui.eventbus.EventBus;

public final class VibratorUtil implements EventBus.Listener {

  public static final String VibratorKey = "VibratorKey";

  private static boolean initialized = false;

  private static volatile VibratorUtil instance;

  public static void init() {
    if (initialized) {
      return;
    }
    if (instance == null) {
      synchronized (VibratorUtil.class) {
        if (instance == null) {
          instance = new VibratorUtil();
          initialized = true;
          GlobalEventBus.register(VibratorKey, instance);
        }
      }
    }
  }

  @Override
  public void onAccepted(EventBus eventBus, Object value) {
    Vibrator vibrator = (Vibrator) requireActivity().getSystemService(Context.VIBRATOR_SERVICE);
    vibrator.vibrate(50L);
  }
}
