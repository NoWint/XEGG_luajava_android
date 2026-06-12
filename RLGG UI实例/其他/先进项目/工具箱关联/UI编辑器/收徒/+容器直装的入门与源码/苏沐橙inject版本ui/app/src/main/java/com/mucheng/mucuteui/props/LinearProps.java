package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

public class LinearProps extends ViewGroupProps<LinearProps> {

  public Integer orientation() {
    return orientation;
  }

  public LinearProps orientation(Integer orientation) {
    this.orientation = orientation;
    return this;
  }

  private Integer orientation;

  public Integer gravity() {
    return gravity;
  }

  public LinearProps gravity(Integer gravity) {
    this.gravity = gravity;
    return this;
  }

  private Integer gravity;

  @Override
  protected void merge(LinearProps thisObj, LinearProps thatObj) {
    super.merge(thisObj, thatObj);
    thisObj.orientation = isNotNull(thatObj.orientation) ? thatObj.orientation : thisObj.orientation;
    thisObj.gravity = isNotNull(thatObj.gravity) ? thatObj.gravity : thisObj.gravity;
  }
}
