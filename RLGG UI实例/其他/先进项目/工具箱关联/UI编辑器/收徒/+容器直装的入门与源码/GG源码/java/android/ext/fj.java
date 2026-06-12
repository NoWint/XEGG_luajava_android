package android.ext;

import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fj implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ int[] b;
    private final /* synthetic */ byte c;
    private final /* synthetic */ int d;
    private final /* synthetic */ int e;
    private final /* synthetic */ long f;
    private final /* synthetic */ long g;
    private final /* synthetic */ long h;
    private final /* synthetic */ long[] i;
    private final /* synthetic */ long[] j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fj(ex exVar, int[] iArr, byte b, int i, int i2, long j, long j2, long j3, long[] jArr, long[] jArr2) {
        this.a = exVar;
        this.b = iArr;
        this.c = b;
        this.d = i;
        this.e = i2;
        this.f = j;
        this.g = j2;
        this.h = j3;
        this.i = jArr;
        this.j = jArr2;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        int length = this.b.length;
        bp bpVar = new bp();
        bpVar.a(qk.a((int) R.string.union));
        bpVar.a(" = ");
        inOut.a(this.c, (byte) 55, 0);
        inOut.a(this.d);
        inOut.a(this.e);
        inOut.a(this.f);
        inOut.a(this.g);
        inOut.a(this.h);
        inOut.a(length);
        for (int i = 0; i < length; i++) {
            this.i[i] = d.c(this.i[i], this.b[i]);
            this.j[i] = d.c(this.j[i], this.b[i]);
            inOut.a(this.b[i]);
            inOut.b(this.i[i]);
            inOut.b(this.j[i]);
            String a = d.a(0L, this.i[i], this.b[i]);
            if ((this.b[i] & 805306368) != 0) {
                a = String.valueOf(a) + '~' + d.a(0L, this.j[i], this.b[i]);
            }
            if ((this.b[i] & 268435456) != 0) {
                a = "≠ " + a;
            }
            if (i != 0) {
                bpVar.a("; ");
            }
            bpVar.a(Tools.a((CharSequence) (String.valueOf(a) + ((Object) d.g(this.b[i]))), d.k(this.b[i])));
        }
        this.a.u();
        bpVar.a(" :");
        if ((this.d & 4194304) != 0) {
            bpVar.a(":");
        }
        bpVar.a(Tools.a("%,d", Integer.valueOf(this.e)));
        MainService.instance.a(bpVar.a());
        ex.b = false;
    }
}
