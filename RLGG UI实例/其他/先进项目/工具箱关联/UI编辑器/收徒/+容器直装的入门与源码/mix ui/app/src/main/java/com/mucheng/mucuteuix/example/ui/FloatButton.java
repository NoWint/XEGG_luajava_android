package com.mucheng.mucuteuix.example.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Vibrator;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;

import com.mucheng.mucuteuix.base.BaseHelper;
import com.mucheng.mucuteuix.component.Column;
import com.mucheng.mucuteuix.component.Popup;
import com.mucheng.mucuteuix.effect.ClickFX;

public class FloatButton extends Popup {

  private ClickGUI clickGUI;

  private boolean openGUI = false;

  private int x, y;

  private float downX, downY, moveX, moveY;

  private static final float vector = 0.15f;

  private boolean longClickDown;

  @SuppressLint("RtlHardcoded")
  @Override
  protected void init() {
    super.init();

    x = SystemW() - dip2pxInt(60);
    y = SystemH() / 2 - dip2pxInt(35 / 2);

    setWidth(dip2pxInt(33.5f));
    setHeight(dip2pxInt(33.5f));
    setContentView(createContentView());
    setGravity(Gravity.LEFT | Gravity.TOP);
    setPosition(x, y);
    setAnimation(Animation.Toast);
    show();
  }

  public boolean isOpenGUI() {
    return openGUI;
  }

  public void openGUI() {
    if (!isOpenGUI()) {
      clickGUI = new ClickGUI(this);
      clickGUI.setOpenPosition(x + dip2pxInt(17.5f), y + dip2pxInt(15.5f));
      clickGUI.show();
      dismiss();
      openGUI = true;
    }
  }

  public void closeGUI() {
    if (isOpenGUI()) {
      clickGUI.dismiss();

      show();
      openGUI = false;
    }
  }

  private Column createContentView() {
    final Column column = Column()
      .setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#FFFFFFFF"))
          .setAllRadius(dip2px(35))
      )
      .setFocusable(true)
      .setClickable(true)
      .setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
          openGUI();
        }
      })
      .setOnTouchListener(new View.OnTouchListener() {

        @SuppressLint("ClickableViewAccessibility")
        @Override
        public boolean onTouch(View v, MotionEvent event) {
          if (!longClickDown) {
            downX = event.getX();
            downY = event.getY();
            return false;
          }

          if (x > SystemW()) {
            x = SystemW() - v.getWidth();
          }

          if (y > SystemH()) {
            y = SystemH() - v.getHeight();
          }

          switch (event.getAction()) {
            case MotionEvent.ACTION_MOVE:
              float tempMoveX = (int) (event.getX() - downX) * vector;
              float tempMoveY = (int) (event.getY() - downY) * vector;
              if (x + tempMoveX + v.getWidth() > SystemW() || x + tempMoveX < 0) {
                moveX = 0;
              } else {
                moveX = tempMoveX;
              }

              if (y + tempMoveY + v.getHeight() > SystemH() || y + tempMoveY < 0) {
                moveY = 0;
              } else {
                moveY = tempMoveY;
              }
              x = (int) (x + moveX);
              y = (int) (y + moveY);
              setPosition(x, y);
              break;
            case MotionEvent.ACTION_UP:
              longClickDown = false;
              break;
          }
          return false;
        }

      })
      .setOnLongClickListener(new View.OnLongClickListener() {
        @Override
        public boolean onLongClick(View v) {
          longClickDown = true;
          Vibrator vibrator = (Vibrator) requireActivity().getSystemService(Context.VIBRATOR_SERVICE);
          vibrator.vibrate(50L);
          new ClickFX()
            .show(x + v.getWidth() / 2, y + v.getHeight() / 2);
          return true;
        }
      });

    column.addView(
      Column()
        .setLayoutParams(LinearParams()
          .setWidth(BaseHelper.MatchParent)
          .setHeight(BaseHelper.MatchParent)
          .setAllMargins(dip2pxInt(6))
        )
        .setBackground(
          GradientDrawableBuilder()
            .setColors(hexColor("#FFE66465"), hexColor("#FF9198E5"))
            .setAllRadius(dip2px(25))
            .setOrientation(GradientDrawable.Orientation.BL_TR)
        )
        .addView(
          View()
            .setLayoutParams(
              LinearParams()
                .setWidth(BaseHelper.MatchParent)
                .setHeight(BaseHelper.MatchParent)
                .setAllMargins(dip2pxInt(5))
            )
            .setBackground(
              GradientDrawableBuilder()
                .setColor(hexColor("#FFFFFFFF"))
                .setAllRadius(dip2px(10))
                .setOrientation(GradientDrawable.Orientation.BR_TL)
            )
        )
    );
    return column;
  }
}
