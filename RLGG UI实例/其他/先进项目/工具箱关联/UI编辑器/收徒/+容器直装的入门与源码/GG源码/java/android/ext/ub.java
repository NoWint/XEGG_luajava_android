package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ub implements DialogInterface.OnClickListener {
    private final /* synthetic */ Runnable a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ub(Runnable runnable, String str) {
        this.a = runnable;
        this.b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        la.a(this.a + ": 120");
        ty.a(this.b);
        la.a(this.a + ": 130");
    }
}
