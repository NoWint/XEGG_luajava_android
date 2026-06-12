package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class dd implements DialogInterface.OnClickListener {
    final /* synthetic */ ConfigListAdapter a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dd(ConfigListAdapter configListAdapter) {
        this.a = configListAdapter;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Config.c = 0L;
        Config.c();
    }
}
