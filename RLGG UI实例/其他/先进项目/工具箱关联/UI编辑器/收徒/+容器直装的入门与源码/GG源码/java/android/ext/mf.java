package android.ext;

import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class mf implements Runnable {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mf(MainService mainService) {
        this.a = mainService;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.a.X == this.a.U) {
                this.a.an.d();
            }
        } catch (Throwable th) {
            la.c("Failed update saved list", th);
        }
        try {
            int i = Config.n;
            if (i <= 0) {
                i = 1000;
            }
            Handler a = rx.a();
            a.removeCallbacks(this);
            a.postDelayed(this, i);
        } catch (Throwable th2) {
            la.b("Failed post timer", th2);
        }
    }
}
