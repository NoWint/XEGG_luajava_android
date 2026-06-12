package android.ext;

import android.os.Handler;

/* compiled from: src */
/* loaded from: classes.dex */
class jq implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        jp.e();
        Handler a = rx.a();
        a.removeCallbacks(this);
        a.postDelayed(this, 500L);
    }
}
