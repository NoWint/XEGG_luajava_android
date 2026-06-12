package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class og implements DialogInterface.OnClickListener {
    final /* synthetic */ of a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public og(of ofVar) {
        this.a = ofVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a = i;
        this.a.b();
    }
}
