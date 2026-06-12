package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class no implements DialogInterface.OnClickListener {
    final /* synthetic */ nl a;
    private final /* synthetic */ String b;
    private final /* synthetic */ boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public no(nl nlVar, String str, boolean z) {
        this.a = nlVar;
        this.b = str;
        this.c = z;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        rx.b(new np(this, this.b, this.c));
    }
}
