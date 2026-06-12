package android.fix;

import android.annotation.TargetApi;
import android.content.Context;
import android.ext.Tools;
import android.ext.ho;
import android.ext.la;
import android.graphics.Canvas;
import android.os.Build;
import android.util.AttributeSet;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class ImageButton extends android.widget.ImageButton {
    @TargetApi(21)
    public ImageButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        if (Build.VERSION.SDK_INT >= 11) {
            return;
        }
        Tools.a(this, Tools.b((int) R.drawable.btn_default_normal_holo_dark));
        setMinimumHeight(Tools.b());
    }

    public ImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        if (Build.VERSION.SDK_INT >= 11) {
            return;
        }
        Tools.a(this, Tools.b((int) R.drawable.btn_default_normal_holo_dark));
        setMinimumHeight(Tools.b());
    }

    public ImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (Build.VERSION.SDK_INT >= 11) {
            return;
        }
        Tools.a(this, Tools.b((int) R.drawable.btn_default_normal_holo_dark));
        setMinimumHeight(Tools.b());
    }

    public ImageButton(Context context) {
        super(context);
        if (Build.VERSION.SDK_INT >= 11) {
            return;
        }
        Tools.a(this, Tools.b((int) R.drawable.btn_default_normal_holo_dark));
        setMinimumHeight(Tools.b());
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
        } catch (NoSuchFieldError e) {
            la.a(e);
        } catch (RuntimeException e2) {
            la.a(e2);
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

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        try {
            super.onMeasure(i, i2);
        } catch (Throwable th) {
            la.a(th);
            ho.a(Thread.currentThread(), th, false);
        }
    }
}
