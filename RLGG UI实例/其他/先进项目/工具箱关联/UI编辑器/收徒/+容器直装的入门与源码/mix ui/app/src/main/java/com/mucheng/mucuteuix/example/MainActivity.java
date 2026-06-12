package com.mucheng.mucuteuix.example;

import android.app.Activity;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;

import com.mucheng.mucuteuix.example.ui.MIX;

public class MainActivity extends Activity implements Runnable {

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    getWindow().getDecorView().postDelayed(this, 350L);
  }

  @Override
  public void run() {
    MIX.init(this);
  }

}