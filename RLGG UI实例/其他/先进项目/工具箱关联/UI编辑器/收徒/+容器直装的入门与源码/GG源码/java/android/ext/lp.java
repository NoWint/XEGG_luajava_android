package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class lp implements DialogInterface.OnClickListener {
    final /* synthetic */ lo a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lp(lo loVar) {
        this.a = loVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case 0:
                Config.a((int) R.id.config_prevent_unload).d();
                return;
            case 1:
                Config.a((int) R.id.config_ram).d();
                return;
            default:
                return;
        }
    }
}
