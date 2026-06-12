package android.ext;

import android.app.AlertDialog;

/* compiled from: src */
/* loaded from: classes.dex */
class bm implements Runnable {
    final /* synthetic */ bl a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bm(bl blVar) {
        this.a = blVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlertDialog alertDialog = this.a.a;
        if (alertDialog != null) {
            i.c(alertDialog);
        }
    }
}
