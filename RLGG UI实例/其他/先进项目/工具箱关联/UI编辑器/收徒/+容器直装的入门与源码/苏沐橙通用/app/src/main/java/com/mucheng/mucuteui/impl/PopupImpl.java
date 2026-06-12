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
import android.view.WindowManager;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.graphics.drawable.Drawable;
import com.mucheng.mucuteui.components.PopupComponents;
import android.view.Gravity;

public class PopupImpl extends BaseImpl<PopupComponents.PopupContainer> {
	
  private ViewGroup root = null;
  
  private boolean isShowing = false;
  
  private int popupWindowGravity = Gravity.TOP | Gravity.LEFT;
  
  private int popupWindowX;
  
  private int popupWindowY;

  public PopupImpl(PopupComponents.PopupContainer popupContainer) {
    super(popupContainer);
	root = new FrameLayout(MuCuteUtil.requireActivity());
	root.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
	if (popupContainer.isPopupWindow()) {
		popupContainer.getPopupWindow().setContentView(root);
	}
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
	  if (component.isLayoutParams()) {
		  component.getLayoutParams().width = props.width();
	  } else {
		  component.getPopupWindow().setWidth(props.width());
	  }
    }
    if (isNotNull(props.height())) {
	  if (component.isLayoutParams()) {
		  component.getLayoutParams().height = props.height();
	  } else {
		  component.getPopupWindow().setHeight(props.height());
	  }
    }
    if (isNotNull(props.focusable())) {
      if (component.isPopupWindow()) {
		  component.getPopupWindow().setFocusable(props.focusable());
	  }
    }
    if (isNotNull(props.touchable())) {
      if (component.isPopupWindow()) {
		  component.getPopupWindow().setTouchable(props.touchable());
	  }
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
	  if (component.isPopupWindow()) {
		  component.getPopupWindow().setAnimationStyle(animationRes);
	  } else {
      	  component.getLayoutParams().windowAnimations = animationRes;
	  }
    }
    if (isNotNull(props.background())) {
	  root.setBackground(props.background().value());
    }
    if (isNotNull(props.contentView())) {
	  root.removeAllViews();
	  root.addView(props.contentView().component(), new FrameLayout.LayoutParams(-1, -1));
    }
    if (isNotNull(props.gravity())) {
	  if (component.isPopupWindow()) {
		  popupWindowGravity = props.gravity();
	  } else {
		  component.getLayoutParams().gravity = props.gravity();
	  }
    }
    if (isNotNull(props.pos())) {
      int[] pos = props.pos();
	  if (component.isPopupWindow()) {
		  popupWindowX = pos[0];
		  popupWindowY = pos[1];
	  } else {
		  component.getLayoutParams().x = pos[0];
		  component.getLayoutParams().y = pos[1];
	  }
    }
    if (isNotNull(props.dismiss())) {
      boolean dismiss = props.dismiss();
      if (dismiss) {
        post(new Runnable() {
          @Override
          public void run() {
			try {
			  if (component.isPopupWindow()) {
				  component.getPopupWindow().dismiss();
			  } else {
			      final WindowManager windowManager = (WindowManager) MuCuteUtil.requireActivity().getSystemService(Context.WINDOW_SERVICE);
			      windowManager.removeView(root);
			  }
			  isShowing = false;
			} catch (Exception e) {}
          }
        });
      } else {
        if (isShowing) {
          // width, height 设为 -1 为忽略
		  try {
			if (component.isPopupWindow()) {
				component.getPopupWindow().update(popupWindowX, popupWindowY, -1, -1);
			} else {
		        final WindowManager windowManager = (WindowManager) MuCuteUtil.requireActivity().getSystemService(Context.WINDOW_SERVICE);
		        windowManager.updateViewLayout(root, component.getLayoutParams());
			}
		  } catch (Exception e) {}
        } else {
          post(new Runnable() {
            @Override
            public void run() {
			  try {
				if (component.isPopupWindow()) {
					component.getPopupWindow().showAtLocation(root, popupWindowGravity, popupWindowX, popupWindowY);
				} else {
			        final WindowManager windowManager = (WindowManager) MuCuteUtil.requireActivity().getSystemService(Context.WINDOW_SERVICE);
			        windowManager.addView(root, component.getLayoutParams());
				}
			    isShowing = true;
			  } catch (Exception e) {}
            }
          });
        }
      }

    } else {
      // 如果在显示中则更新位置
      if (isShowing) {
        // width, height 设为 -1 为忽略
		try {
		  if (component.isPopupWindow()) {
			  component.getPopupWindow().update(popupWindowX, popupWindowY, -1, -1);
		  } else {
		      final WindowManager windowManager = (WindowManager) MuCuteUtil.requireActivity().getSystemService(Context.WINDOW_SERVICE);
		      windowManager.updateViewLayout(root, component.getLayoutParams());
		  }
		} catch (Exception e) {}
      } else {
        post(new Runnable() {
          @Override
          public void run() {
			  try {
				if (component.isPopupWindow()) {
					component.getPopupWindow().showAtLocation(root, popupWindowGravity, popupWindowX, popupWindowY);
				} else {
			        final WindowManager windowManager = (WindowManager) MuCuteUtil.requireActivity().getSystemService(Context.WINDOW_SERVICE);
			        windowManager.addView(root, component.getLayoutParams());
				}
			    isShowing = true;
			  } catch (Exception e) {}
          }
        });
      }
    }
  }

}
