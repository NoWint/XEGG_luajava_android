package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fu implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ gm b;
    private final /* synthetic */ byte c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fu(ex exVar, gm gmVar, byte b) {
        this.a = exVar;
        this.b = gmVar;
        this.c = b;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        int length = this.b.a.length;
        int i = 0;
        while (i < length) {
            int i2 = length - i;
            if (i2 > 100000000) {
                i2 = 100000000;
            }
            inOut.a(this.c, (byte) 33, (InOut.b + 4) * i2);
            inOut.a(i2);
            int[] iArr = this.b.b;
            long[] jArr = this.b.a;
            int i3 = i + i2;
            for (int i4 = i; i4 < i3; i4++) {
                inOut.a(iArr[i4]);
                inOut.a(jArr[i4]);
            }
            this.a.u();
            i += i2;
        }
    }
}
