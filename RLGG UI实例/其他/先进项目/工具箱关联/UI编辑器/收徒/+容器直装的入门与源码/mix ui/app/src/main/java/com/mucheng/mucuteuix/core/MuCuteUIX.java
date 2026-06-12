package com.mucheng.mucuteuix.core;

import android.app.Activity;

import java.lang.ref.WeakReference;

public final class MuCuteUIX {

  private static WeakReference<Activity> currentMainActivity;

  public static void init(Activity activity) {
    if (currentMainActivity != null) {
      return;
    }
    checkNotNull(activity, "activity");
    currentMainActivity = new WeakReference<>(activity);
  }

  public static Activity requireActivity() {
    if (currentMainActivity == null) {
      throw new NullPointerException("currentMainActivity is empty, are you really sure you called the init method?");
    }
    Activity activity = currentMainActivity.get();
    if (activity == null) {
      throw new NullPointerException("activity was finished, the value is null");
    }
    return activity;
  }

  public static void checkNotNull(Object target, String name) {
    if (target == null) {
      throw new NullPointerException(String.format("%s cannot be null", name));
    }
  }

}
