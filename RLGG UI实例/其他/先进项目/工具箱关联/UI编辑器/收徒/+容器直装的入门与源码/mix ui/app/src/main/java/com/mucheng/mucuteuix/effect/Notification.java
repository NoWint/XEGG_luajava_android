package com.mucheng.mucuteuix.effect;

import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.view.Gravity;

import com.mucheng.mucuteuix.callback.CrossBlurCallback;
import com.mucheng.mucuteuix.callback.PostCallback;
import com.mucheng.mucuteuix.component.Column;
import com.mucheng.mucuteuix.component.Popup;
import com.mucheng.mucuteuix.component.Row;
import com.mucheng.mucuteuix.component.Text;
import com.mucheng.mucuteuix.component.View;

/** @noinspection ALL*/
public class Notification extends Popup implements CrossBlurCallback {

  private Column column;

  @SuppressLint("RtlHardcoded")
  @Override
  protected void init() {
    super.init();
    setWidth(MatchParent);
    setHeight(MatchParent);
    setFocusable(false);
    setTouchable(false);
    setGravity(Gravity.RIGHT | Gravity.BOTTOM);
    setContentView(createContentView());
  }

  @Override
  public void onDraw(Canvas canvas, int width, int height) {
    if (column.build().getChildCount() == 0) {
      return;
    }

    if (column.build().getWidth() == 0) {
      return;
    }

    float dx = width - column.build().getWidth();
    canvas.translate(dx, 0);
    column.build().draw(canvas);
    canvas.translate(-dx, 0);
  }

  private Column createContentView() {
    column = Column()
      .setGravity(Gravity.BOTTOM);

    LayoutTransition transition = new LayoutTransition();
    column.build().setLayoutTransition(transition);
    return column;
  }

  public Notification make(String titleText, String message, Type type) {
    final Row[] container = new Row[1];
    container[0] = Row()
      .setLayoutParams(
        LinearParams()
          .setGravity(Gravity.RIGHT)
          .setWidth(WrapContent)
          .setHeight(dip2pxInt(60))
          .setAllMargins(dip2pxInt(10))
      )
      .setPadding(0, dip2pxInt(10), 0, dip2pxInt(10))
      .setBackground(
        GradientDrawableBuilder()
          .setAllRadius(dip2px(6))
          .setColor(hexColor("#FFFFFFFF"))
      )
      .setElevation(dip2px(8))
      .postOnceDelayed(new PostCallback() {

        @Override
        public void onPost(int width, int height) {
          if (column.build().getChildCount() > 0) {
            for (int i = 0; i < column.build().getChildCount(); i++) {
              if (column.build().getChildAt(i) == container[0].build()) {
                column.build().removeViewAt(i);
              }
            }
          }
        }

      }, Math.max(2500L * column.build().getChildCount(), 2500L));

    int color;
    if (type == Type.ERROR) {
      color = hexColor("#FFFF6464");
    } else if (type == Type.WARN) {
      color = hexColor("#FF7f7fd5");
    } else {
      color = hexColor("#FF64BE96");
    }

    View state = View()
      .setLayoutParams(
        LinearParams()
          .setWidth(dip2pxInt(10))
          .setHeight(dip2pxInt(10))
          .setLeftMargin(dip2pxInt(10))
          .setGravity(Gravity.CENTER)
      )
      .setBackground(
        GradientDrawableBuilder()
          .setAllRadius(dip2px(10))
          .setColor(color)
      );
    container[0].addView(state);

    Column textContainer = Column()
      .setLayoutParams(
        LinearParams()
          .setLeftMargin(dip2pxInt(10))
          .setRightMargin(dip2pxInt(10))
          .setGravity(Gravity.CENTER)
      );
    container[0].addView(textContainer);

    Text title = Text()
      .setText(titleText)
      .setTextSize(14f)
      .setTextColor(hexColor("#FF7f7fd5"))
      .setSingleLine(true);
    textContainer.addView(title);

    Text description = Text()
      .setText(message)
      .setTextSize(12f)
      .setTextColor(hexColor("#FF828282"))
      .setSingleLine(true);
    textContainer.addView(description);

    if (column.build().getChildCount() > 0) {
      if (column.build().getChildCount() * dip2pxInt(80) + dip2pxInt(80) > SystemH()) {
        column.build().removeViewAt(0);
      }
    }
    column.addView(container[0]);
    return this;
  }

  public Notification make(String titleText, String message) {
    return make(titleText, message, Type.SUCCESS);
  }

  public static enum Type {
    SUCCESS, WARN, ERROR
  }

}
