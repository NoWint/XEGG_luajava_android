package com.mucheng.mucuteuix.effect;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.text.Html;
import android.view.Gravity;
import android.view.View;

import com.mucheng.mucuteuix.component.Column;
import com.mucheng.mucuteuix.component.Popup;
import com.mucheng.mucuteuix.component.Text;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ModScript extends Popup {

  private final List<Item> items = new ArrayList<>();

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

  @SuppressLint("RtlHardcoded")
  private Column createContentView() {
    column = Column();
    return column;
  }

  public ModScript showModScript() {
    column.build().animate()
      .alpha(1f)
      .setDuration(200L)
      .withStartAction(new Runnable() {
        @Override
        public void run() {
          column.setVisibility(View.VISIBLE);
        }
      })
      .start();
    return this;
  }

  public ModScript hideModScript() {
    column.build().animate()
      .alpha(0f)
      .setDuration(200L)
      .withEndAction(new Runnable() {
        @Override
        public void run() {
          column.setVisibility(View.GONE);
        }
      })
      .start();
    return this;
  }

  public ModScript addModScript(String title, String id) {
    final Item item = new Item()
      .setTitle(title)
      .setId(id);

    addItem(item);
    return this;
  }

  public ModScript removeModScript(String id) {
    for (Item item : items) {
      if (item.id.equals(id)) {
        removeItem(item);
        break;
      }
    }
    return this;
  }

  private void addItem(final Item item) {
    items.add(item);
    sort();
    int index = items.indexOf(item);
    if (index >= 0) {
      item.setVisibility(View.INVISIBLE);
      ValueAnimator()
        .ofFloat(0f, 1f)
        .setDuration(200L)
        .addListener(new AnimatorListenerAdapter() {
          @Override
          public void onAnimationStart(Animator animation) {
            super.onAnimationStart(animation);
            item.setVisibility(View.VISIBLE);
          }
        })
        .addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
          @Override
          public void onAnimationUpdate(ValueAnimator animation) {
            item.setAlpha((float) animation.getAnimatedValue());
          }
        })
        .start();
      column.addView(item, index);
    }
  }

  private void removeItem(final Item item) {
    int index = items.indexOf(item);
    if (index >= 0) {
      items.remove(index);
      ValueAnimator()
        .ofFloat(1f, 0f)
        .setDuration(200L)
        .addListener(new AnimatorListenerAdapter() {
          @Override
          public void onAnimationEnd(Animator animation) {
            super.onAnimationEnd(animation);
            column.removeView(item);
          }
        })
        .addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
          @Override
          public void onAnimationUpdate(ValueAnimator animation) {
            item.setAlpha((float) animation.getAnimatedValue());
          }
        })
        .start();
    }
  }

  private void sort() {
    Collections.sort(items, new Comparator<Item>() {
      @Override
      public int compare(Item o1, Item o2) {
        return (int) (o1.build().getPaint().measureText(o2.title) - o2.build().getPaint().measureText(o1.title));
      }
    });
  }

  public static class Item extends Text {

    private String title;

    private String id;

    @SuppressLint("RtlHardcoded")
    @Override
    protected void init() {
      super.init();
      setTextColor(hexColor("#FFFFFFFF"));
      setShadowLayer(20f, 10f, 0f, hexColor("#AA000000"));
      setPadding(0, 0, dip2pxInt(5), dip2pxInt(2.5f));
      setGravity(Gravity.RIGHT);
      setTextSize(14f);
    }

    public Item setTitle(String title) {
      this.title = title;
      setText(Html.fromHtml("<b>" + title + "</b>"));
      return this;
    }

    public Item setId(String id) {
      this.id = id;
      return this;
    }

    public String getTitle() {
      return title;
    }

    public String getId() {
      return id;
    }

  }

}
