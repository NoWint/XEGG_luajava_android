package com.mucheng.mucuteui.props;

import com.mucheng.mucuteui.example.listener.OnCheckedListener;

public class SwitchProps extends BaseProps<SwitchProps> {

  private Boolean isChecked;

  private OnCheckedListener onChecked;

  public Boolean checked() {
    return isChecked;
  }

  public SwitchProps checked(Boolean checked) {
    isChecked = checked;
    return this;
  }

  public OnCheckedListener onChecked() {
    return onChecked;
  }

  public SwitchProps onChecked(OnCheckedListener onChecked) {
    this.onChecked = onChecked;
    return this;
  }

  public LinearProps buttonProps() {
    return buttonProps;
  }

  public SwitchProps buttonProps(LinearProps buttonProps) {
    this.buttonProps = buttonProps;
    return this;
  }

  private LinearProps buttonProps;

  @Override
  protected void merge(SwitchProps thisObj, SwitchProps thatObj) {
    thisObj.buttonProps = thatObj.buttonProps != null ? thatObj.buttonProps : thisObj.buttonProps;
    thisObj.isChecked = thatObj.isChecked != null ? thatObj.isChecked : thisObj.isChecked;
    thisObj.onChecked = thatObj.onChecked != null ? thatObj.onChecked : thisObj.onChecked;
    ;
  }

}
