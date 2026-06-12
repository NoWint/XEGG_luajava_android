package android.ext;

import android.app.AlertDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class bw implements Runnable {
    final /* synthetic */ bq a;
    private final /* synthetic */ AlertDialog.Builder b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(bq bqVar, AlertDialog.Builder builder) {
        this.a = bqVar;
        this.b = builder;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            AlertDialog create = this.b.create();
            i.b(create);
            Tools.a(create);
        } catch (Throwable th) {
            la.c("Failed show float dialog", th);
        }
    }
}
