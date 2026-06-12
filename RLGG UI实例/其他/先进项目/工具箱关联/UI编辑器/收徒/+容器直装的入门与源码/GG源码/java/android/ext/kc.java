package android.ext;

import android.app.AlertDialog;
import android.content.Intent;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class kc implements Runnable {
    private final /* synthetic */ int a;
    private final /* synthetic */ String b;
    private final /* synthetic */ int c;
    private final /* synthetic */ Intent[] d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kc(int i, String str, int i2, Intent[] intentArr) {
        this.a = i;
        this.b = str;
        this.c = i2;
        this.d = intentArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        kd kdVar = new kd(this, this.c, this.d);
        jp.e.f();
        AlertDialog create = i.a(ar.f).setMessage(String.valueOf(jp.l) + ": [" + this.a + "] " + this.b).setPositiveButton(R.string.yes, kdVar).setNegativeButton(R.string.no, kdVar).setCancelable(false).create();
        i.c(create);
        jp.e.f = create;
    }
}
