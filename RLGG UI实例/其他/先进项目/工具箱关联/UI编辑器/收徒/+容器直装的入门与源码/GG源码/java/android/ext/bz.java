package android.ext;

import android.content.Context;
import android.fix.TextView;
import android.graphics.Color;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;

/* compiled from: src */
/* loaded from: classes.dex */
class bz extends TextView implements View.OnTouchListener {
    String a;
    int b;
    int c;

    public bz(Context context, String str, int i, int i2) {
        super(context);
        this.a = str;
        this.b = i;
        this.c = i2;
        setTextColor(Color.rgb(255, 255, 255));
        setText(str);
        setOnTouchListener(this);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        la.a("TestButton: dispatchTouchEvent for " + this.a + ": " + motionEvent, new RuntimeException());
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        la.a("TestButton: onTouch for " + this.a + ": " + motionEvent, new RuntimeException());
        return false;
    }

    @Override // android.fix.TextView, android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        la.a("TestButton: onTouchEvent for " + this.a + ": " + motionEvent, new RuntimeException());
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        la.a("TestButton: dispatchGenericMotionEvent for " + this.a + ": " + motionEvent, new RuntimeException());
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    protected boolean dispatchGenericPointerEvent(MotionEvent motionEvent) {
        la.a("TestButton: dispatchGenericPointerEvent for " + this.a + ": " + motionEvent, new RuntimeException());
        return super.dispatchGenericPointerEvent(motionEvent);
    }

    @Override // android.view.View
    protected boolean dispatchGenericFocusedEvent(MotionEvent motionEvent) {
        la.a("TestButton: dispatchGenericFocusedEvent for " + this.a + ": " + motionEvent, new RuntimeException());
        return super.dispatchGenericFocusedEvent(motionEvent);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        la.a("TestButton: onGenericMotionEvent for " + this.a + ": " + motionEvent, new RuntimeException());
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        la.a("TestButton: dispatchKeyEvent for " + this.a + ": " + keyEvent, new RuntimeException());
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        la.a("TestButton: dispatchTrackballEvent for " + this.a + ": " + motionEvent, new RuntimeException());
        return super.dispatchTrackballEvent(motionEvent);
    }
}
