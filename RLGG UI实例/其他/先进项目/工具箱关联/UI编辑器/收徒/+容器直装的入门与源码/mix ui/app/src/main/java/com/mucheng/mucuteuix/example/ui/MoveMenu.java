package com.mucheng.mucuteuix.example.ui;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Vibrator;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;

import com.mucheng.mucuteuix.animation.AnimatorSet;
import com.mucheng.mucuteuix.base.BaseHelper;
import com.mucheng.mucuteuix.callback.PostCallback;
import com.mucheng.mucuteuix.component.Column;
import com.mucheng.mucuteuix.component.Popup;
import com.mucheng.mucuteuix.component.Text;
import com.mucheng.mucuteuix.example.callback.ItemCallback;

public abstract class MoveMenu extends Popup {

  private Column textContainer;

  private Column menuContainer;

  private float downX, downY, moveX, moveY;

  private static final float vector = 0.15f;

  private int titleHeight;

  private int menuHeight;

  private int actualMenuHeight;

  private boolean longClickDown;

  private AnimatorSet openMenuAnimatorSet;

  private AnimatorSet closeMenuAnimatorSet;

  @SuppressLint("RtlHardcoded")
  @Override
  protected void init() {
    super.init();

    setWidth(WrapContent);
    setHeight(WrapContent);
    setFocusable(false);
    setAnimation(Animation.Toast);
    setContentView(createContentView());
    setGravity(Gravity.LEFT | Gravity.TOP);
    setPosition(getX(), getY());
  }

