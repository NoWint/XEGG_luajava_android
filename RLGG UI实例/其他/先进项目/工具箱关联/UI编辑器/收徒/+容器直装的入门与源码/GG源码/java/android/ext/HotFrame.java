package android.ext;

import android.content.Context;
import android.fix.FrameLayout;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* compiled from: src */
/* loaded from: classes.dex */
public class HotFrame extends FrameLayout implements View.OnLongClickListener {
    private final Runnable a;

    public HotFrame(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        setHapticFeedbackEnabled(false);
        setOnLongClickListener(this);
        this.a = new jf(this);
    }

    public HotFrame(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setHapticFeedbackEnabled(false);
        setOnLongClickListener(this);
        this.a = new jf(this);
    }

    public HotFrame(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setHapticFeedbackEnabled(false);
        setOnLongClickListener(this);
        this.a = new jf(this);
    }

    public HotFrame(Context context) {
        super(context);
        setHapticFeedbackEnabled(false);
        setOnLongClickListener(this);
        this.a = new jf(this);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        int longPressTimeout = ViewConfiguration.getLongPressTimeout();
        if (longPressTimeout < 0) {
            longPressTimeout = 0;
        }
        int i = 750 - longPressTimeout;
        la.a("Fake long click: " + i);
        if (i > 0) {
            removeCallbacks(this.a);
            postDelayed(this.a, i);
            return true;
        }
        this.a.run();
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        try {
            switch (motionEvent.getAction()) {
                case 0:
                case 1:
                case 3:
                    removeCallbacks(this.a);
                    break;
            }
        } catch (NoSuchMethodError e) {
            la.a(e);
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Throwable th) {
            la.a(th);
            return false;
        }
    }
}
