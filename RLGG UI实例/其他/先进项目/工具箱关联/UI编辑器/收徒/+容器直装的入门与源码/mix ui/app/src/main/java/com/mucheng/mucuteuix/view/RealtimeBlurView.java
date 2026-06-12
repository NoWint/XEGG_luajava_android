package com.mucheng.mucuteuix.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;

/**
 * @noinspection ALL
 */
public class RealtimeBlurView extends View {

  private float mDownSampleFactor;
  private int mOverlayColor;
  private float mBlurRadius;

  private final BlurImpl mBlurImpl;
  private boolean mDirty;
  private Bitmap mBitmapToBlur, mBlurredBitmap;
  private Canvas mBlurringCanvas;
  private boolean mIsRendering;
  private final Paint mPaint;
  private final Rect mRectSrc = new Rect(), mRectDst = new Rect();

  private View mDecorView;

  private boolean mDifferentRoot;
  private static int RENDERING_COUNT;
  private static int BLUR_IMPL;

  public RealtimeBlurView(Context context) {
    super(context);

    mBlurImpl = new AndroidStockBlurImpl();

    mBlurRadius = TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, 10, context.getResources().getDisplayMetrics());
    mDownSampleFactor = 4;
    mOverlayColor = 0x8C000000;

    mPaint = new Paint();
  }

  public void setBlurRadius(float radius) {
    if (mBlurRadius != radius) {
      mBlurRadius = radius;
      mDirty = true;
      invalidate();
    }
  }

  public void setDownSampleFactor(float factor) {
    if (factor <= 0) {
      throw new IllegalArgumentException("DownSample factor must be greater than 0.");
    }

    if (mDownSampleFactor != factor) {
      mDownSampleFactor = factor;
      mDirty = true;
      releaseBitmap();
      invalidate();
    }
  }

  public void setOverlayColor(int color) {
    if (mOverlayColor != color) {
      mOverlayColor = color;
      invalidate();
    }
  }

  private void releaseBitmap() {
    if (mBitmapToBlur != null) {
      mBitmapToBlur.recycle();
      mBitmapToBlur = null;
    }
    if (mBlurredBitmap != null) {
      mBlurredBitmap.recycle();
      mBlurredBitmap = null;
    }
  }

  protected void release() {
    releaseBitmap();
    mBlurImpl.release();
  }

  protected boolean prepare() {
    if (mBlurRadius == 0) {
      release();
      return false;
    }

    float downSampleFactor = mDownSampleFactor;
    float radius = mBlurRadius / downSampleFactor;
    if (radius > 25) {
      downSampleFactor = downSampleFactor * radius / 25;
      radius = 25;
    }

    final int width = getWidth();
    final int height = getHeight();

    int scaledWidth = Math.max(1, (int) (width / downSampleFactor));
    int scaledHeight = Math.max(1, (int) (height / downSampleFactor));

    boolean dirty = mDirty;

    if (mBlurringCanvas == null || mBlurredBitmap == null
      || mBlurredBitmap.getWidth() != scaledWidth
      || mBlurredBitmap.getHeight() != scaledHeight) {
      dirty = true;
      releaseBitmap();

      boolean r = false;
      try {
        mBitmapToBlur = Bitmap.createBitmap(scaledWidth, scaledHeight, Bitmap.Config.ARGB_8888);
        if (mBitmapToBlur == null) {
          return false;
        }
        mBlurringCanvas = new Canvas(mBitmapToBlur);

        mBlurredBitmap = Bitmap.createBitmap(scaledWidth, scaledHeight, Bitmap.Config.ARGB_8888);
        if (mBlurredBitmap == null) {
          return false;
        }

        r = true;
      } catch (OutOfMemoryError e) {
      } finally {
        if (!r) {
          release();
          return false;
        }
      }
    }

    if (dirty) {
      if (mBlurImpl.prepare(getContext(), mBitmapToBlur, radius)) {
        mDirty = false;
      } else {
        return false;
      }
    }

    return true;
  }

  protected void blur(Bitmap bitmapToBlur, Bitmap blurredBitmap) {
    mBlurImpl.blur(bitmapToBlur, blurredBitmap);
  }

  private final ViewTreeObserver.OnPreDrawListener preDrawListener = new ViewTreeObserver.OnPreDrawListener() {
    @Override
    public boolean onPreDraw() {
      final int[] locations = new int[2];
      Bitmap oldBmp = mBlurredBitmap;
      View decor = mDecorView;
      if (decor != null && isShown() && prepare()) {
        boolean redrawBitmap = mBlurredBitmap != oldBmp;
        decor.getLocationOnScreen(locations);
        int x = -locations[0];
        int y = -locations[1];

        getLocationOnScreen(locations);
        x += locations[0];
        y += locations[1];

        mBitmapToBlur.eraseColor(mOverlayColor & 0xffffff);

        int rc = mBlurringCanvas.save();
        mIsRendering = true;
        RENDERING_COUNT++;
        try {
          mBlurringCanvas.scale(1.f * mBitmapToBlur.getWidth() / getWidth(), 1.f * mBitmapToBlur.getHeight() / getHeight());
          mBlurringCanvas.translate(-x, -y);
          if (decor.getBackground() != null) {
            decor.getBackground().draw(mBlurringCanvas);
          }
          decor.draw(mBlurringCanvas);
        } catch (StopException ignored) {
        } finally {
          mIsRendering = false;
          RENDERING_COUNT--;
          mBlurringCanvas.restoreToCount(rc);
        }

        blur(mBitmapToBlur, mBlurredBitmap);

        if (redrawBitmap || mDifferentRoot) {
          invalidate();
        }
      }

      return true;
    }
  };

  protected View getActivityDecorView() {
    Context ctx = getContext();
    for (int i = 0; i < 4 && !(ctx instanceof Activity) && ctx instanceof ContextWrapper; i++) {
      ctx = ((ContextWrapper) ctx).getBaseContext();
    }
    if (ctx instanceof Activity) {
      return ((Activity) ctx).getWindow().getDecorView();
    } else {
      return null;
    }
  }

  @Override
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    mDecorView = getActivityDecorView();
    if (mDecorView != null) {
      mDecorView.getViewTreeObserver().addOnPreDrawListener(preDrawListener);
      mDifferentRoot = mDecorView.getRootView() != getRootView();
      if (mDifferentRoot) {
        mDecorView.postInvalidate();
      }
    } else {
      mDifferentRoot = false;
    }
  }

  @Override
  protected void onDetachedFromWindow() {
    if (mDecorView != null) {
      mDecorView.getViewTreeObserver().removeOnPreDrawListener(preDrawListener);
    }
    release();
    super.onDetachedFromWindow();
  }

  @Override
  public void draw(Canvas canvas) {
    if (mIsRendering) {
      throw STOP_EXCEPTION;
    } else if (RENDERING_COUNT > 0) {
    } else {
      super.draw(canvas);
    }
  }

  @Override
  protected void onDraw(Canvas canvas) {
    super.onDraw(canvas);
    drawBlurredBitmap(canvas, mBlurredBitmap, mOverlayColor);
  }

  protected void drawBlurredBitmap(Canvas canvas, Bitmap blurredBitmap, int overlayColor) {
    if (blurredBitmap != null) {
      mRectSrc.right = blurredBitmap.getWidth();
      mRectSrc.bottom = blurredBitmap.getHeight();
      mRectDst.right = getWidth();
      mRectDst.bottom = getHeight();
      canvas.drawBitmap(blurredBitmap, mRectSrc, mRectDst, null);
    }
    mPaint.setColor(overlayColor);
    canvas.drawRect(mRectDst, mPaint);
  }

  private static class StopException extends RuntimeException {
  }

  private static final StopException STOP_EXCEPTION = new StopException();
}