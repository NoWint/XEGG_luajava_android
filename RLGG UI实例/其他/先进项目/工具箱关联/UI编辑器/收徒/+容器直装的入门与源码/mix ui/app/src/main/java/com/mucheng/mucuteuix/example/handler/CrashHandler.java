package com.mucheng.mucuteuix.example.handler;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.os.Process;

import com.mucheng.mucuteuix.example.CrashHandlerActivity;

import java.io.IOException;
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
  public void uncaughtException(Thread thread, Throwable throwable) {
    final StringWriter stringWriter = new StringWriter();
    final PrintWriter printWriter = new PrintWriter(stringWriter);
    throwable.printStackTrace(printWriter);
    final Intent intent = new Intent(context, CrashHandlerActivity.class);
    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    intent.putExtra("stackTrace", stringWriter.toString());
    try {
      stringWriter.close();
      printWriter.close();
    } catch (IOException e) {
      e.printStackTrace();
    }
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
