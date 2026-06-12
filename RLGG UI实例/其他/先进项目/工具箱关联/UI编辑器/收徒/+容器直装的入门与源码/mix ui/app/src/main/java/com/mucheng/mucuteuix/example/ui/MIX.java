package com.mucheng.mucuteuix.example.ui;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;

import com.mucheng.mucuteuix.core.MuCuteUIX;
import com.mucheng.mucuteuix.effect.Hint;
import com.mucheng.mucuteuix.effect.ModScript;
import com.mucheng.mucuteuix.effect.Notification;

public final class MIX {

  public static SeeDI seeDI;

  public static ModScript modScript;

  public static Notification notification;

  public static FloatButton floatButton;

  public static void init() {
    if (seeDI != null) {
      return;
    }
    if (modScript != null) {
      return;
    }
    if (notification != null) {
      return;
    }
    if (floatButton != null) {
      return;
    }

    loop();
    loopThread();

    seeDI = new SeeDI();
    seeDI.show();

    modScript = new ModScript();
    modScript.show();

    modScript.addModScript("ModScript", "modScript");

    notification = new Notification();
    notification.show();

    floatButton = new FloatButton();
    floatButton.show();
  }

  private static void loop() {
    new Handler(Looper.getMainLooper()).post(new Runnable() {

      /** @noinspection InfiniteLoopStatement*/
      @Override
      public void run() {
        while (true) {
          try {
            Looper.loop();
          } catch (Throwable e) {
            new Hint()
              .setMessage("UI Loop Crash: " + e)
              .show();
          }
        }
      }

    });
  }

  private static void loopThread() {
    Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
      @Override
      public void uncaughtException(Thread t, final Throwable e) {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
          @Override
          public void run() {
            new Hint()
              .setMessage("Thread Loop Crash: " + e)
              .show();
          }
        });
      }
    });
  }

  public static void init(Activity activity) {
    MuCuteUIX.init(activity);
    init();
  }

}
