package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hm implements DialogInterface.OnClickListener {
    final /* synthetic */ hk a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hm(hk hkVar) {
        this.a = hkVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b = i;
        this.a.b(null);
    }
}
