package android.ext;

import android.app.AlertDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class po implements Runnable {
    final /* synthetic */ pl a;
    private final /* synthetic */ AlertDialog.Builder b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public po(pl plVar, AlertDialog.Builder builder) {
        this.a = plVar;
        this.b = builder;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            AlertDialog create = this.b.create();
            i.b(create);
            Tools.a(create);
        } catch (Throwable th) {
            la.c("Failed show miui dialog", th);
        }
    }
}
