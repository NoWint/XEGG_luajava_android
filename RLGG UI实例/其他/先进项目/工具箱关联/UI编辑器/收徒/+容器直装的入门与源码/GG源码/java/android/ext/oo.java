package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class oo implements Runnable {
    final /* synthetic */ om a;
    private final /* synthetic */ DialogInterface b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oo(om omVar, DialogInterface dialogInterface) {
        this.a = omVar;
        this.b = dialogInterface;
    }

    @Override // java.lang.Runnable
    public void run() {
        i.c((AlertDialog) this.b);
    }
}
