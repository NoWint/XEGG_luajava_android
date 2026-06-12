package com.mucheng.mucuteui.impl;

import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;

import android.annotation.SuppressLint;
import android.widget.LinearLayout;

import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.props.LinearProps;
import com.mucheng.mucuteui.util.MuCuteUtil;

public class LinearImpl extends BaseImpl<LinearLayout> {

  public LinearImpl(LinearLayout linearLayout) {
    super(linearLayout);
  }

  @SuppressLint("WrongConstant")
  @Override
  public void onAccepted(EventBus eventBus, Object value) {
    MuCuteUtil.checkNotNullForProps(value);
    LinearProps props = (LinearProps) value;
    if (isNotNull(props.orientation())) {
      component.setOrientation(props.orientation());
    }
    if (isNotNull(props.gravity())) {
      component.setGravity(props.gravity());
    }
  }

}
