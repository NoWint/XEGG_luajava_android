package android.ext;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;

/* compiled from: src */
/* loaded from: classes.dex */
class rj implements View.OnTouchListener {
    final /* synthetic */ ShowApp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rj(ShowApp showApp) {
        this.a = showApp;
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                this.a.a(true);
                return true;
            case 1:
            case 3:
                this.a.a(false);
                return true;
            case 2:
            default:
                return false;
        }
    }
}
