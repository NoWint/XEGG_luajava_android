package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class fs implements DialogInterface.OnClickListener {
    final /* synthetic */ fr a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fs(fr frVar) {
        this.a = frVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Config.a((int) R.id.config_hide_from_game).d = 0;
        Config.c();
    }
}
