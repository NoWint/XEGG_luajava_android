package com.mucheng.mucuteuix.view;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;

import com.mucheng.mucuteuix.callback.DrawCallback;

import java.util.ArrayList;
import java.util.List;

public class DrawableView extends View {

  private final List<DrawCallback> callbacks = new ArrayList<>();

  public DrawableView(Context context) {
    super(context);
  }

  @Override
  public void draw(Canvas canvas) {
    for (DrawCallback callback : callbacks) {
      callback.onDrawView(canvas);
    }
    super.draw(canvas);
  }

  public void addDrawCallback(DrawCallback callback) {
    callbacks.add(callback);
    invalidate();
  }

  public void removeDrawCallback(DrawCallback callback) {
    callbacks.remove(callback);
    invalidate();
  }

}
