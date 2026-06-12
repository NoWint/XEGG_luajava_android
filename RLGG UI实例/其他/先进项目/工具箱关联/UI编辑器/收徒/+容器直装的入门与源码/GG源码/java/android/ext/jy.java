package android.ext;

import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class jy implements Runnable {
    private final /* synthetic */ Throwable a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jy(Throwable th) {
        this.a = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        jz jzVar = new jz(this);
        i.c(i.a(ar.f).setMessage(String.valueOf(Tools.c((int) R.string.reinstall_fail)) + ":\n\n" + la.b(this.a)).setPositiveButton(R.string.more, jzVar).setNegativeButton(R.string.ok, jzVar).setCancelable(false).create());
    }
}
