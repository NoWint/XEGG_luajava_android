package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class oz implements DialogInterface.OnMultiChoiceClickListener {
    final /* synthetic */ ow a;
    private final /* synthetic */ boolean[] b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oz(ow owVar, boolean[] zArr) {
        this.a = owVar;
        this.b = zArr;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public void onClick(DialogInterface dialogInterface, int i, boolean z) {
        this.b[i] = z;
    }
}
