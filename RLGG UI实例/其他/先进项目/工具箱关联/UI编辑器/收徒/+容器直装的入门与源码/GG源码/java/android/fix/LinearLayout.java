package android.fix;

import android.content.Context;
import android.content.res.Configuration;
import android.ext.ho;
import android.ext.la;
import android.util.AttributeSet;

/* compiled from: src */
/* loaded from: classes.dex */
public class LinearLayout extends android.widget.LinearLayout {
    public LinearLayout(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public LinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public LinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public LinearLayout(Context context) {
        super(context);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        String configuration2 = configuration == null ? null : configuration.toString();
        la.a("LinearLayout onConfigurationChanged: " + configuration2);
        super.onConfigurationChanged(d.a(configuration));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        try {
            super.onMeasure(i, i2);
        } catch (Throwable th) {
            la.a(th);
            ho.a(Thread.currentThread(), th, false);
        }
    }
}
