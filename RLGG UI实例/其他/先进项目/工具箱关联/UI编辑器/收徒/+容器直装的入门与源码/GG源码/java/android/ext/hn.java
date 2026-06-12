package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hn implements DialogInterface.OnClickListener {
    final /* synthetic */ hk a;
    private final /* synthetic */ d b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hn(hk hkVar, d dVar) {
        this.a = hkVar;
        this.b = dVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.d = i;
        this.a.a(this.b);
    }
}
