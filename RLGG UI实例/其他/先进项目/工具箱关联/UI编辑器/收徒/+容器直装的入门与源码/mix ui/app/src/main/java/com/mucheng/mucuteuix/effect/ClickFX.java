package com.mucheng.mucuteuix.effect;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.ViewAnimationUtils;

import com.mucheng.mucuteuix.base.BaseHelper;
import com.mucheng.mucuteuix.callback.PostCallback;
import com.mucheng.mucuteuix.component.Column;
import com.mucheng.mucuteuix.component.Popup;

public final class ClickFX extends BaseHelper {

  private Popup popup;

  private Column column;

  private int x, y;

  private long duration;

  @Override
  protected void init() {
    column = Column()
      .setAlpha(0f)
      .setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#22000000"))
      )
      .postOnce(new PostCallback() {
        @Override
        public void onPost(int width, int height) {
          Animator revealAnimator = ViewAnimationUtils.createCircularReveal(
            column.build(), x, y, 0f, SystemH()
          );
          revealAnimator.setDuration(1000L);

          AnimatorSet()
            .setDuration(duration)
            .playTogether(
              Animator(revealAnimator),
              ObjectAnimator()
                .setPropertyName("alpha")
                .ofFloat(1f, 0f)
                .setTarget(column)
                .addListener(new AnimatorListenerAdapter() {

                  @Override
                  public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    dismiss();
                  }

                })
            )
            .start();
        }
      });

    popup = Popup()
      .setWidth(BaseHelper.MatchParent)
      .setHeight(BaseHelper.MatchParent)
      .setFocusable(false)
      .setContentView(column);
  }

  public Popup show(int x, int y, long duration) {
    this.x = x;
    this.y = y;
    this.duration = duration;
    return popup.show();
  }

  public Popup show(int x, int y) {
    return show(x, y, 1000L);
  }

  public Popup dismiss() {
    return popup.dismiss();
  }

}
