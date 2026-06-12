package android.ext;

import android.app.AlertDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class bt implements Runnable {
    final /* synthetic */ bq a;
    private final /* synthetic */ AlertDialog b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bt(bq bqVar, AlertDialog alertDialog) {
        this.a = bqVar;
        this.b = alertDialog;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            i.b(this.b);
        } catch (Throwable th) {
            la.c("Failed show dialog: " + this.b, th);
        }
    }
}
