package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fp implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ Object[] b;
    private final /* synthetic */ byte c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fp(ex exVar, Object[] objArr, byte b) {
        this.a = exVar;
        this.b = objArr;
        this.c = b;
    }

    @Override // java.lang.Runnable
    public void run() {
        d dVar;
        int i;
        InOut inOut = this.a.e;
        int length = this.b.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = length - i2;
            int i4 = i3 > 100000000 ? 100000000 : i3;
            inOut.a(this.c, (byte) 43, (InOut.b + 16) * i4);
            inOut.a(i4);
            int i5 = i2 + i4;
            for (int i6 = i2; i6 < i5; i6++) {
                Object obj = this.b[i6];
                if (obj instanceof gn) {
                    d dVar2 = ((gn) obj).a;
                    i = ((gn) obj).b;
                    dVar = dVar2;
                } else {
                    dVar = (d) obj;
                    i = 0;
                }
                int i7 = dVar.d;
                if (i7 != 0) {
                    inOut.a(i7);
                    inOut.a(dVar.b);
                    inOut.b(dVar.c);
                    inOut.a(i);
                }
            }
            inOut.a(0);
            this.a.u();
            i2 += i4;
        }
    }
}
