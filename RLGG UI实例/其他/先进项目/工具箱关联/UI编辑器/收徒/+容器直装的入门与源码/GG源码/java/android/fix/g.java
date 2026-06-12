package android.fix;

import android.annotation.TargetApi;
import android.content.Context;
import android.ext.ho;
import android.ext.la;
import android.graphics.Canvas;
import android.inputmethodservice.KeyboardView;
import android.util.AttributeSet;

/* compiled from: src */
/* loaded from: classes.dex */
public class g extends KeyboardView {
    public static volatile boolean a = true;

    @TargetApi(21)
    public g(Context context, AttributeSet attributeSet, int i, int i2) {
        super(a ? new h(context) : context, attributeSet, i, i2);
    }

    public g(Context context, AttributeSet attributeSet, int i) {
        super(a ? new h(context) : context, attributeSet, i);
    }

    public g(Context context, AttributeSet attributeSet) {
        super(a ? new h(context) : context, attributeSet);
    }

    @Override // android.inputmethodservice.KeyboardView, android.view.View
    public void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
        } catch (IllegalArgumentException e) {
            la.a(e);
        } catch (OutOfMemoryError e2) {
            la.a(e2);
        }
    }

    @Override // android.inputmethodservice.KeyboardView, android.view.View
    public void onMeasure(int i, int i2) {
        try {
            super.onMeasure(i, i2);
        } catch (Throwable th) {
            la.a(th);
            ho.a(Thread.currentThread(), th, false);
        }
    }
}
