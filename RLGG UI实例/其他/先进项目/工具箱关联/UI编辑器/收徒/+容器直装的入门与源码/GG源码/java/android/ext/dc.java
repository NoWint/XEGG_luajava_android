package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class dc implements Runnable {
    final /* synthetic */ db a;
    private final /* synthetic */ StringBuilder b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dc(db dbVar, StringBuilder sb) {
        this.a = dbVar;
        this.b = sb;
    }

    @Override // java.lang.Runnable
    public void run() {
        Tools.a(i.c(i.c().setCustomTitle(Tools.d((int) R.string.change_log)).setMessage(this.b.toString()).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).create()));
    }
}
