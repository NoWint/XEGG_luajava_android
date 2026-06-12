package com.mucheng.mucuteui.example;

import android.app.Activity;
import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;

public class CrashReportActivity extends Activity {

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    String error = getIntent().getStringExtra("error");

    final ScrollView scrollView = new ScrollView(this);
    TextView textView = new TextView(this);
    textView.setText(error);
    textView.setTextSize(16f);
    textView.setTextIsSelectable(true);
    scrollView.addView(textView);

    addContentView(scrollView, new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
  }

  @Override
  public void onBackPressed() {
  }
}
