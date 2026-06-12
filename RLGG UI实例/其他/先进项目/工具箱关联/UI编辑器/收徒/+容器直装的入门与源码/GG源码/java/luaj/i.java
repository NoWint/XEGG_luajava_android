package luaj;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class i implements DialogInterface.OnDismissListener {
    final /* synthetic */ g a;
    private final /* synthetic */ j b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(g gVar, j jVar) {
        this.a = gVar;
        this.b = jVar;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        synchronized (this.b) {
            this.b.notify();
        }
    }
}
