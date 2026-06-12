package android.ext;

import android.app.AlertDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class n implements Runnable {
    private final /* synthetic */ AlertDialog.Builder a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(AlertDialog.Builder builder) {
        this.a = builder;
    }

    @Override // java.lang.Runnable
    public void run() {
        i.a(this.a, (EditText) null);
    }
}
