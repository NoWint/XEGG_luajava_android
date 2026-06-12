package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class dg implements DialogInterface.OnClickListener {
    final /* synthetic */ ConfigListAdapter a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dg(ConfigListAdapter configListAdapter) {
        this.a = configListAdapter;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        iw.d();
    }
}
