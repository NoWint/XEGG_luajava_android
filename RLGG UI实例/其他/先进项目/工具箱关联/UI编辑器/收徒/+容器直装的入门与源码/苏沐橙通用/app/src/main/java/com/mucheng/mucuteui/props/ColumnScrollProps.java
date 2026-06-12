package com.mucheng.mucuteui.props;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

public class ColumnScrollProps extends ScrollProps<ColumnScrollProps> {

  @Override
  protected void merge(ColumnScrollProps thisObj, ColumnScrollProps thatObj) {
    super.merge(thisObj, thatObj);
    thisObj.fillViewport(isNotNull(thatObj.fillViewport()) ? thatObj.fillViewport() : thisObj.fillViewport());
    thisObj.fadingEdgeOrientation(isNotNull(thatObj.fadingEdgeLength()) ? thatObj.fadingEdgeOrientation() : thisObj.fadingEdgeOrientation());
    thisObj.fadingEdgeLength(isNotNull(thatObj.fadingEdgeLength()) ? thatObj.fadingEdgeLength() : thisObj.fadingEdgeLength());
  }

}
