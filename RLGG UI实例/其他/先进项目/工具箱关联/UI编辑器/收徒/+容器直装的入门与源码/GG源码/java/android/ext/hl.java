package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hl implements DialogInterface.OnClickListener {
    final /* synthetic */ hk a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hl(hk hkVar) {
        this.a = hkVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a = i;
        this.a.b(null);
    }
}
