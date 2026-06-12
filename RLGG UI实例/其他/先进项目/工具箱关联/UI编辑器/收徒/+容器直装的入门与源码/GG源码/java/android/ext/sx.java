package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class sx implements DialogInterface.OnShowListener {
    final /* synthetic */ sw a;
    private final /* synthetic */ AlertDialog b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sx(sw swVar, AlertDialog alertDialog) {
        this.a = swVar;
        this.b = alertDialog;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(this.b);
    }
}
