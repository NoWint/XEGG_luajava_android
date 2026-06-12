package android.fix;

import android.annotation.TargetApi;
import android.content.Context;
import android.ext.ho;
import android.ext.la;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;

/* compiled from: src */
/* loaded from: classes.dex */
public class SeekBar extends android.widget.SeekBar {
    @TargetApi(21)
    public SeekBar(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public SeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SeekBar(Context context) {
        super(context);
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        try {
            super.setProgress(i);
        } catch (NullPointerException e) {
            la.a(e);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        try {
            super.onVisibilityChanged(view, i);
        } catch (RuntimeException e) {
            la.a(e);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
        } catch (RuntimeException e) {
            la.a(e);
        }
    }

    @Override // android.view.View
    public void playSoundEffect(int i) {
        try {
            super.playSoundEffect(i);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEvent(int i) {
        try {
            super.sendAccessibilityEvent(i);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.widget.ProgressBar
    public void setInterpolator(Context context, int i) {
        try {
            super.setInterpolator(context, i);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.widget.ProgressBar
    public void setInterpolator(Interpolator interpolator) {
        try {
            super.setInterpolator(interpolator);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        try {
            super.onMeasure(i, i2);
        } catch (Throwable th) {
            la.a(th);
            ho.a(Thread.currentThread(), th, false);
        }
    }
}
