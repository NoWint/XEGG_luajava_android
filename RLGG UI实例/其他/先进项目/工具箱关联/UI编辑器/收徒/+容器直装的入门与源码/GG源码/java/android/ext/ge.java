package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class ge implements DialogInterface.OnClickListener {
    final /* synthetic */ gd a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ge(gd gdVar) {
        this.a = gdVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (Config.vSpaceReal && !Config.C && (Config.B & 512) != 0) {
            Config.a((int) R.id.config_vspace_root).d();
        } else {
            ConfigListAdapter.b(R.string.work_without_root);
        }
    }
}