  private Column createContentView() {
    Column column = Column();

    Column container = Column()
      .setLayoutParams(
        LinearParams()
          .setWidth((int) (W() * 0.18))
          .setHeight(BaseHelper.WrapContent)
      );
    column.addView(container);

    textContainer = Column()
      .setLayoutParams(
        LinearParams()
          .setWidth(BaseHelper.MatchParent)
      )
      .postOnce(new PostCallback() {
        @Override
        public void onPost(int width, int height) {
          titleHeight = height;
        }
      })
      .setOnClickListener(new View.OnClickListener() {
        @Override
        public void onClick(View v) {
          if (isOpenMenu()) {
            closeMenu();
          } else {
            openMenu();
          }
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

          if (getX() > SystemW()) {
            setX(SystemW() - v.getWidth());
          }

          if (getY() + actualMenuHeight > SystemH()) {
            setY(SystemH() - v.getHeight() - actualMenuHeight);
          }

          switch (event.getAction()) {
            case MotionEvent.ACTION_MOVE:
              float tempMoveX = (int) (event.getX() - downX) * vector;
              float tempMoveY = (int) (event.getY() - downY) * vector;

              if (getX() + tempMoveX + v.getWidth() > SystemW() || getX() + tempMoveX < 0) {
                moveX = 0;
              } else {
                moveX = tempMoveX;
              }

              if (getY() + tempMoveY + v.getHeight() + actualMenuHeight > SystemH() || getY() + tempMoveY < 0) {
                moveY = 0;
              } else {
                moveY = tempMoveY;
              }
              setX((int) (getX() + moveX));
              setY((int) (getY() + moveY));
              setPosition(getX(), getY());
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
    container.addView(textContainer);

    if (isOpenMenu()) {
      textContainer.setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#FFFFFFFF"))
          .setRadius(dip2pxInt(10), dip2pxInt(10), 0, 0)
      );
    } else {
      textContainer.setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#FFFFFFFF"))
          .setAllRadius(dip2pxInt(10))
      );
    }

    Text text = Text()
      .setText(getTitle())
      .setTextSize(14f)
      .setTextColor(hexColor("#FF000000"))
      .setSingleLine(true)
      .setLayoutParams(
        LinearParams()
          .setAllMargins(dip2pxInt(5))
          .setGravity(Gravity.CENTER)
      );
    textContainer.addView(text);

    final Column menuContainerBase = Column()
      .setLayoutParams(
        LinearParams()
          .setWidth(BaseHelper.MatchParent)
      );
    container.addView(menuContainerBase);

    menuContainer = Column()
      .setPadding(0, dip2pxInt(5), 0, 0)
      .setLayoutParams(
        StackParams()
          .setWidth(BaseHelper.MatchParent)
      )
      .setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#FFF5F5F7"))
          .setRadius(0, 0, dip2pxInt(10), dip2pxInt(10))
      );
    menuContainerBase.addView(menuContainer);

    onAddItems();

    menuContainer.build().measure(LinearLayout.LayoutParams.MATCH_PARENT, LinearLayout.LayoutParams.WRAP_CONTENT);
    actualMenuHeight = menuContainer.build().getMeasuredHeight();
    menuHeight = menuContainer.build().getMeasuredHeight();

    if (getX() < 0) {
      setX(0);
    } else if (getX() + (int) (W() * 0.18) > SystemW()) {
      setX(SystemW() - (int) (W() * 0.18) - dip2pxInt(10));
    }

    if (!isOpenMenu()) {
      actualMenuHeight = 0;
      menuContainer.setLayoutParams(
        LinearParams()
          .setWidth(BaseHelper.MatchParent)
          .setHeight(0)
      );
    }
    return column;
  }

  private void closeMenu() {
    if (openMenuAnimatorSet != null && openMenuAnimatorSet.build().isRunning()) {
      return;
    }
    if (closeMenuAnimatorSet != null && closeMenuAnimatorSet.build().isRunning()) {
      return;
    }
    menuContainer.postOnce(new PostCallback() {
      @Override
      public void onPost(int width, final int height) {
        if (openMenuAnimatorSet != null && openMenuAnimatorSet.build().isRunning()) {
          return;
        }
        if (closeMenuAnimatorSet != null && closeMenuAnimatorSet.build().isRunning()) {
          return;
        }
        setOpenMenu(false);
        openMenuAnimatorSet = AnimatorSet()
          .setDuration(100L)
          .playQueue(
            ValueAnimator()
              .ofInt(menuHeight, 0)
              .addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator animation) {
                  ViewGroup.LayoutParams layoutParams = menuContainer.build().getLayoutParams();
                  if (layoutParams != null) {
                    layoutParams.height = (int) animation.getAnimatedValue();
                    actualMenuHeight = (int) animation.getAnimatedValue();
                    menuContainer.build().setLayoutParams(layoutParams);
                  }
                }
              }),
            ValueAnimator()
              .ofInt(0, dip2pxInt(10))
              .addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {

                @Override
                public void onAnimationUpdate(ValueAnimator animation) {
                  int radius = (int) animation.getAnimatedValue();
                  textContainer.setBackground(
                    GradientDrawableBuilder()
                      .setColor(hexColor("#FFFFFFFF"))
                      .setRadius(dip2pxInt(10), dip2pxInt(10), radius, radius)
                  );
                }

              })
          )
          .start();
      }
    });
  }

  private void openMenu() {
    if (openMenuAnimatorSet != null && openMenuAnimatorSet.build().isRunning()) {
      return;
    }
    if (closeMenuAnimatorSet != null && closeMenuAnimatorSet.build().isRunning()) {
      return;
    }
    menuContainer.postOnce(new PostCallback() {
      @Override
      public void onPost(int width, int height) {
        if (openMenuAnimatorSet != null && openMenuAnimatorSet.build().isRunning()) {
          return;
        }
        if (closeMenuAnimatorSet != null && closeMenuAnimatorSet.build().isRunning()) {
          return;
        }
        setOpenMenu(true);
        closeMenuAnimatorSet = AnimatorSet()
          .setDuration(100L)
          .playQueue(
            ValueAnimator()
              .ofInt(dip2pxInt(10), 0)
              .addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {

                @Override
                public void onAnimationUpdate(ValueAnimator animation) {
                  int radius = (int) animation.getAnimatedValue();
                  textContainer.setBackground(
                    GradientDrawableBuilder()
                      .setColor(hexColor("#FFFFFFFF"))
                      .setRadius(dip2pxInt(10), dip2pxInt(10), radius, radius)
                  );
                }

              }),
            ValueAnimator()
              .ofInt(0, menuHeight)
              .addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public void onAnimationUpdate(ValueAnimator animation) {
                  ViewGroup.LayoutParams layoutParams = menuContainer.build().getLayoutParams();
                  if (layoutParams != null) {
                    layoutParams.height = (int) animation.getAnimatedValue();
                    actualMenuHeight = (int) animation.getAnimatedValue();
                    menuContainer.build().setLayoutParams(layoutParams);

                    if (getY() + actualMenuHeight > SystemH()) {
                      setY((int) (SystemH() / 2.5f - titleHeight - actualMenuHeight));
                      setPosition(getX(), getY());
                      if (getY() < 0) {
                        setY(0);
                        setPosition(getX(), getY());
                      }
                    }

                  }
                }
              })
          )
          .start();
      }
    });
  }

  protected void addItem(String title) {
    Column textContainer = Column()
      .setLayoutParams(
        LinearParams()
          .setWidth(BaseHelper.MatchParent)
          .setBottomMargin(dip2pxInt(5))
      );
    menuContainer.addView(textContainer);

    Text text = Text()
      .setText(title)
      .setTextSize(14f)
      .setTextColor(hexColor("#FF000000"))
      .setSingleLine(true)
      .setLayoutParams(
        LinearParams()
          .setMargins(dip2pxInt(5), 0, dip2pxInt(5), 0)
          .setGravity(Gravity.CENTER)
      );
    textContainer.addView(text);
  }

  protected void addItem(String title, final ItemCallback itemCallback) {
    Column textContainer = Column()
      .setOnLongClickListener(new View.OnLongClickListener() {

        @Override
        public boolean onLongClick(View v) {
          return itemCallback.onLongClick();
        }

      })
      .setOnClickListener(new View.OnClickListener() {

        @Override
        public void onClick(View v) {
          itemCallback.onClick();
        }

      })
      .setLayoutParams(
        LinearParams()
          .setWidth(BaseHelper.MatchParent)
          .setBottomMargin(dip2pxInt(5))
      );
    menuContainer.addView(textContainer);

    Text text = Text()
      .setText(title)
      .setTextSize(14f)
      .setTextColor(hexColor("#FF000000"))
      .setSingleLine(true)
      .setLayoutParams(
        LinearParams()
          .setMargins(dip2pxInt(5), 0, dip2pxInt(5), 0)
          .setGravity(Gravity.CENTER)
      );
    textContainer.addView(text);
  }

  protected void addStateItem(String title, boolean on) {
    final ValueAnimator[] animator = new ValueAnimator[1];
    final boolean[] current = new boolean[]{on};
    final int[] color = new int[]{on ? hexColor("#FF9198E5") : hexColor("#FF000000")};
    final Column textContainer = Column()
      .setLayoutParams(
        LinearParams()
          .setWidth(BaseHelper.MatchParent)
          .setBottomMargin(dip2pxInt(5))
      );
    menuContainer.addView(textContainer);

    final Text text = Text()
      .setText(title)
      .setTextSize(14f)
      .setTextColor(color[0])
      .setSingleLine(true)
      .setLayoutParams(
        LinearParams()
          .setMargins(dip2pxInt(5), 0, dip2pxInt(5), 0)
          .setGravity(Gravity.CENTER)
      );
    textContainer.addView(text);

    textContainer.setOnClickListener(new View.OnClickListener() {

      @Override
      public void onClick(View v) {
        if (animator[0] != null && animator[0].isRunning()) {
          animator[0].pause();
        }
        animator[0] = ValueAnimator()
          .ofArgb(current[0] ? new int[]{color[0], hexColor("#FF000000")} : new int[]{color[0], hexColor("#FF9198E5")})
          .setDuration(200L)
          .setInterpolator(new DecelerateInterpolator())
          .addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {

            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
              color[0] = (int) animation.getAnimatedValue();
              text.setTextColor(color[0]);
            }

          })
          .start()
          .build();
        current[0] = !current[0];
      }

    });
  }

  protected void addStateItem(String title, boolean on, final ItemCallback itemCallback) {
    final ValueAnimator[] animator = new ValueAnimator[1];
    final boolean[] current = new boolean[]{on};
    final int[] color = new int[]{on ? hexColor("#FF9198E5") : hexColor("#FF000000")};
    Column textContainer = Column()
      .setOnLongClickListener(new View.OnLongClickListener() {

        @Override
        public boolean onLongClick(View v) {
          return itemCallback.onLongClick();
        }

      })
      .setLayoutParams(
        LinearParams()
          .setWidth(BaseHelper.MatchParent)
          .setBottomMargin(dip2pxInt(5))
      );
    menuContainer.addView(textContainer);

    final Text text = Text()
      .setText(title)
      .setTextSize(14f)
      .setTextColor(color[0])
      .setSingleLine(true)
      .setLayoutParams(
        LinearParams()
          .setMargins(dip2pxInt(5), 0, dip2pxInt(5), 0)
          .setGravity(Gravity.CENTER)
      );
    textContainer.addView(text);

    textContainer.setOnClickListener(new View.OnClickListener() {

      @Override
      public void onClick(View v) {
        itemCallback.onClick();
        if (animator[0] != null && animator[0].isRunning()) {
          animator[0].pause();
        }
        animator[0] = ValueAnimator()
          .ofArgb(current[0] ? new int[]{color[0], hexColor("#FF000000")} : new int[]{color[0], hexColor("#FF9198E5")})
          .setDuration(200L)
          .setInterpolator(new DecelerateInterpolator())
          .addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {

            @Override
            public void onAnimationUpdate(ValueAnimator animation) {
              color[0] = (int) animation.getAnimatedValue();
              text.setTextColor(color[0]);
            }

          })
          .start()
          .build();
        current[0] = !current[0];
        itemCallback.onChecked(current[0]);
      }

    });
  }

  protected abstract int getX();

  protected abstract int getY();

  protected abstract void setX(int x);

  protected abstract void setY(int y);

  protected abstract String getTitle();

  protected abstract void onAddItems();

  public abstract boolean isOpenMenu();

  protected abstract void setOpenMenu(boolean openMenu);

  protected Column getMenuContainer() {
    return menuContainer;
  }

}
