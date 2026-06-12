package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fl implements DialogInterface.OnClickListener {
    final /* synthetic */ ex a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fl(ex exVar) {
        this.a = exVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ConfigListAdapter.j();
    }
}
