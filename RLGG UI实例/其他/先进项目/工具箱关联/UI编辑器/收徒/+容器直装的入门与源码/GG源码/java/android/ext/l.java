package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class l implements DialogInterface.OnDismissListener {
    private final /* synthetic */ Runnable a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Runnable runnable) {
        this.a = runnable;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        la.a(this.a + ": 40_");
        rx.a().postDelayed(this.a, 5000L);
    }
}
