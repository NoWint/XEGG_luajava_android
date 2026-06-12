package com.mucheng.mucuteuix.example;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

public class CrashHandlerActivity extends Activity {

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    final String stackTrace = getIntent().getStringExtra("stackTrace");

    final ScrollView scrollView = new ScrollView(this);
    final TextView textView = new TextView(this);
    textView.setText(stackTrace);
    textView.setTextSize(16f);
    textView.setTextIsSelectable(true);
    scrollView.addView(textView);

    addContentView(scrollView, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
  }

  @Override
  public void onBackPressed() {
    Toast.makeText(this, "软件已崩溃，不允许返回", Toast.LENGTH_SHORT).show();
  }
}
