package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sv implements Runnable {
    private final /* synthetic */ DialogInterface a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sv(DialogInterface dialogInterface) {
        this.a = dialogInterface;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.a.dismiss();
        } catch (Throwable th) {
            la.a(th);
        }
    }
}
