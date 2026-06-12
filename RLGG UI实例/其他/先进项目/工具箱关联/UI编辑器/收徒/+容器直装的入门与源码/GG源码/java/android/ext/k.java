package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class k implements DialogInterface.OnShowListener {
    private final /* synthetic */ Runnable a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Runnable runnable) {
        this.a = runnable;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        la.a(this.a + ": 30_");
        rx.a().removeCallbacks(this.a);
    }
}
