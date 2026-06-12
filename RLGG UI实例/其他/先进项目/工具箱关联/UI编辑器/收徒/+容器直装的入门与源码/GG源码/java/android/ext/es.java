package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class es implements DialogInterface.OnClickListener {
    final /* synthetic */ eo a;
    private final /* synthetic */ String b;
    private final /* synthetic */ DialogInterface.OnClickListener c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public es(eo eoVar, String str, DialogInterface.OnClickListener onClickListener) {
        this.a = eoVar;
        this.b = str;
        this.c = onClickListener;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a(this.b, this.c);
    }
}
