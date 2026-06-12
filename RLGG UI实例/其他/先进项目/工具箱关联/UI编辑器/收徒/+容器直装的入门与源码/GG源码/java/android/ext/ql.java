package android.ext;

import android.os.Handler;

/* compiled from: src */
/* loaded from: classes.dex */
class ql implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        long j = qk.c;
        if (j != 0 && System.currentTimeMillis() - j > 5000) {
            qk.a();
        }
        Handler a = rx.a();
        try {
            a.removeCallbacks(this);
        } catch (NullPointerException e) {
            la.a(e);
        }
        a.postDelayed(this, 1000L);
    }
}
