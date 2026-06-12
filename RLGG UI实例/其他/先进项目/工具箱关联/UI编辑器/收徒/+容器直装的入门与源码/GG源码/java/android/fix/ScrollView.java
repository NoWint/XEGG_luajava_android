package android.fix;

import android.annotation.TargetApi;
import android.content.Context;
import android.ext.Tools;
import android.ext.ho;
import android.ext.la;
import android.graphics.Rect;
import android.os.Build;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;

/* compiled from: src */
/* loaded from: classes.dex */
public class ScrollView extends android.widget.ScrollView {
    private static final long c = ViewConfiguration.getTapTimeout();
    private boolean a;
    private long b;
    private int d;

    @TargetApi(23)
    public ScrollView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = false;
        this.b = -1L;
        this.d = 1;
    }

    public ScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = false;
        this.b = -1L;
        this.d = 1;
    }

    public ScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = false;
        this.b = -1L;
        this.d = 1;
    }

    public ScrollView(Context context) {
        super(context);
        this.a = false;
        this.b = -1L;
        this.d = 1;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        try {
            super.setOverScrollMode(i);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        try {
            super.onDetachedFromWindow();
        } catch (IllegalArgumentException e) {
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

    @Override // android.widget.ScrollView, android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        try {
            return super.onRequestFocusInDescendants(i, rect);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        try {
            super.onMeasure(i, i2);
        } catch (Throwable th) {
            la.a(th);
            ho.a(Thread.currentThread(), th, false);
        }
    }

    public void setFastScrollEnabled(boolean z) {
        this.a = z;
        if (Build.VERSION.SDK_INT >= 16) {
            setScrollBarSize(Tools.b() / 2);
        }
    }

    private void a() {
        this.b = -1L;
    }

    private void b() {
        this.b = SystemClock.uptimeMillis() + c;
    }

    private void c() {
        this.b = -1L;
        this.d = 2;
        requestDisallowInterceptTouchEvent(true);
        d();
    }

    private void d() {
        MotionEvent obtain = MotionEvent.obtain(0L, 0L, 3, 0.0f, 0.0f, 0);
        onTouchEvent(obtain);
        obtain.recycle();
    }

    private boolean a(float f) {
        return f >= ((float) (getWidth() - Tools.b()));
    }

    private int b(float f) {
        int height = getHeight();
        float b = Tools.b() / 2;
        float f2 = (height - 1) - (2.0f * b);
        float height2 = getChildAt(0).getHeight();
        return (int) Math.min(Math.max(((f - b) / f2) * height2, 0.0f), height2);
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.a) {
            switch (motionEvent.getActionMasked()) {
                case 0:
                    if (a(motionEvent.getX())) {
                        b();
                        break;
                    }
                    break;
                case 1:
                case 3:
                    a();
                    break;
                case 2:
                    if (!a(motionEvent.getX())) {
                        a();
                        break;
                    } else if (this.b >= 0 && this.b <= SystemClock.uptimeMillis()) {
                        c();
                        scrollTo(getScrollX(), b(motionEvent.getY()));
                        return onTouchEvent(motionEvent);
                    }
                    break;
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.ScrollView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.a) {
            switch (motionEvent.getActionMasked()) {
                case 0:
                    if (a(motionEvent.getX())) {
                        c();
                        return true;
                    }
                    break;
                case 1:
                    if (this.b >= 0) {
                        c();
                        scrollTo(getScrollX(), b(motionEvent.getY()));
                    }
                    if (this.d == 2) {
                        requestDisallowInterceptTouchEvent(false);
                        this.d = 1;
                        return true;
                    }
                    break;
                case 2:
                    if (this.b >= 0) {
                        c();
                    }
                    if (this.d == 2) {
                        scrollTo(getScrollX(), b(motionEvent.getY()));
                        return true;
                    }
                    break;
                case 3:
                    a();
                    break;
            }
        }
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }
}
