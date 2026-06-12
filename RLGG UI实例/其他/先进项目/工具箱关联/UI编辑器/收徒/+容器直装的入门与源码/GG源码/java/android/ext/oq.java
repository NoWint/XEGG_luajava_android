package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class oq implements DialogInterface.OnClickListener {
    final /* synthetic */ op a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oq(op opVar) {
        this.a = opVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a = i;
        this.a.a();
    }
}
