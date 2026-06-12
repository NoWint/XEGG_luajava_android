package com.mucheng.mucuteuix.component;

import android.text.Spanned;
import android.widget.TextView;

import com.mucheng.mucuteuix.base.ViewHelper;

public class Text extends ViewHelper<Text> {

  private TextView textView;

  @Override
  protected void init() {
    textView = new TextView(requireActivity());
  }

  public Text setText(String text) {
    checkTextViewNotNull();
    textView.setText(text);
    return this;
  }

  public Text setText(Spanned text) {
    checkTextViewNotNull();
    textView.setText(text);
    return this;
  }

  public Text setTextSize(float textSize) {
    checkTextViewNotNull();
    textView.setTextSize(textSize);
    return this;
  }

  public Text setTextIsSelectable(boolean textIsSelectable) {
    checkTextViewNotNull();
    textView.setTextIsSelectable(textIsSelectable);
    return this;
  }

  public Text setTextColor(int textColor) {
    checkTextViewNotNull();
    textView.setTextColor(textColor);
    return this;
  }

  public Text setSingleLine(boolean singleLine) {
    checkTextViewNotNull();
    textView.setSingleLine(singleLine);
    return this;
  }

  public Text setGravity(int gravity) {
    checkTextViewNotNull();
    textView.setGravity(gravity);
    return this;
  }

  public Text setShadowLayer(float radius, float dx, float fy, int color) {
    checkTextViewNotNull();
    textView.setShadowLayer(radius, dx, fy, color);
    return this;
  }

  @Override
  public TextView build() {
    checkTextViewNotNull();
    return textView;
  }

  private void checkTextViewNotNull() {
    checkNotNull(textView, "textView");
  }

}
