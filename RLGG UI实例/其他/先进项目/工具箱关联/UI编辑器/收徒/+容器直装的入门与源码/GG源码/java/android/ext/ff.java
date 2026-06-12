package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ff implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ boolean[] c;
    private final /* synthetic */ int d;
    private final /* synthetic */ int e;
    private final /* synthetic */ long f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ff(ex exVar, byte b, boolean[] zArr, int i, int i2, long j) {
        this.a = exVar;
        this.b = b;
        this.c = zArr;
        this.d = i;
        this.e = i2;
        this.f = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 35, 0);
        inOut.a(16);
        this.a.a(this.c);
        inOut.a(this.d);
        inOut.a(this.e);
        inOut.b(this.f);
        this.a.u();
    }
}
