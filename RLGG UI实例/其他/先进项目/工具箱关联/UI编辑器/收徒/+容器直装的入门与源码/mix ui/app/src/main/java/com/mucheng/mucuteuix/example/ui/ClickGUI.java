package com.mucheng.mucuteuix.example.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.app.NativeActivity;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Vibrator;
import android.text.Html;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceControl;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewAnimationUtils;

import com.mucheng.mucuteuix.animation.AnimatorSet;
import com.mucheng.mucuteuix.base.BaseHelper;
import com.mucheng.mucuteuix.callback.PostCallback;
import com.mucheng.mucuteuix.component.Column;
import com.mucheng.mucuteuix.component.Popup;
import com.mucheng.mucuteuix.component.Stack;
import com.mucheng.mucuteuix.component.Text;
import com.mucheng.mucuteuix.effect.Hint;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public class ClickGUI extends Popup {

  private final FloatButton floatButton;

  private AnimatorSet animatorSet;

  private final List<MoveMenu> moveMenus;

  private int mixContainerWidth;

  private int mixContainerHeight;

  private Stack stack;

  private Column mixContainer;

  private int openX;

  private int openY;

  public ClickGUI(FloatButton floatButton) {
    super();
    this.floatButton = floatButton;
    this.moveMenus = new ArrayList<>();
    addMoveMenus();

    initGUI();
  }

  private void addMoveMenus() {
    moveMenus.add(new PlayerGUI());
    moveMenus.add(new WorldGUI());
    moveMenus.add(new MoveGUI());
    moveMenus.add(new AttackGUI());
    moveMenus.add(new MiscGUI());
  }

  private void initGUI() {
    setWidth(MatchParent);
    setHeight(MatchParent);
    setFocusable(false);
    setContentView(createContentView());
    setAnimation(Animation.Dialog);
  }

  private Stack createContentView() {
    stack = Stack()
      .setOnTouchListener(new View.OnTouchListener() {

        @SuppressLint("ClickableViewAccessibility")
        @Override
        public boolean onTouch(View v, MotionEvent event) {
          switch (event.getAction()) {
            case MotionEvent.ACTION_DOWN:
              stack.setBackground(
                GradientDrawableBuilder()
                  .setColor(hexColor("#33000000"))
              );
              break;

            case MotionEvent.ACTION_UP:
              stack.setBackground(
                GradientDrawableBuilder()
                  .setColor(hexColor("#22000000"))
              );
              break;
          }
          return false;
        }

      })
      .setOnClickListener(new View.OnClickListener() {

        @Override
        public void onClick(View v) {
          new Hint()
            .setMessage(
              "长按背景可关闭界面\n" +
                "长按抽屉菜单可移动\n" +
                "点击中间的 MIX 可打开设置"
            )
            .show();
        }

      })
      .setOnLongClickListener(new View.OnLongClickListener() {
        @Override
        public boolean onLongClick(View v) {
          if (animatorSet != null && !animatorSet.build().isRunning()) {
            Vibrator vibrator = (Vibrator) requireActivity().getSystemService(Context.VIBRATOR_SERVICE);
            vibrator.vibrate(50L);
            floatButton.closeGUI();
            return true;
          }
          return false;
        }
      })
      .setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#22000000"))
      )
      .setLayoutParams(
        LinearParams()
          .setWidth(BaseHelper.MatchParent)
          .setHeight(BaseHelper.MatchParent)
      );

    mixContainer = Column()
      .setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#FFFFFFFF"))
          .setAllRadius(dip2px(20))
      )
      .setFocusable(true)
      .setClickable(true)
      .setGravity(Gravity.CENTER)
      .setElevation(30f)
      .setLayoutParams(
        StackParams()
          .setWidth(WrapContent)
          .setHeight(WrapContent)
          .setGravity(Gravity.CENTER)
      )
      .postOnce(new PostCallback() {

        @Override
        public void onPost(int width, int height) {
          mixContainerWidth = width;
          mixContainerHeight = height;
        }

      });
    stack.addView(mixContainer);

    Text MixTitle = Text()
      .setText(Html.fromHtml("<b>-MIX-</b>"))
      .setTextSize(18f)
      .setTextColor(hexColor("#FF9198E5"))
      .setShadowLayer(10, 0, 0, hexColor("#FF9198E5"))
      .setGravity(Gravity.CENTER)
      .setLayoutParams(
        LinearParams()
          .setMargins(dip2pxInt(10), dip2pxInt(5), dip2pxInt(10), dip2pxInt(5))
      );
    mixContainer.addView(MixTitle);

    return stack;
  }

  @Override
  public Popup show() {
    if (stack != null && mixContainer != null) {
      mixContainer.postOnce(new PostCallback() {
        @Override
        public void onPost(int width, int height) {
          animatorSet = AnimatorSet()
            .playTogether(
              Animator(ViewAnimationUtils.createCircularReveal(stack.build(), openX, openY, 0f, MaxSystemWH() * 1.5f)),
              Animator(ViewAnimationUtils.createCircularReveal(mixContainer.build(), mixContainerWidth / 2, mixContainerHeight / 2, 0, mixContainerWidth / 2))
            )
            .addListener(new AnimatorListenerAdapter() {

              @Override
              public void onAnimationEnd(Animator animation) {
                super.onAnimationEnd(animation);
                for (MoveMenu moveMenu : moveMenus) {
                  moveMenu.show();
                }
              }

            })
            .setDuration(1000L)
            .start();
        }
      });
    }
    return super.show();
  }

  @Override
  public Popup dismiss() {
    for (MoveMenu moveMenu : moveMenus) {
      moveMenu.dismiss();
    }
    return super.dismiss();
  }

  public void setOpenPosition(int openX, int openY) {
    this.openX = openX;
    this.openY = openY;
  }

}
