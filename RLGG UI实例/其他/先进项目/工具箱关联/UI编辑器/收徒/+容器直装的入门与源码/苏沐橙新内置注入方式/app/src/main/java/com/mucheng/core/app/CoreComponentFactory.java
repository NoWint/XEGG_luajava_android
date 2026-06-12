package com.mucheng.core.app;
import android.app.AppComponentFactory;
import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.app.Service;
import android.util.Log;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;

public class CoreComponentFactory extends AppComponentFactory {
    
  @Override
  public Activity instantiateActivity(ClassLoader cl, String className, Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
    final Activity newActivity = super.instantiateActivity(cl, className, intent);
    if (className.equals("com.mojang.minecraftpe.MainActivity")) {
      new Handler(Looper.getMainLooper()).post(new Runnable() {

          @Override
          public void run() {
            Toast.makeText(newActivity, "Hooked MainActivity: " + newActivity, Toast.LENGTH_SHORT).show();
          }
          
      });
    }
    return newActivity;
  }

  @Override
  public Application instantiateApplication(ClassLoader cl, String className) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
    return super.instantiateApplication(cl, className);
  }

  @Override
  public BroadcastReceiver instantiateReceiver(ClassLoader cl, String className, Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
    return super.instantiateReceiver(cl, className, intent);
  }

  @Override
  public ContentProvider instantiateProvider(ClassLoader cl, String className) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
    return super.instantiateProvider(cl, className);
  }

  @Override
  public Service instantiateService(ClassLoader cl, String className, Intent intent) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
    return super.instantiateService(cl, className, intent);
  }

}
