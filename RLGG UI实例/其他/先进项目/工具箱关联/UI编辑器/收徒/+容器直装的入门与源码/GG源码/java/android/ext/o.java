package android.ext;

import android.app.AlertDialog;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class o implements Runnable {
    private final /* synthetic */ AlertDialog.Builder a;
    private final /* synthetic */ EditText b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(AlertDialog.Builder builder, EditText editText) {
        this.a = builder;
        this.b = editText;
    }

    @Override // java.lang.Runnable
    public void run() {
        i.a(this.a.create(), this.b);
    }
}
