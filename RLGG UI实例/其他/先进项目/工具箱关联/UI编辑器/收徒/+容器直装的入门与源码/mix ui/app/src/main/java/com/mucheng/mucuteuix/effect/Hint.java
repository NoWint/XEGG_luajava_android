package com.mucheng.mucuteuix.effect;

import android.annotation.SuppressLint;
import android.view.Gravity;

import com.mucheng.mucuteuix.base.BaseHelper;
import com.mucheng.mucuteuix.component.Column;
import com.mucheng.mucuteuix.component.Popup;
import com.mucheng.mucuteuix.component.Text;

public final class Hint extends Popup {

  private static Hint lastHint;

  private Column column;

  private Text text;

  private boolean autoCancel = true;

  @SuppressLint("RtlHardcoded")
  @Override
  protected void init() {
    super.init();
    setWidth(BaseHelper.WrapContent);
    setHeight(BaseHelper.WrapContent);
    setFocusable(false);
    setGravity(Gravity.CENTER | Gravity.BOTTOM);
    setPosition(0, (int) (H() * 0.12f));
    setAnimation(Animation.Toast);

    column = Column()
      .setLayoutParams(
        LinearParams()
          .setWidth(BaseHelper.WrapContent)
          .setHeight(BaseHelper.WrapContent)
      );
    setContentView(column);

    Column container = Column()
      .setBackground(
        GradientDrawableBuilder()
          .setAllRadius(30f)
          .setColor(hexColor("#FFFFFFFF"))
      )
      .setGravity(Gravity.CENTER)
      .setElevation(40f)
      .setLayoutParams(
        LinearParams()
          .setAllMargins(dip2pxInt(25))
      );
    column.addView(container);

    text = Text()
      .setGravity(Gravity.CENTER)
      .setTextSize(13f)
      .setTextColor(hexColor("#FF000000"))
      .setPadding(30, 30, 30, 30);
    container.addView(text);
  }

  public Hint setAutoCancel(boolean autoCancel) {
    this.autoCancel = autoCancel;
    return this;
  }

  public Hint setMessage(String message) {
    text.setText(message);
    return this;
  }

  @Override
  public Popup show() {
    if (lastHint != null) {
      lastHint.setContentView(View());
    }
    final Popup popup = super.show();
    lastHint = this;
    if (autoCancel) {
      delayed(new Runnable() {
        @Override
        public void run() {
          if (autoCancel) {
            popup.dismiss();
          }
        }
      }, 2500L);
    }
    return popup;
  }

}
