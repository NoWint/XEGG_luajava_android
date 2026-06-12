package com.mucheng.mucuteuix.example.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.os.Vibrator;
import android.text.Html;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.widget.RelativeLayout;

import com.mucheng.mucuteuix.base.BaseHelper;
import com.mucheng.mucuteuix.base.ViewHelper;
import com.mucheng.mucuteuix.callback.PostCallback;
import com.mucheng.mucuteuix.component.Column;
import com.mucheng.mucuteuix.component.ColumnScroll;
import com.mucheng.mucuteuix.component.Popup;
import com.mucheng.mucuteuix.component.Relative;
import com.mucheng.mucuteuix.component.Row;
import com.mucheng.mucuteuix.component.Stack;
import com.mucheng.mucuteuix.component.Text;

public class GUIBox extends Popup {

  private static final int TITLE_CONTAINER_ID = 0xFF1234;

  private static final int ROW_ID = 0xFF1235;

  private Stack stack;

  private Text title;

  private Column container;

  private Column leftButtonContainer;

  private Text leftButtonText;

  private com.mucheng.mucuteuix.component.View spacer;

  private Column rightButtonContainer;

  private Text rightButtonText;

  @Override
  protected void init() {
    super.init();
    setWidth(MatchParent);
    setHeight(MatchParent);
    setFocusable(false);
    setAnimation(Animation.Dialog);
    setContentView(createContentView());
  }

  private Stack createContentView() {
    stack = Stack()
      .setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#22000000"))
      );

