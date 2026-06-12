package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class dm implements DialogInterface.OnMultiChoiceClickListener {
    final /* synthetic */ dk a;
    private final /* synthetic */ boolean[] b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dm(dk dkVar, boolean[] zArr) {
        this.a = dkVar;
        this.b = zArr;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public void onClick(DialogInterface dialogInterface, int i, boolean z) {
        this.b[i] = z;
    }
}
