package com.mucheng.mucuteui.example.props;

import com.mucheng.mucuteui.props.LinearProps;
import com.mucheng.mucuteui.props.TextProps;

public class GroupProps {

  public boolean animatedText() {
    return animatedText;
  }

  public GroupProps animatedText(boolean animatedText) {
    this.animatedText = animatedText;
    return this;
  }

  private boolean animatedText;

  public TextProps textProps() {
    return textProps;
  }

  public GroupProps textProps(TextProps textProps) {
    this.textProps = textProps;
    return this;
  }

  public LinearProps buttonProps() {
    return buttonProps;
  }

  public GroupProps buttonProps(LinearProps buttonProps) {
    this.buttonProps = buttonProps;
    return this;
  }

  private TextProps textProps;

  private LinearProps buttonProps;

}
