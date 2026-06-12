package android.ext;

import android.app.AlertDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class m implements Runnable {
    private final /* synthetic */ AlertDialog a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            i.a(this.a);
        } catch (Throwable th) {
            la.c("Failed show dialog on service", th);
        }
    }
}
