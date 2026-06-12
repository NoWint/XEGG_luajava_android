package android.ext;

import android.content.DialogInterface;
import android.os.Handler;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class bn implements Runnable {
    final /* synthetic */ bl a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bn(bl blVar) {
        this.a = blVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.k = -1L;
        this.a.a = i.c().setView(Tools.d(this.a.j)).setCancelable(false).setPositiveButton(R.string.hide, (DialogInterface.OnClickListener) null).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).create();
        this.a.a("", -1L, 1L, 0, 1, 0L, "");
        i.a(this.a.a, this.a);
        if (MainService.instance.p != null) {
            Handler a = rx.a();
            a.removeCallbacks(this.a.n);
            a.postDelayed(this.a.n, 100L);
        }
    }
}
