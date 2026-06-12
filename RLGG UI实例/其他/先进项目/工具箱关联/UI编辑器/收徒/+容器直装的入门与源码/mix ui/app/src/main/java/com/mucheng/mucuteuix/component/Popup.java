package com.mucheng.mucuteuix.component;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PixelFormat;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.Gravity;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;

import com.mucheng.mucuteuix.base.BaseHelper;
import com.mucheng.mucuteuix.base.ViewHelper;
import com.mucheng.mucuteuix.util.GradientDrawableBuilder;

public class Popup extends BaseHelper {

  private static final boolean IS_FLOATING_MODE = false;

  private PopupImpl impl;

  @Override
  protected void init() {
    impl = IS_FLOATING_MODE ? new LayoutParamsImpl() : new PopupWindowImpl();
  }

  public boolean isFloatingMode() {
    return IS_FLOATING_MODE;
  }

  public Popup setWidth(int width) {
    checkImplNotNull();
    impl.setWidth(width);
    return this;
  }

  public Popup setHeight(int height) {
    checkImplNotNull();
    impl.setHeight(height);
    return this;
  }

  public Popup setFocusable(boolean focusable) {
    checkImplNotNull();
    impl.setFocusable(focusable);
    return this;
  }

  public Popup setTouchable(boolean touchable) {
    checkImplNotNull();
    impl.setTouchable(touchable);
    return this;
  }

  public Popup setAnimation(Animation animation) {
    checkImplNotNull();
    impl.setAnimation(animation);
    return this;
  }

  public Popup setBackground(Drawable background) {
    checkImplNotNull();
    impl.setBackground(background);
    return this;
  }

  public Popup setBackground(GradientDrawableBuilder background) {
    checkImplNotNull();
    impl.setBackground(background);
    return this;
  }

  public Popup setContentView(ViewHelper<?> contentView) {
    checkImplNotNull();
    impl.setContentView(contentView);
    return this;
  }

  public Popup setGravity(int gravity) {
    checkImplNotNull();
    impl.setGravity(gravity);
    return this;
  }

  public Popup setPosition(int x, int y) {
    checkImplNotNull();
    impl.setPosition(x, y);
    return this;
  }

  public Popup show() {
    checkImplNotNull();
    impl.show();
    return this;
  }

  public Popup dismiss() {
    checkImplNotNull();
    impl.dismiss();
    return this;
  }

  public boolean isShown() {
    checkImplNotNull();
    return impl.isShown();
  }

  public PopupWidget build() {
    checkImplNotNull();
    return impl.getPopupWidget();
  }

  private void checkImplNotNull() {
    checkNotNull(impl, "impl");
  }

  public enum Animation {
    Dialog, InputMethod, Toast, Activity, Translucent
  }

  private class PopupWindowImpl implements PopupImpl {

    private final PopupWindow popupWindow;

    private final PopupWidget popupWidget;

    private final FrameLayout root;

    @SuppressLint("RtlHardcoded")
    private int gravity = Gravity.LEFT | Gravity.TOP;

    private int x;

    private int y;

    public PopupWindowImpl() {
      popupWindow = new PopupWindow();
      popupWidget = new PopupWidget(popupWindow);
      root = new FrameLayout(requireActivity());

      popupWindow.setInputMethodMode(PopupWindow.INPUT_METHOD_NEEDED);
      popupWindow.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);
      popupWindow.setBackgroundDrawable(null);
      popupWindow.setClippingEnabled(false);
      popupWindow.setContentView(root);
    }

    @Override
    public PopupWidget getPopupWidget() {
      return popupWidget;
    }

    @Override
    public void setWidth(int width) {
      popupWindow.setWidth(width);
      updateIfNeeded();
    }

    @Override
    public void setHeight(int height) {
      popupWindow.setHeight(height);
      updateIfNeeded();
    }

    @Override
    public void setFocusable(boolean focusable) {
      popupWindow.setFocusable(focusable);
      updateIfNeeded();
    }

    @Override
    public void setTouchable(boolean touchable) {
      popupWindow.setTouchable(touchable);
      updateIfNeeded();
    }

