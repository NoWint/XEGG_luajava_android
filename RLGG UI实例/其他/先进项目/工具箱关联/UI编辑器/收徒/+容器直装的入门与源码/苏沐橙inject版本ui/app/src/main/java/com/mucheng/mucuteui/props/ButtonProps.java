package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

public class ButtonProps extends BaseProps<ButtonProps> {

  private LinearProps buttonProps;

  public LinearProps buttonProps() {
    return buttonProps;
  }

  public ButtonProps buttonProps(LinearProps buttonProps) {
    this.buttonProps = buttonProps;
    return this;
  }

  public TextProps textProps() {
    return textProps;
  }

  public ButtonProps textProps(TextProps textProps) {
    this.textProps = textProps;
    return this;
  }

  public Boolean specialProp() {
    return specialProp;
  }

  public ButtonProps specialProp(Boolean specialProp) {
    this.specialProp = specialProp;
    return this;
  }

  private TextProps textProps;

  private Boolean specialProp;

  @Override
  protected void merge(ButtonProps thisObj, ButtonProps thatObj) {
    thisObj.buttonProps = isNotNull(thatObj.buttonProps) ? thatObj.buttonProps : thisObj.buttonProps;
    thisObj.textProps = isNotNull(thatObj.textProps) ? thatObj.textProps : thisObj.textProps;
    thisObj.specialProp = isNotNull(thatObj.specialProp) ? thatObj.specialProp : thisObj.specialProp;
  }

}
