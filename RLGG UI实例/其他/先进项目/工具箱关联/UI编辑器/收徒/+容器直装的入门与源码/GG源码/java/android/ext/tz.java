package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class tz implements DialogInterface.OnClickListener {
    private final /* synthetic */ android.fix.j a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public tz(android.fix.j jVar) {
        this.a = jVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        la.a("Un: no");
        ty.a(this.a);
    }
}
