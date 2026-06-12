package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fe implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ int c;
    private final /* synthetic */ boolean[] d;
    private final /* synthetic */ long e;
    private final /* synthetic */ long f;
    private final /* synthetic */ double g;
    private final /* synthetic */ double h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fe(ex exVar, byte b, int i, boolean[] zArr, long j, long j2, double d, double d2) {
        this.a = exVar;
        this.b = b;
        this.c = i;
        this.d = zArr;
        this.e = j;
        this.f = j2;
        this.g = d;
        this.h = d2;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 35, 0);
        inOut.a(this.c | 17);
        this.a.a(this.d);
        inOut.b(this.e);
        inOut.b(this.f);
        inOut.b(Double.doubleToRawLongBits(this.g));
        inOut.b(Double.doubleToRawLongBits(this.h));
        this.a.u();
    }
}
