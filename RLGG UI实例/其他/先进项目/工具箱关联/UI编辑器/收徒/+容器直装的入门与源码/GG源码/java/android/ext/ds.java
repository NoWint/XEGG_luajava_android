package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;

/* compiled from: src */
/* loaded from: classes.dex */
class ds implements DialogInterface.OnClickListener {
    private final /* synthetic */ View.OnClickListener a;
    private final /* synthetic */ AlertDialog b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ds(View.OnClickListener onClickListener, AlertDialog alertDialog) {
        this.a = onClickListener;
        this.b = alertDialog;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.onClick(this.b.getButton(-1));
    }
}
