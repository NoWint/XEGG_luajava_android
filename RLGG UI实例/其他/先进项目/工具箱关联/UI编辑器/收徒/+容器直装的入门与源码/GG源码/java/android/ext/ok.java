package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class ok implements DialogInterface.OnClickListener {
    final /* synthetic */ oj a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ok(oj ojVar) {
        this.a = ojVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a();
    }
}
