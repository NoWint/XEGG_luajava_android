package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class gd implements Runnable {
    final /* synthetic */ gc a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gd(gc gcVar) {
        this.a = gcVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            AlertDialog create = i.c().setCustomTitle(Tools.d((int) R.string.failed_load_daemon)).setMessage(String.valueOf(qk.a((int) R.string.is_device_rooted)) + "\n\n" + qk.a((int) R.string.must_be_root)).setPositiveButton(qk.a((int) R.string.fix_it), new ge(this)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).create();
            i.c(create);
            Tools.a(create);
        } catch (Throwable th) {
            la.a(th);
        }
    }
}
