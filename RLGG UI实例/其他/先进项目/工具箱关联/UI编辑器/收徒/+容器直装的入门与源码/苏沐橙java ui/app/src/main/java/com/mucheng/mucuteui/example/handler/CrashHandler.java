package com.mucheng.mucuteui.example.handler;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Process;

import com.mucheng.mucuteui.example.CrashReportActivity;

import java.io.PrintWriter;
import java.io.StringWriter;

public class CrashHandler implements Thread.UncaughtExceptionHandler {

  private final Context context;

  private CrashHandler(Context context) {
    this.context = context;
  }

  @SuppressLint("StaticFieldLeak")
  private static volatile CrashHandler instance;

  @Override
  public void uncaughtException(Thread t, Throwable e) {
    final StringWriter stringWriter = new StringWriter();
    final PrintWriter printWriter = new PrintWriter(stringWriter);
    e.printStackTrace(printWriter);
    Intent intent = new Intent(context, CrashReportActivity.class);
    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    intent.putExtra("error", stringWriter.toString());
    context.startActivity(intent);
    Process.killProcess(Process.myPid());
  }

  public static void init(Context context) {
    if (instance == null) {
      synchronized (CrashHandler.class) {
        if (instance == null) {
          instance = new CrashHandler(context);
          Thread.setDefaultUncaughtExceptionHandler(instance);
        }
      }
    }
  }

}
