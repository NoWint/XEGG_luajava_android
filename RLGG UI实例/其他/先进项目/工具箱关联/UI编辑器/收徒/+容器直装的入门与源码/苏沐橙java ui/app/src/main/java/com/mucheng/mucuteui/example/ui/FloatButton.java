package com.mucheng.mucuteui.example.ui;

import static com.mucheng.mucuteui.components.LinearComponents.Column;
import static com.mucheng.mucuteui.components.LinearComponents.ColumnProps;
import static com.mucheng.mucuteui.components.LinearComponents.LinearParams;
import static com.mucheng.mucuteui.components.PopupComponents.Dialog;
import static com.mucheng.mucuteui.components.PopupComponents.Popup;
import static com.mucheng.mucuteui.components.PopupComponents.PopupKey;
import static com.mucheng.mucuteui.components.PopupComponents.PopupProps;
import static com.mucheng.mucuteui.components.ViewComponents.ViewProps;
import static com.mucheng.mucuteui.effect.RippleEffect.Ripple;
import static com.mucheng.mucuteui.effect.RippleEffect.RippleProps;
import static com.mucheng.mucuteui.eventbus.EventBus.GlobalEventBus;
import static com.mucheng.mucuteui.example.ui.ClickGUI.ClickGUIKey;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.BR_TL;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawable;
import static com.mucheng.mucuteui.util.GradientDrawableUtil.GradientDrawableProps;
import static com.mucheng.mucuteui.util.GravityUtil.Left;
import static com.mucheng.mucuteui.util.GravityUtil.Top;
import static com.mucheng.mucuteui.util.ParseUtil.parseColor;
import static com.mucheng.mucuteui.util.SizeUtil.H;
import static com.mucheng.mucuteui.util.SizeUtil.MatchParent;
import static com.mucheng.mucuteui.util.SizeUtil.W;
import static com.mucheng.mucuteui.util.SizeUtil.dip2px;
import static com.mucheng.mucuteui.util.SizeUtil.intDip2px;
import static com.mucheng.mucuteui.util.VibratorUtil.VibratorKey;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;

import com.mucheng.mucuteui.components.ViewComponents;
import com.mucheng.mucuteui.eventbus.EventBus;
import com.mucheng.mucuteui.model.Container;

public final class FloatButton implements EventBus.Listener {

  private FloatButton() {
  }

  private static volatile FloatButton instance;

  private static boolean initialized = false;

  private boolean isFirstInitialized = true;

  public static boolean openGUI = false;

  private int x;

  private int y;

  public static final String FloatButtonKey = "FloatButtonKey";

  public static void init() {
    if (initialized) {
      return;
    }
    if (instance == null) {
      synchronized (FloatButton.class) {
        if (instance == null) {
          instance = new FloatButton();
          initialized = true;
          GlobalEventBus.register(FloatButtonKey, instance);
        }
      }
    }
  }

  @Override
  public void onAccepted(final EventBus eventBus, Object unused) {
    final Container popup = new Container();
    if (isFirstInitialized) {
      x = (int) (W() - dip2px(50f));
      y = (int) (H() - H() / 1.5f);
      isFirstInitialized = false;
    }

    final float[] downX = {0};
    final float[] downY = {0};
    final float[] moveX = {0};
    final float[] moveY = {0};
    final float vector = 0.3f;
    final boolean[] longClickDown = {false};

    Popup(PopupProps()
        .width(intDip2px(35))
        .height(intDip2px(35))
        .background(null)
        .contentView(Column(ColumnProps()
            .background(GradientDrawable(GradientDrawableProps()
                .color(parseColor("#FFF5F5F7"))
                .radius(dip2px(35f))))
            .focusable(true)
            .clickable(true)
            .onClick(new View.OnClickListener() {
              @Override
              public void onClick(View v) {
                if (!openGUI) {
                  GlobalEventBus.send(ClickGUIKey, popup);
                  popup.send(PopupKey, PopupProps().dismiss(true));
                }
              }
            })
            .onTouch(new View.OnTouchListener() {

              @SuppressLint("ClickableViewAccessibility")
              @Override
              public boolean onTouch(View v, MotionEvent event) {
                if (!longClickDown[0]) {
                  downX[0] = event.getX();
                  downY[0] = event.getY();
                  return false;
                }
                switch (event.getAction()) {
                  case MotionEvent.ACTION_MOVE:
                    float tempMoveX = (int) (event.getX() - downX[0]) * vector;
                    float tempMoveY = (int) (event.getY() - downY[0]) * vector;
                    if (x + tempMoveX > W() || x + tempMoveX < 0) {
                      moveX[0] = 0;
                    } else {
                      moveX[0] = tempMoveX;
                    }
                    if (y + tempMoveY > H() || y + tempMoveY < 0) {
                      moveY[0] = 0;
                    } else {
                      moveY[0] = tempMoveY;
                    }

                    x = (int) (x + moveX[0]);
                    y = (int) (y + moveY[0]);
                    popup.send(PopupKey, PopupProps().pos(x, y));
                    break;
                  case MotionEvent.ACTION_UP:
                    longClickDown[0] = false;
                    break;
                }
                return false;
              }

            }).onLongClick(new View.OnLongClickListener() {
              @Override
              public boolean onLongClick(View v) {
                GlobalEventBus.send(VibratorKey);
                longClickDown[0] = true;
                Ripple(RippleProps()
                    .x(x + (int) dip2px(17.5f))
                    .y(y + (int) dip2px(15.5f)));
                return true;
              }
            })
            .children(
                Column(ColumnProps()
                    .layoutParams(LinearParams()
                        .width(MatchParent)
                        .height(MatchParent)
                        .margins(intDip2px(5), intDip2px(5), intDip2px(5), intDip2px(5))
                    ).background(GradientDrawable(GradientDrawableProps()
                        .colors(parseColor("#FFB993D6"), parseColor("#FF8CA6DB"))
                        .radius(dip2px(25f))
                        .orientation(BR_TL)
                    )).children(ViewComponents.View(ViewProps()
                        .layoutParams(LinearParams()
                            .width(MatchParent)
                            .height(MatchParent)
                            .margins(intDip2px(8), intDip2px(8), intDip2px(8), intDip2px(8)))
                        .background(GradientDrawable(GradientDrawableProps()
                            .color(parseColor("#FFF5F5F7"))
                            .radius(dip2px(10f))
                            .orientation(BR_TL)))
                    ))
                )
            )
        ))
        .gravity(Left | Top)
        .pos(x, y)
        .animation(Dialog)
        .link(popup));
  }

}