    Relative dialogColumn = Relative()
      .setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#FFFFFFFF"))
          .setAllRadius(dip2px(25f))
      )
      .setElevation(dip2px(12))
      .setLayoutParams(
        StackParams()
          .setWidth((int) (SystemW() * 0.5))
          .setHeight((int) (H() * 0.55))
          .setGravity(Gravity.CENTER)
      );
    stack.addView(dialogColumn);

    Column titleContainer = Column()
      .setId(TITLE_CONTAINER_ID)
      .setLayoutParams(
        RelativeParams()
          .addRule(RelativeLayout.ALIGN_PARENT_TOP, RelativeLayout.TRUE)
          .setWidth(BaseHelper.MatchParent)
      );
    dialogColumn.addView(titleContainer);

    title = Text()
      .setTextSize(16f)
      .setTextColor(hexColor("#FF000000"))
      .setGravity(Gravity.CENTER)
      .setLayoutParams(
        LinearParams()
          .setGravity(Gravity.CENTER)
          .setTopMargin(dip2pxInt(5))
          .setBottomMargin(dip2pxInt(5))
      );
    titleContainer.addView(title);

    Row row = Row()
      .setId(ROW_ID)
      .setLayoutParams(
        RelativeParams()
          .setWidth(BaseHelper.MatchParent)
          .setHeight(BaseHelper.WrapContent)
          .addRule(RelativeLayout.ALIGN_PARENT_BOTTOM, RelativeLayout.TRUE)
          .setTopMargin(dip2pxInt(15))
          .setLeftMargin(dip2pxInt(15))
          .setRightMargin(dip2pxInt(15))
          .setBottomMargin(dip2pxInt(15))
      );
    dialogColumn.addView(row);

    addLeftButton(row);

    spacer = View()
      .setVisibility(View.GONE)
      .setLayoutParams(
        LinearParams()
          .setWidth(dip2pxInt(15f))
          .setHeight(0)
      );
    row.addView(spacer);

    addRightButton(row);

    ColumnScroll columnScroll = ColumnScroll()
      .setLayoutParams(
        RelativeParams()
          .setWidth(BaseHelper.MatchParent)
          .setHeight(BaseHelper.MatchParent)
          .setLeftMargin(dip2pxInt(15))
          .setRightMargin(dip2pxInt(15))
          .addRule(RelativeLayout.BELOW, TITLE_CONTAINER_ID)
          .addRule(RelativeLayout.ABOVE, ROW_ID)
      )
      .setVerticalScrollBarEnabled(false)
      .setHorizontalScrollBarEnabled(false)
      .setVerticalFadingEdgeEnabled(true)
      .setHorizontalFadingEdgeEnabled(true)
      .setFadingEdgeLength(dip2pxInt(15))
      .setFillViewport(true);
    dialogColumn.addView(columnScroll);

    container = Column()
      .setLayoutParams(
        StackParams()
          .setWidth(BaseHelper.MatchParent)
          .setHeight(BaseHelper.MatchParent)
      );
    columnScroll.addView(container);

    return stack;
  }

  private void addLeftButton(Row row) {
    leftButtonContainer = Column()
      .setFocusable(true)
      .setClickable(true)
      .setVisibility(View.GONE)
      .setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#FFF4F4F4"))
          .setAllRadius(999f)
      )
      .setLayoutParams(
        LinearParams()
          .setWidth(BaseHelper.MatchParent)
          .setHeight(BaseHelper.WrapContent)
          .setWeight(1f)
      )
      .setGravity(Gravity.CENTER);

    leftButtonContainer.setOnTouchListener(new View.OnTouchListener() {

      @SuppressLint("ClickableViewAccessibility")
      @Override
      public boolean onTouch(View v, MotionEvent event) {
        switch (event.getAction()) {
          case MotionEvent.ACTION_DOWN:
            leftButtonContainer.setBackground(
              GradientDrawableBuilder()
                .setColor(hexColor("#FFE9E9E9"))
                .setAllRadius(999f)
            );
            break;

          case MotionEvent.ACTION_MOVE:
            if (
              (event.getX() < 0 || event.getX() > v.getWidth()) ||
                (event.getY() < 0 || event.getY() > v.getHeight())
            ) {
              leftButtonContainer.setBackground(
                GradientDrawableBuilder()
                  .setColor(hexColor("#FFF4F4F4"))
                  .setAllRadius(999f)
              );
            }
            break;

          case MotionEvent.ACTION_UP:
            leftButtonContainer.setBackground(
              GradientDrawableBuilder()
                .setColor(hexColor("#FFF4F4F4"))
                .setAllRadius(999f)
            );
            break;
        }
        return false;
      }

    });
    row.addView(leftButtonContainer);

    leftButtonText = Text()
      .setTextSize(16f)
      .setTextColor(hexColor("#FF000000"))
      .setLayoutParams(
        LinearParams()
          .setTopMargin(dip2pxInt(10))
          .setBottomMargin(dip2pxInt(10))
      );
    leftButtonContainer.addView(leftButtonText);
  }

  private void addRightButton(Row row) {
    rightButtonContainer = Column()
      .setVisibility(View.GONE)
      .setFocusable(true)
      .setClickable(true)
      .setBackground(
        GradientDrawableBuilder()
          .setColor(hexColor("#FFF4F4F4"))
          .setAllRadius(999f)
      )
      .setLayoutParams(
        LinearParams()
          .setWidth(BaseHelper.MatchParent)
          .setWeight(1f)
      )
      .setGravity(Gravity.CENTER);

    rightButtonContainer.setOnTouchListener(new View.OnTouchListener() {

      @SuppressLint("ClickableViewAccessibility")
      @Override
      public boolean onTouch(View v, MotionEvent event) {
        switch (event.getAction()) {
          case MotionEvent.ACTION_DOWN:
            rightButtonContainer.setBackground(
              GradientDrawableBuilder()
                .setColor(hexColor("#FFE9E9E9"))
                .setAllRadius(999f)
            );
            break;

          case MotionEvent.ACTION_MOVE:
            if (
              (event.getX() < 0 || event.getX() > v.getWidth()) ||
                (event.getY() < 0 || event.getY() > v.getHeight())
            ) {
              rightButtonContainer.setBackground(
                GradientDrawableBuilder()
                  .setColor(hexColor("#FFF4F4F4"))
                  .setAllRadius(999f)
              );
            }
            break;

          case MotionEvent.ACTION_UP:
            rightButtonContainer.setBackground(
              GradientDrawableBuilder()
                .setColor(hexColor("#FFF4F4F4"))
                .setAllRadius(999f)
            );
            break;
        }
        return false;
      }

    });
    row.addView(rightButtonContainer);

    rightButtonText = Text()
      .setTextSize(16f)
      .setTextColor(hexColor("#FF9198E5"))
      .setLayoutParams(
        LinearParams()
          .setTopMargin(dip2pxInt(10))
          .setBottomMargin(dip2pxInt(10))
      );
    rightButtonContainer.addView(rightButtonText);
  }

  public GUIBox setTitle(String title) {
    this.title.setText(Html.fromHtml("<b>" + title + "</b>"));
    this.title.postOnce(new PostCallback() {
      @Override
      public void onPost(int width, int height) {
        Animator(ViewAnimationUtils.createCircularReveal(GUIBox.this.title.build(), width / 2, height / 2, 0f, width))
          .setDuration(1000L)
          .start();
      }
    });
    return this;
  }

  public GUIBox setMessage(String message) {
    this.container.build().removeAllViews();
    this.container.addView(
      Text()
        .setText(message)
        .setTextColor(hexColor("#FF000000"))
        .setTextSize(14f)
    );
    return this;
  }

  public GUIBox setContent(ViewHelper<?> view) {
    this.container.build().removeAllViews();
    this.container.addView(view);
    return this;
  }

  public GUIBox setLeftButton(String text, View.OnClickListener onClickListener) {
    leftButtonContainer.setVisibility(
      View.VISIBLE
    );
    leftButtonContainer.setOnClickListener(onClickListener);
    leftButtonText.setText(Html.fromHtml("<b>" + text + "</b>"));
    if (rightButtonContainer.build().getVisibility() == View.VISIBLE) {
      spacer.setVisibility(View.VISIBLE);
    }
    return this;
  }

  public GUIBox setRightButton(String text, View.OnClickListener onClickListener) {
    rightButtonContainer.setVisibility(
      View.VISIBLE
    );
    rightButtonContainer.setOnClickListener(onClickListener);
    rightButtonText.setText(Html.fromHtml("<b>" + text + "</b>"));
    if (leftButtonContainer.build().getVisibility() == View.VISIBLE) {
      spacer.setVisibility(View.VISIBLE);
    }
    return this;
  }

  public GUIBox setCancelable(boolean cancelable) {
    if (cancelable) {
      stack.setOnTouchListener(new View.OnTouchListener() {

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

      });
      stack.setOnLongClickListener(new View.OnLongClickListener() {
        @Override
        public boolean onLongClick(View v) {
          Vibrator vibrator = (Vibrator) requireActivity().getSystemService(Context.VIBRATOR_SERVICE);
          vibrator.vibrate(50L);
          dismiss();
          return false;
        }
      });
    } else {
      stack.setOnTouchListener(null);
      stack.setOnLongClickListener(null);
    }
    return this;
  }

}
