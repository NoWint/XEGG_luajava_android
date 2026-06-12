package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class nd implements Runnable {
    final /* synthetic */ MainService a;
    private final /* synthetic */ long b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nd(MainService mainService, long j) {
        this.a = mainService;
        this.b = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (-1024 < this.b && this.b <= 0) {
            i.c(i.c().setMessage(String.valueOf(qk.a((int) R.string.allocate_fail)) + ' ' + (-this.b)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).create());
            return;
        }
        String str = String.valueOf(d.b(this.b, 4)) + 'h';
        ne neVar = new ne(this, str);
        iw.a(str, 1);
        i.c(i.c().setMessage(String.valueOf(Tools.c((int) R.string.allocated)) + ": " + str).setPositiveButton(qk.a((int) R.string.goto1), neVar).setNeutralButton(qk.a((int) R.string.copy), neVar).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).create());
    }
}
