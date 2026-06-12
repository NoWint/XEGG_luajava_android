package com.mucheng.mucuteuix.base;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;

import com.mucheng.mucuteuix.callback.GlobalLayoutCallback;
import com.mucheng.mucuteuix.callback.PostCallback;
import com.mucheng.mucuteuix.callback.RunCallback;
import com.mucheng.mucuteuix.layoutparams.BaseParams;
import com.mucheng.mucuteuix.util.GradientDrawableBuilder;

public abstract class ViewHelper<T extends BaseHelper> extends BaseHelper {

  public T setId(int id) {
    build().setId(id);
    return self();
  }

  public T debugBackground() {
    setBackground(new ColorDrawable(Color.RED));
    return self();
  }

  public T setBackground(Drawable background) {
    build().setBackground(background);
    return self();
  }

  public T setBackground(GradientDrawableBuilder background) {
    return setBackground(background.build());
  }

  public T setX(float x) {
    build().setX(x);
    return self();
  }

  public T setY(float y) {
    build().setY(y);
    return self();
  }

  public T setAlpha(float alpha) {
    build().setAlpha(alpha);
    return self();
  }

  public T setPadding(int left, int top, int right, int bottom) {
    build().setPadding(left, top, right, bottom);
    return self();
  }

  public T setLayoutParams(ViewGroup.LayoutParams layoutParams) {
    build().setLayoutParams(layoutParams);
    return self();
  }

  public T setLayoutParams(BaseParams<?> layoutParams) {
    return setLayoutParams(layoutParams.build());
  }

  public T setOnTouchListener(View.OnTouchListener onTouchListener) {
    build().setOnTouchListener(onTouchListener);
    return self();
  }

  public T setOnClickListener(View.OnClickListener onClickListener) {
    build().setOnClickListener(onClickListener);
    return self();
  }

  public T setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
    build().setOnLongClickListener(onLongClickListener);
    return self();
  }

  public T setFocusable(boolean focusable) {
    build().setFocusable(focusable);
    return self();
  }

  public T setFocusableInTouchMode(boolean focusableInTouchMode) {
    build().setFocusableInTouchMode(focusableInTouchMode);
    return self();
  }

  public T setClickable(boolean clickable) {
    build().setClickable(clickable);
    return self();
  }

  public T setVisibility(int visibility) {
    build().setVisibility(visibility);
    return self();
  }

  public T setMinWidth(int width) {
    build().setMinimumWidth(width);
    return self();
  }

  public T setMinHeight(int height) {
    build().setMinimumHeight(height);
    return self();
  }

  public T setElevation(float elevation) {
    build().setElevation(elevation);
    return self();
  }

  public T post(final PostCallback postCallback) {
    final View view = build();
    view.post(new Runnable() {
      @Override
      public void run() {
        postCallback.onPost(view.getWidth(), view.getHeight());
      }
    });
    return self();
  }

  public T postOnce(final PostCallback postCallback) {
    final View view = build();
    view.post(new Runnable() {
      @Override
      public void run() {
        postCallback.onPost(view.getWidth(), view.getHeight());
        view.removeCallbacks(this);
      }
    });
    return self();
  }

  public T postDelayed(final PostCallback postCallback, long duration) {
    final View view = build();
    view.postDelayed(new Runnable() {

      @Override
      public void run() {
        postCallback.onPost(view.getWidth(), view.getHeight());
      }

    }, duration);
    return self();
  }

  public T postOnceDelayed(final PostCallback postCallback, long duration) {
    final View view = build();
    view.postDelayed(new Runnable() {

      @Override
      public void run() {
        postCallback.onPost(view.getWidth(), view.getHeight());
        view.removeCallbacks(this);
      }

    }, duration);
    return self();
  }

  public T globalLayout(final GlobalLayoutCallback globalLayoutCallback) {
    final View view = build();
    view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
      @Override
      public void onGlobalLayout() {
        globalLayoutCallback.onGlobalLayout(view.getWidth(), view.getHeight());
      }
    });
    return self();
  }

  public T globalLayoutOnce(final GlobalLayoutCallback globalLayoutCallback) {
    final View view = build();
    final ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
    viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() {
      @Override
      public void onGlobalLayout() {
        globalLayoutCallback.onGlobalLayout(view.getWidth(), view.getHeight());
        viewTreeObserver.removeOnGlobalLayoutListener(this);
      }
    });
    return self();
  }

  public T run(RunCallback runCallback) {
    runCallback.onRun();
    return self();
  }

  public abstract View build();

  protected T self() {
    return (T) this;
  }

}
