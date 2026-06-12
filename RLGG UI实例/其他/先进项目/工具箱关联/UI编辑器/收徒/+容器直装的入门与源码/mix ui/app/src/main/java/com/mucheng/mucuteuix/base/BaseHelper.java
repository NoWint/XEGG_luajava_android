package com.mucheng.mucuteuix.base;

import android.animation.Animator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.WindowManager;
import android.view.animation.AlphaAnimation;
import android.view.animation.TranslateAnimation;

import com.mucheng.mucuteuix.animation.AnimatorSet;
import com.mucheng.mucuteuix.animation.ObjectAnimator;
import com.mucheng.mucuteuix.animation.ValueAnimator;
import com.mucheng.mucuteuix.callback.PostCallback;
import com.mucheng.mucuteuix.component.BlurView;
import com.mucheng.mucuteuix.component.Column;
import com.mucheng.mucuteuix.component.ColumnScroll;
import com.mucheng.mucuteuix.component.DrawableView;
import com.mucheng.mucuteuix.component.Popup;
import com.mucheng.mucuteuix.component.Relative;
import com.mucheng.mucuteuix.component.Row;
import com.mucheng.mucuteuix.component.Stack;
import com.mucheng.mucuteuix.component.Text;
import com.mucheng.mucuteuix.core.MuCuteUIX;
import com.mucheng.mucuteuix.layoutparams.LinearParams;
import com.mucheng.mucuteuix.layoutparams.RelativeParams;
import com.mucheng.mucuteuix.layoutparams.StackParams;
import com.mucheng.mucuteuix.util.GradientDrawableBuilder;

public abstract class BaseHelper {

  public BaseHelper() {
    init();
  }

  protected Activity requireActivity() {
    return MuCuteUIX.requireActivity();
  }

  public static final int MatchParent = -1;

  public static final int WrapContent = -2;

  protected int W() {
    final WindowManager windowManager = (WindowManager) requireActivity().getSystemService(Context.WINDOW_SERVICE);
    final Point point = new Point();
    windowManager.getDefaultDisplay().getRealSize(point);
    return point.x;
  }

  protected int H() {
    final WindowManager windowManager = (WindowManager) requireActivity().getSystemService(Context.WINDOW_SERVICE);
    final Point point = new Point();
    windowManager.getDefaultDisplay().getRealSize(point);
    return point.y;
  }

  protected int SystemW() {
    if (isLandscape()) {
      return W();
    }
    return H();
  }

  protected int SystemH() {
    if (isLandscape()) {
      return H();
    }
    return W();
  }

  protected int MaxSystemWH() {
    return Math.max(SystemW(), SystemH());
  }

  protected int MinSystemWH() {
    return Math.min(SystemW(), SystemH());
  }

  protected boolean isLandscape() {
    return Resources.getSystem().getDisplayMetrics().widthPixels > Resources.getSystem().getDisplayMetrics().heightPixels;
  }

  protected void Ui(Runnable runnable) {
    checkNotNull(runnable, "runnable");
    requireActivity().runOnUiThread(runnable);
  }

  protected void post(Runnable runnable) {
    checkNotNull(runnable, "runnable");
    requireActivity().getWindow().getDecorView().post(runnable);
  }

  protected void postOnce(final Runnable runnable) {
    checkNotNull(runnable, "runnable");
    final View decorView = requireActivity().getWindow().getDecorView();
    decorView.post(new Runnable() {
      @Override
      public void run() {
        runnable.run();
        decorView.removeCallbacks(this);
      }
    });
  }

  protected void delayed(Runnable runnable, long duration) {
    checkNotNull(runnable, "runnable");
    new Handler(Looper.getMainLooper()).postDelayed(runnable, duration);
  }

  protected float sp2px(float value) {
    final WindowManager windowManager = (WindowManager) requireActivity().getSystemService(Context.WINDOW_SERVICE);
    final DisplayMetrics displayMetrics = new DisplayMetrics();
    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
    return TypedValue.applyDimension(
      TypedValue.COMPLEX_UNIT_SP,
      value,
      displayMetrics
    );
  }

  protected float sp2px(int value) {
    final WindowManager windowManager = (WindowManager) requireActivity().getSystemService(Context.WINDOW_SERVICE);
    final DisplayMetrics displayMetrics = new DisplayMetrics();
    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
    return TypedValue.applyDimension(
      TypedValue.COMPLEX_UNIT_SP,
      value,
      displayMetrics
    );
  }

  protected float dip2px(float value) {
    final WindowManager windowManager = (WindowManager) requireActivity().getSystemService(Context.WINDOW_SERVICE);
    final DisplayMetrics displayMetrics = new DisplayMetrics();
    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
    return TypedValue.applyDimension(
      TypedValue.COMPLEX_UNIT_DIP,
      value,
      displayMetrics
    );
  }

  protected float dip2px(int value) {
    final WindowManager windowManager = (WindowManager) requireActivity().getSystemService(Context.WINDOW_SERVICE);
    final DisplayMetrics displayMetrics = new DisplayMetrics();
    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
    return TypedValue.applyDimension(
      TypedValue.COMPLEX_UNIT_DIP,
      value,
      displayMetrics
    );
  }

  protected int dip2pxInt(float value) {
    final WindowManager windowManager = (WindowManager) requireActivity().getSystemService(Context.WINDOW_SERVICE);
    final DisplayMetrics displayMetrics = new DisplayMetrics();
    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
    return (int) TypedValue.applyDimension(
      TypedValue.COMPLEX_UNIT_DIP,
      value,
      displayMetrics
    );
  }

  protected int dip2pxInt(int value) {
    final WindowManager windowManager = (WindowManager) requireActivity().getSystemService(Context.WINDOW_SERVICE);
    final DisplayMetrics displayMetrics = new DisplayMetrics();
    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
    return (int) TypedValue.applyDimension(
      TypedValue.COMPLEX_UNIT_DIP,
      value,
      displayMetrics
    );
  }

  protected int hexColor(String hex) {
    return Color.parseColor(hex);
  }

  protected Column Column() {
    return new Column();
  }

  protected Stack Stack() {
    return new Stack();
  }

  protected Relative Relative() { return new Relative(); }

  protected ColumnScroll ColumnScroll() {
    return new ColumnScroll();
  }

  protected Row Row() {
    return new Row();
  }

  protected Popup Popup() {
    return new Popup();
  }

  protected com.mucheng.mucuteuix.component.View View() {
    return new com.mucheng.mucuteuix.component.View();
  }

  protected Text Text() {
    return new Text();
  }

  protected BlurView BlurView() {
    return new BlurView();
  }

  protected DrawableView DrawableView() { return new DrawableView(); }

  protected LinearParams LinearParams() {
    return new LinearParams();
  }

  protected StackParams StackParams() {
    return new StackParams();
  }

  protected RelativeParams RelativeParams() { return new RelativeParams(); }

  protected GradientDrawableBuilder GradientDrawableBuilder() {
    return new GradientDrawableBuilder();
  }

  protected com.mucheng.mucuteuix.animation.Animator Animator(Animator animator) {
    return new com.mucheng.mucuteuix.animation.Animator(animator);
  }

  protected AnimatorSet AnimatorSet() {
    return new AnimatorSet();
  }

  protected ObjectAnimator ObjectAnimator() {
    return new ObjectAnimator();
  }

  protected ValueAnimator ValueAnimator() {
    return new ValueAnimator();
  }

  protected void checkNotNull(Object target, String name) {
    MuCuteUIX.checkNotNull(target, name);
  }

  protected abstract void init();

}
