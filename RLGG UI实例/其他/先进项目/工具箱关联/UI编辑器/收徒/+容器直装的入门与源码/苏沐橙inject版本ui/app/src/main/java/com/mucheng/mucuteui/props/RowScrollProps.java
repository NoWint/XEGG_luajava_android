package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

public class RowScrollProps extends ScrollProps<RowScrollProps> {

  @Override
  protected void merge(RowScrollProps thisObj, RowScrollProps thatObj) {
    super.merge(thisObj, thatObj);
    thisObj.fillViewport(isNotNull(thatObj.fillViewport()) ? thatObj.fillViewport() : thisObj.fillViewport());
    thisObj.fadingEdgeOrientation(isNotNull(thatObj.fadingEdgeLength()) ? thatObj.fadingEdgeOrientation() : thisObj.fadingEdgeOrientation());
    thisObj.fadingEdgeLength(isNotNull(thatObj.fadingEdgeLength()) ? thatObj.fadingEdgeLength() : thisObj.fadingEdgeLength());
  }

}
