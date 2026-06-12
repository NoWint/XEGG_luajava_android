package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class qy implements DialogInterface.OnClickListener {
    final /* synthetic */ SavedListAdapter a;
    private final /* synthetic */ qx b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qy(SavedListAdapter savedListAdapter, qx qxVar) {
        this.a = savedListAdapter;
        this.b = qxVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.b(this.b);
    }
}
