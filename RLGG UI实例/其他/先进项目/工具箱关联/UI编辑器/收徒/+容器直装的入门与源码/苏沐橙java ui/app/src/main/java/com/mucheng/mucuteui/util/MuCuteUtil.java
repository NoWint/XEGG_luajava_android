package com.mucheng.mucuteui.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Handler;
import android.view.View;

import java.lang.ref.WeakReference;

public final class MuCuteUtil {

  // 因为是 Activity 实例, 因此会出现内存泄露警告
  @SuppressLint("StaticFieldLeak")
  private static WeakReference<Activity> currentMainActivity;

  private MuCuteUtil() {
  }

  public static void initialize(Activity pActivity) {
    checkNotNull(pActivity, "pActivity cannot be null.");
    currentMainActivity = new WeakReference<>(pActivity);
    VibratorUtil.init();
  }

  public static Activity requireActivity() {
    Activity activity;
    checkNotNull(currentMainActivity, "activity cannot be null, have you called initialize method?");

    activity = currentMainActivity.get();
    checkNotNull(activity, "You have already initialized, but currentMainActivity.get returned null.");
    return activity;
  }

  public static void checkNotNull(Object target, String reason) {
    if (target == null) {
      throw new NullPointerException(reason);
    }
  }

  public static void checkNotNullForProps(Object props) {
    checkNotNull(props, "props cannot be null.");
  }

  public static void Ui(Runnable runnable) {
    checkNotNull(runnable, "runnable cannot be null.");
    requireActivity().runOnUiThread(runnable);
  }

  public static void post(Runnable runnable) {
    checkNotNull(runnable, "runnable cannot be null.");
    rootView().post(runnable);
  }

  public static void delayed(final Runnable runnable, long duration) {
    checkNotNull(runnable, "runnable cannot be null.");
    new Handler().postDelayed(new Runnable() {
      @Override
      public void run() {
        Ui(runnable);
      }
    }, duration);
  }

  public static View rootView() {
    return requireActivity().getWindow().getDecorView();
  }

  public static boolean isNull(Object value) {
    return value == null;
  }

  public static boolean isNotNull(Object value) {
    return value != null;
  }

}
