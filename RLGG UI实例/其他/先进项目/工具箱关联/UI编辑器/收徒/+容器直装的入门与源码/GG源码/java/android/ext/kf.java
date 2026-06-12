package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class kf implements DialogInterface.OnClickListener {
    final /* synthetic */ ke a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kf(ke keVar) {
        this.a = keVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        jp.a(true);
    }
}
