package android.ext;

import android.app.AlertDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class by implements Runnable {
    private final /* synthetic */ AlertDialog.Builder a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public by(AlertDialog.Builder builder) {
        this.a = builder;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            i.b(this.a.create());
        } catch (Throwable th) {
            la.c("Failed show float dialog", th);
        }
    }
}
