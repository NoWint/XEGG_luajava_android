package android.fix;

import android.annotation.TargetApi;
import android.content.Context;
import android.ext.Tools;
import android.ext.ho;
import android.ext.la;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.TextView;

/* compiled from: src */
/* loaded from: classes.dex */
public class TextView extends android.widget.TextView {
    private Rect a;
    private Paint.FontMetricsInt b;

    @TargetApi(21)
    public TextView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public TextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public TextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TextView(Context context) {
        super(context);
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        try {
            super.setText(charSequence, bufferType);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        try {
            super.drawableStateChanged();
        } catch (ArrayIndexOutOfBoundsException e) {
            la.a(e);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.widget.TextView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        try {
            super.invalidateDrawable(drawable);
        } catch (NoSuchFieldError e) {
            la.a(e);
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        try {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } catch (StringIndexOutOfBoundsException e) {
            la.a(e);
        }
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        try {
            super.refreshDrawableState();
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        try {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        } catch (NullPointerException e) {
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

    @Override // android.widget.TextView, android.view.View
    public boolean performLongClick() {
        try {
            return super.performLongClick();
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onDragEvent(DragEvent dragEvent) {
        try {
            return super.onDragEvent(dragEvent);
        } catch (ClassCastException e) {
            la.a(e);
            return false;
        }
    }

    private static int a(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        switch (mode) {
            case Integer.MIN_VALUE:
                return Math.min(i, size);
            case 0:
            default:
                return i;
            case 1073741824:
                return size;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        try {
            super.onMeasure(i, i2);
        } catch (Throwable th) {
            la.a(th);
            try {
                int suggestedMinimumWidth = getSuggestedMinimumWidth();
                int suggestedMinimumHeight = getSuggestedMinimumHeight();
                int size = View.MeasureSpec.getMode(i) == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i) : Integer.MAX_VALUE;
                int i3 = size == 0 ? Integer.MAX_VALUE : size;
                TextPaint paint = getPaint();
                CharSequence text = getText();
                int i4 = 0;
                int a = (int) (Tools.a(1.0f) + 0.99d);
                int i5 = 0;
                int length = text.length();
                for (int i6 = 0; i6 <= length; i6++) {
                    if (i6 == length || text.charAt(i6) == '\n') {
                        i4++;
                        if (i6 > i5) {
                            int measureText = (int) (paint.measureText(text, i5, i6) + 0.99d);
                            if (a < measureText) {
                                a = measureText;
                            }
                            i4 += measureText / i3;
                        }
                        i5 = i6 + 1;
                    }
                }
                if (this.a == null) {
                    this.a = new Rect();
                }
                if (this.b == null) {
                    this.b = new Paint.FontMetricsInt();
                }
                paint.getTextBounds("!\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~", 0, 94, this.a);
                int max = Math.max((this.a.bottom - this.a.top) + 1, paint.getFontMetricsInt(this.b));
                if (max <= 5) {
                    max = Math.max(max, (int) ((getTextSize() * 1.5d) + 0.99d));
                }
                setMeasuredDimension(a(Math.max(suggestedMinimumWidth, a + getCompoundPaddingLeft() + getCompoundPaddingRight()), i), a(Math.max(suggestedMinimumHeight, (i4 * max) + getCompoundPaddingTop() + getCompoundPaddingBottom() + ((this.b.bottom - this.b.top) - (this.b.descent - this.b.ascent))), i2));
            } catch (Throwable th2) {
                la.a(th2);
                ho.a(Thread.currentThread(), th, false);
                ho.a(Thread.currentThread(), th2, false);
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onKeyShortcut(int i, KeyEvent keyEvent) {
        try {
            return super.onKeyShortcut(i, keyEvent);
        } catch (NullPointerException e) {
            la.a(e);
            return false;
        }
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        try {
            return super.onTextContextMenuItem(i);
        } catch (NullPointerException e) {
            la.a(e);
            return false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        try {
            super.onWindowFocusChanged(z);
        } catch (NullPointerException e) {
            la.a(e);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        try {
            super.setVisibility(i);
        } catch (StackOverflowError e) {
            la.a(e);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        Tools.a((android.widget.TextView) this);
        super.onDetachedFromWindow();
    }

    public boolean getSecClipboardEnabled() {
        return false;
    }
}
