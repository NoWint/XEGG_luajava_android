package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fq implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ qx[] b;
    private final /* synthetic */ byte c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fq(ex exVar, qx[] qxVarArr, byte b) {
        this.a = exVar;
        this.b = qxVarArr;
        this.c = b;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        int length = this.b.length;
        int i = 0;
        while (i < length) {
            int i2 = length - i;
            if (i2 > 100000000) {
                i2 = 100000000;
            }
            inOut.a(this.c, (byte) 40, (InOut.b + 29) * i2);
            int i3 = i + i2;
            for (int i4 = i; i4 < i3; i4++) {
                qx qxVar = this.b[i4];
                if (qxVar.d != 0) {
                    inOut.a(qxVar.d);
                    inOut.a(qxVar.b);
                    inOut.b(qxVar.c);
                    inOut.a(qxVar.g);
                    inOut.b(qxVar.h);
                    inOut.b(qxVar.i);
                }
            }
            inOut.a(0);
            this.a.u();
            i += i2;
        }
    }
}
