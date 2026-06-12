package com.mucheng.mucuteuix.example.ui;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Vibrator;
import android.text.Spanned;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;

import com.mucheng.mucuteuix.component.Column;
import com.mucheng.mucuteuix.component.Popup;
import com.mucheng.mucuteuix.component.Text;
import com.mucheng.mucuteuix.example.callback.ItemCallback;

public class MoveButton extends Popup {

  private Column container;

  private Text text;

  private ValueAnimator animator;

  private int color;

  private boolean current;

  private int x, y;

  private float downX, downY, moveX, moveY;

  private static final float vector = 0.15f;

  private boolean longClickDown;

  @Override
  protected void init() {
    super.init();
    setWidth(WrapContent);
    setHeight(WrapContent);
    setAnimation(Animation.Toast);
    setFocusable(false);
    setGravity(Gravity.LEFT | Gravity.TOP);
    setContentView(createContentView());
  }

  private Column createContentView() {
    Column column = Column();

    container = Column()
      .setMinWidth(dip2pxInt(40f))
      .setMinHeight(dip2pxInt(40f))
      .setGravity(Gravity.CENTER)
      .setBackground(
        GradientDrawableBuilder()
          .setAllRadius(dip2pxInt(10))
          .setColor(hexColor("#FFFFFFFF"))
      )
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
          return true;
        }
      });
    column.addView(container);

    text = Text()
      .setTextSize(14f)
      .setTextColor(hexColor("#FF000000"))
      .setLayoutParams(
        LinearParams()
          .setAllMargins(dip2pxInt(10))
      );
    container.addView(text);

    return column;
  }

  public MoveButton setText(Spanned spanned) {
    text.setText(spanned);
    container.build().measure(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.MATCH_PARENT);
    container.setBackground(
      GradientDrawableBuilder()
        .setAllRadius(container.build().getMeasuredWidth())
        .setColor(hexColor("#FFFFFFFF"))
    );
    return this;
  }

  public MoveButton setText(String pText) {
    text.setText(pText);
    container.build().measure(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.MATCH_PARENT);
    container.setBackground(
      GradientDrawableBuilder()
        .setAllRadius(container.build().getMeasuredWidth() / 4)
        .setColor(hexColor("#FFFFFFFF"))
    );
    return this;
  }

  public MoveButton setOnClickListener(View.OnClickListener onClickListener) {
    container.setOnClickListener(onClickListener);
    return this;
  }

  @Override
  public MoveButton setPosition(int x, int y) {
    this.x = x;
    this.y = y;
    super.setPosition(x, y);
    return this;
  }

  public MoveButton setStateful(boolean stateful) {
    current = stateful;
    color = current ? hexColor("#FF7f7fd5") : hexColor("#FF000000");
    text.setTextColor(color);
    container.setOnClickListener(new View.OnClickListener() {

      @Override
      public void onClick(View v) {
        if (animator != null && animator.isRunning()) {
          animator.pause();
        }
        animator = ValueAnimator()
          .ofArgb(current ? new int[]{color, hexColor("#FF000000")} : new int[]{color, hexColor("#FF7f7fd5")})
          .setDuration(200L)
          .setInterpolator(new DecelerateInterpolator())
          .addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {

            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
              color = (int) animation.getAnimatedValue();
              text.setTextColor(color);
            }

          })
          .start()
          .build();
        current = !current;
      }

    });
    return this;
  }

  public MoveButton setStateful(boolean stateful, final ItemCallback itemCallback) {
    current = stateful;
    color = current ? hexColor("#FF7f7fd5") : hexColor("#FF000000");
    text.setTextColor(color);
    container.setOnClickListener(new View.OnClickListener() {

      @Override
      public void onClick(View v) {
        itemCallback.onClick();
        if (animator != null && animator.isRunning()) {
          animator.pause();
        }
        animator = ValueAnimator()
          .ofArgb(current ? new int[]{color, hexColor("#FF000000")} : new int[]{color, hexColor("#FF7f7fd5")})
          .setDuration(200L)
          .setInterpolator(new DecelerateInterpolator())
          .addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {

            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
              color = (int) animation.getAnimatedValue();
              text.setTextColor(color);
            }

          })
          .start()
          .build();
        current = !current;
        itemCallback.onChecked(current);
      }

    });
    return this;
  }

}
