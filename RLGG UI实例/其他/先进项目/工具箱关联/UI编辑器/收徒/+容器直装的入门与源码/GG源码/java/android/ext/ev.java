package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;
import java.io.File;

/* compiled from: src */
/* loaded from: classes.dex */
class ev implements Runnable {
    final /* synthetic */ eu a;
    private final /* synthetic */ File b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ev(eu euVar, File file) {
        this.a = euVar;
        this.b = file;
    }

    @Override // java.lang.Runnable
    public void run() {
        i.a(i.c().setMessage(Tools.a(qk.a((int) R.string.need_fixer), this.b.getAbsolutePath())).setPositiveButton(qk.a((int) R.string.fix_it), new ew(this, this.b)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
    }
}
