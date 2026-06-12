package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class qq implements DialogInterface.OnClickListener {
    final /* synthetic */ qp a;
    private final /* synthetic */ int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qq(qp qpVar, int i) {
        this.a = qpVar;
        this.b = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MainService.instance.q();
        this.a.onClick(null, this.b);
    }
}
