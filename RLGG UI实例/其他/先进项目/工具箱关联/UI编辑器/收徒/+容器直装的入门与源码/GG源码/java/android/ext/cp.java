package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class cp implements DialogInterface.OnShowListener {
    final /* synthetic */ co a;
    private final /* synthetic */ AlertDialog b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cp(co coVar, AlertDialog alertDialog) {
        this.a = coVar;
        this.b = alertDialog;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(this.b);
    }
}
