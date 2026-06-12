package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class lo implements DialogInterface.OnClickListener {
    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        i.a(i.c().setCustomTitle(Tools.d((int) R.string.fix_it)).setItems(new String[]{Config.a((int) R.id.config_prevent_unload).toString(), Config.a((int) R.id.config_ram).toString()}, new lp(this)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
    }
}
