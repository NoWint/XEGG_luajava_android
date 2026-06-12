package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fr implements Runnable {
    final /* synthetic */ ex a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fr(ex exVar) {
        this.a = exVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        i.a(i.c().setCustomTitle(Tools.d((int) R.string.bad_settings)).setMessage(qk.a((int) R.string.freeze_lags)).setPositiveButton(qk.a((int) R.string.fix_it), new fs(this)).setNegativeButton(qk.a((int) R.string.skip), (DialogInterface.OnClickListener) null));
    }
}
