package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class dq implements cu {
    final /* synthetic */ ConfigListAdapter a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dq(ConfigListAdapter configListAdapter) {
        this.a = configListAdapter;
    }

    @Override // android.ext.cu
    public int a(DialogInterface dialogInterface, int i) {
        if (i == 1 && !InternalKeyboard.c()) {
            MainService.H();
            return 0;
        }
        return i;
    }
}
