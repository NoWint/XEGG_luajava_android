package android.ext;

import android.app.AlertDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class so implements Runnable {
    private final /* synthetic */ AlertDialog a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public so(AlertDialog alertDialog) {
        this.a = alertDialog;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Tools.b(this.a.getWindow());
        } catch (Throwable th) {
            la.c("hideSoftInputFromWindow", th);
        }
    }
}
