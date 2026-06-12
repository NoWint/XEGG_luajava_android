package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class nx implements DialogInterface.OnClickListener {
    final /* synthetic */ nw a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nx(nw nwVar, String str) {
        this.a = nwVar;
        this.b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Tools.a((int) R.string.reinstall_started, 0);
        new hx(new ny(this, this.b), "FixLibs").start();
    }
}
