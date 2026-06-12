package android.ext;

import android.widget.Toast;

/* compiled from: src */
/* loaded from: classes.dex */
class sj implements Runnable {
    private final /* synthetic */ Toast a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sj(Toast toast) {
        this.a = toast;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.a.cancel();
        } catch (Throwable th) {
            la.b("Toast cancel", th);
        }
    }
}
