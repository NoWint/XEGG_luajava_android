package android.ext;

import android.widget.Toast;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sg implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Toast toast;
        try {
            Thread.sleep(3000L);
        } catch (Throwable th) {
            la.c("toastThread", th);
        }
        while (!Thread.currentThread().isInterrupted()) {
            try {
                obj = sf.b;
                synchronized (obj) {
                    toast = sf.a;
                    sf.a = null;
                }
                if ((Config.B & 8192) != 0) {
                    rx.a(new sh(this));
                }
                sf.e(toast);
                Thread.sleep(1500L);
            } catch (Throwable th2) {
                la.c("toastThread", th2);
            }
        }
    }
}
