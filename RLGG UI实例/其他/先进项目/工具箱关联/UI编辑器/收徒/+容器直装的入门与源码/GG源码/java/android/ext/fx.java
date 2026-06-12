package android.ext;

import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fx implements Runnable {
    final /* synthetic */ ex a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fx(ex exVar) {
        this.a = exVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Handler b = rx.b();
        b.removeCallbacks(this);
        if (this.a.c()) {
            b.postDelayed(this, 1000L);
        }
    }
}
