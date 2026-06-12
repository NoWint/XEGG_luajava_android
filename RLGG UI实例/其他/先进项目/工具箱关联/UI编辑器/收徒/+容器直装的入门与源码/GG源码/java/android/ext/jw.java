package android.ext;

import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class jw implements Runnable {
    private final /* synthetic */ String a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jw(String str) {
        this.a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str = null;
        if (jp.e != null && jp.e.d != null) {
            str = jp.e.d.getAbsolutePath();
        }
        i.c(i.a(ar.f).setMessage(String.valueOf(qk.a((int) R.string.no_space)) + '\n' + this.a + '\n' + str).setPositiveButton(R.string.ok, new jx(this)).setCancelable(false).create());
    }
}
