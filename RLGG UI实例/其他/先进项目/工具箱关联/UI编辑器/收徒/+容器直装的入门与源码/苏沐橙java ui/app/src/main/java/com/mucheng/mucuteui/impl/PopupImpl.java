package com.mucheng.mucuteui.impl;

import static com.mucheng.mucuteui.components.PopupComponents.Activity;
import static com.mucheng.mucuteui.components.PopupComponents.Dialog;
import static com.mucheng.mucuteui.components.PopupComponents.InputMethod;
import static com.mucheng.mucuteui.components.PopupComponents.Toast;
import static com.mucheng.mucuteui.components.PopupComponents.Translucent;
import static com.mucheng.mucuteui.util.GravityUtil.Left;
import static com.mucheng.mucuteui.util.GravityUtil.Top;
import static com.mucheng.mucuteui.util.MuCuteUtil.isNotNull;
import static com.mucheng.mucuteui.util.MuCuteUtil.post;
import static com.mucheng.mucuteui.util.MuCuteUtil.rootView;

import android.widget.PopupWindow;

import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.model.MutableValue;
import com.mucheng.mucuteui.props.PopupProps;
import com.mucheng.mucuteui.util.MuCuteUtil;

public class PopupImpl extends BaseImpl<PopupWindow> {

  private int gravity = Left | Top;

  private int x = 0;

  private int y = 0;

  public PopupImpl(PopupWindow popupWindow) {
    super(popupWindow);
  }


  @Override
  public void onAccepted(EventBus eventBus, Object value) {
    MuCuteUtil.checkNotNullForProps(value);
    PopupProps props = (PopupProps) value;
    if (isNotNull(props.link())) {
      if (props.link() != null) {
        MutableValue<EventBus> linkedValue = props.link();
        linkedValue.setValue(eventBus);
      }
    }

    if (isNotNull(props.width())) {
      component.setWidth(props.width());
    }
    if (isNotNull(props.height())) {
      component.setHeight(props.height());
    }
    if (isNotNull(props.focusable())) {
      component.setFocusable(props.focusable());
    }
    if (isNotNull(props.touchable())) {
      component.setTouchable(props.touchable());
    }
    if (isNotNull(props.animation())) {
      // PopupWindow 默认无动画, 值为 -1
      int animationRes = -1;
      switch (props.animation()) {
        case Dialog:
          animationRes = android.R.style.Animation_Dialog;
          break;
        case InputMethod:
          animationRes = android.R.style.Animation_InputMethod;
          break;
        case Toast:
          animationRes = android.R.style.Animation_Toast;
          break;
        case Activity:
          animationRes = android.R.style.Animation_Activity;
          break;
        case Translucent:
          animationRes = android.R.style.Animation_Translucent;
          break;
      }
      component.setAnimationStyle(animationRes);
    }
    if (isNotNull(props.background())) {
      component.setBackgroundDrawable(props.background().value());
    }
    if (isNotNull(props.contentView())) {
      component.setContentView(props.contentView().component());
    }
    if (isNotNull(props.gravity())) {
      gravity = props.gravity();
    }
    if (isNotNull(props.pos())) {
      int[] pos = props.pos();
      x = pos[0];
      y = pos[1];
    }
    if (isNotNull(props.dismiss())) {
      boolean dismiss = props.dismiss();
      if (dismiss) {
        post(new Runnable() {
          @Override
          public void run() {
            component.dismiss();
          }
        });
      } else {
        if (component.isShowing()) {
          // width, height 设为 -1 为忽略
          component.update(x, y, -1, -1);
        } else {
          post(new Runnable() {
            @Override
            public void run() {
              component.showAtLocation(rootView(), gravity, x, y);
            }
          });
        }
      }

    } else {
      // 如果在显示中则更新位置
      if (component.isShowing()) {
        // width, height 设为 -1 为忽略
        component.update(x, y, -1, -1);
      } else {
        post(new Runnable() {
          @Override
          public void run() {
            component.showAtLocation(rootView(), gravity, x, y);
          }
        });
      }
    }
  }

}