    @Override
    public void setAnimation(Animation animation) {
      int animationRes = -1;
      switch (animation) {
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
      popupWindow.setAnimationStyle(animationRes);
      updateIfNeeded();
    }

    @Override
    public void show() {
      if (!popupWindow.isShowing()) {
        post(new Runnable() {
          @Override
          public void run() {
            popupWindow.showAtLocation(requireActivity().getWindow().getDecorView(), gravity, x, y);
          }
        });
      }
    }

    @Override
    public void dismiss() {
      if (popupWindow.isShowing()) {
        post(new Runnable() {
          @Override
          public void run() {
            popupWindow.dismiss();
          }
        });
      }
    }

    @Override
    public void setPosition(int x, int y) {
      this.x = x;
      this.y = y;
      updateIfNeeded();
    }

    @Override
    public void setGravity(int gravity) {
      this.gravity = gravity;
    }

    @Override
    public void setBackground(Drawable background) {
      root.setBackground(background);
    }

    @Override
    public void setBackground(GradientDrawableBuilder background) {
      setBackground(background.build());
    }

    @Override
    public void setContentView(ViewHelper<?> contentView) {
      root.removeAllViews();
      root.addView(contentView.build(), new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
    }

    @Override
    public boolean isShown() {
      return popupWindow.isShowing();
    }

    private void updateIfNeeded() {
      post(new Runnable() {
        @Override
        public void run() {
          popupWindow.update(x, y, -1, -1);
        }
      });
    }

  }

  private class LayoutParamsImpl implements PopupImpl {

    private final WindowManager.LayoutParams layoutParams;

    private final PopupWidget popupWidget;

    private final FrameLayout root;

    private boolean isShown;

    public LayoutParamsImpl() {
      layoutParams = new WindowManager.LayoutParams();
      popupWidget = new PopupWidget(layoutParams);
      root = new FrameLayout(requireActivity());

      layoutParams.format = PixelFormat.RGBA_8888;
      layoutParams.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE | WindowManager.LayoutParams.FLAG_FULLSCREEN | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN;
      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
        layoutParams.type = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
      } else {
        layoutParams.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
      }

      if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
        layoutParams.layoutInDisplayCutoutMode = WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
      }
    }

    @Override
    public PopupWidget getPopupWidget() {
      return popupWidget;
    }

    @Override
    public void setWidth(int width) {
      layoutParams.width = width;
      updateIfNeeded();
    }

    @Override
    public void setHeight(int height) {
      layoutParams.height = height;
      updateIfNeeded();
    }

    @Override
    public void setFocusable(boolean focusable) {
    }

    @Override
    public void setTouchable(boolean touchable) {
    }

    @Override
    public void setAnimation(Animation animation) {
      int animationRes = -1;
      switch (animation) {
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
      layoutParams.windowAnimations = animationRes;
      updateIfNeeded();
    }

    @Override
    public void show() {
      if (!isShown) {
        post(new Runnable() {
          @Override
          public void run() {
            try {
              WindowManager windowManager = (WindowManager) requireActivity().getSystemService(Context.WINDOW_SERVICE);
              windowManager.addView(root, layoutParams);
              isShown = true;
            } catch (Exception ignored) {
            }
          }
        });
      }
    }

    @Override
    public void dismiss() {
      if (isShown) {
        post(new Runnable() {
          @Override
          public void run() {
            try {
              WindowManager windowManager = (WindowManager) requireActivity().getSystemService(Context.WINDOW_SERVICE);
              windowManager.removeView(root);
              isShown = false;
            } catch (Exception ignored) {
            }
          }
        });
      }
    }

    @Override
    public void setPosition(int x, int y) {
      layoutParams.x = x;
      layoutParams.y = y;
      updateIfNeeded();
    }

    @Override
    public void setGravity(int gravity) {
      layoutParams.gravity = gravity;
      updateIfNeeded();
    }

    @Override
    public void setBackground(Drawable background) {
      root.setBackground(background);
    }

    @Override
    public void setBackground(GradientDrawableBuilder background) {
      setBackground(background.build());
    }

    @Override
    public void setContentView(ViewHelper<?> contentView) {
      root.removeAllViews();
      root.addView(contentView.build(), new FrameLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
    }

    @Override
    public boolean isShown() {
      return isShown;
    }

    private void updateIfNeeded() {
      if (isShown) {
        post(new Runnable() {
          @Override
          public void run() {
            try {
              WindowManager windowManager = (WindowManager) requireActivity().getSystemService(Context.WINDOW_SERVICE);
              windowManager.updateViewLayout(root, layoutParams);
            } catch (Exception ignored) {
            }
          }
        });
      }
    }

  }

  private interface PopupImpl {

    PopupWidget getPopupWidget();

    void setWidth(int width);

    void setHeight(int height);

    void setFocusable(boolean focusable);

    void setTouchable(boolean touchable);

    void setAnimation(Animation animation);

    void show();

    void dismiss();

    void setPosition(int x, int y);

    void setGravity(int gravity);

    void setBackground(Drawable background);

    void setBackground(GradientDrawableBuilder background);

    void setContentView(ViewHelper<?> contentView);

    boolean isShown();

  }

  public static final class PopupWidget {
    private PopupWindow popupWindow;
    private WindowManager.LayoutParams layoutParams;

    public PopupWidget(PopupWindow popupWindow) {
      this.popupWindow = popupWindow;
    }

    public PopupWidget(WindowManager.LayoutParams layoutParams) {
      this.layoutParams = layoutParams;
    }

    public boolean isFloatingMode() {
      return layoutParams != null;
    }

    public PopupWindow getPopupWindow() {
      return popupWindow;
    }

    public WindowManager.LayoutParams getLayoutParams() {
      return layoutParams;
    }
  }

}
