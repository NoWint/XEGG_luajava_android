package com.mucheng.mucuteui.example.props;

import com.mucheng.mucuteui.example.listener.OnCheckedListener;

public class SwitchItemProps {

  private String title;

  public String title() {
    return title;
  }

  public SwitchItemProps title(String title) {
    this.title = title;
    return this;
  }

  public String description() {
    return description;
  }

  public SwitchItemProps description(String description) {
    this.description = description;
    return this;
  }

  public boolean checked() {
    return isChecked;
  }

  public SwitchItemProps checked(boolean checked) {
    isChecked = checked;
    return this;
  }

  public OnCheckedListener onChecked() {
    return onChecked;
  }

  public SwitchItemProps onChecked(OnCheckedListener onChecked) {
    this.onChecked = onChecked;
    return this;
  }

  private String description;

  private boolean isChecked;

  private OnCheckedListener onChecked;

}
