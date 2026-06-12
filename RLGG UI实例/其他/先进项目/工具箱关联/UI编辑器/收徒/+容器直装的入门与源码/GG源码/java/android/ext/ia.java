package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ia implements DialogInterface.OnClickListener {
    final /* synthetic */ hz a;
    private final /* synthetic */ int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ia(hz hzVar, int i) {
        this.a = hzVar;
        this.b = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MainService.instance.p();
        this.a.onClick(null, this.b);
    }
}
