package android.fix;

import android.content.Context;
import android.ext.ho;
import android.ext.la;
import android.util.AttributeSet;

/* compiled from: src */
/* loaded from: classes.dex */
public class TabWidget extends android.widget.TabWidget {
    public TabWidget(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public TabWidget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public TabWidget(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public TabWidget(Context context) {
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

    @Override // android.view.View
    public boolean performClick() {
        try {
            return super.performClick();
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }

    @Override // android.widget.TabWidget
    public void focusCurrentTab(int i) {
        try {
            super.focusCurrentTab(i);
        } catch (Throwable th) {
            la.a(th);
        }
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
