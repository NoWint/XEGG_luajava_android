package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class lu implements Runnable {
    final /* synthetic */ lr a;
    private final /* synthetic */ DialogInterface.OnClickListener b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lu(lr lrVar, DialogInterface.OnClickListener onClickListener) {
        this.a = lrVar;
        this.b = onClickListener;
    }

    @Override // java.lang.Runnable
    public void run() {
        i.a(i.c().setMessage(qk.a((int) R.string.improve_translation_)).setPositiveButton(qk.a((int) R.string.site), this.b).setNegativeButton(qk.a((int) R.string.skip), this.b));
    }
}
