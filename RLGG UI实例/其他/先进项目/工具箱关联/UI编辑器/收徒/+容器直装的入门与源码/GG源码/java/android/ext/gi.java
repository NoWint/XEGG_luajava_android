package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class gi implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ int[] b;
    private final /* synthetic */ byte c;
    private final /* synthetic */ long[] d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gi(ex exVar, int[] iArr, byte b, long[] jArr) {
        this.a = exVar;
        this.b = iArr;
        this.c = b;
        this.d = jArr;
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
            inOut.a(this.c, (byte) 36, (InOut.b + 4) * i2);
            inOut.a(i2);
            int i3 = i + i2;
            for (int i4 = i; i4 < i3; i4++) {
                int i5 = this.b[i4];
                if (i5 != 0) {
                    inOut.a(i5);
                    inOut.a(this.d[i4]);
                }
            }
            inOut.a(0);
            this.a.u();
            i += i2;
        }
    }
}
