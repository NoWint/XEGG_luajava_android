package com.mucheng.mucuteui.example.props;

import android.view.View;

import com.mucheng.mucuteui.example.listener.OnCheckedListener;

public class ButtonItemProps {

  private String title;

  private String description;

  private String buttonText;

  private View.OnClickListener onClick;

  public String title() {
    return title;
  }

  public ButtonItemProps title(String title) {
    this.title = title;
    return this;
  }

  public String description() {
    return description;
  }

  public ButtonItemProps description(String description) {
    this.description = description;
    return this;
  }

  public String buttonText() {
    return buttonText;
  }

  public ButtonItemProps buttonText(String buttonText) {
    this.buttonText = buttonText;
    return this;
  }

  public View.OnClickListener onClick() {
    return onClick;
  }

  public ButtonItemProps onClick(View.OnClickListener onClick) {
    this.onClick = onClick;
    return this;
  }

  public OnCheckedListener onChecked() {
    return onChecked;
  }

  public ButtonItemProps onChecked(OnCheckedListener onChecked) {
    this.onChecked = onChecked;
    return this;
  }

  public boolean stateful() {
    return stateful;
  }

  public ButtonItemProps stateful(boolean stateful) {
    this.stateful = stateful;
    return this;
  }

  public boolean checked() {
    return isChecked;
  }

  public ButtonItemProps checked(boolean checked) {
    isChecked = checked;
    return this;
  }

  private OnCheckedListener onChecked;

  private boolean stateful;

  private boolean isChecked;

}
