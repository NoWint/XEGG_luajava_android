package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class gh implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ int c;
    private final /* synthetic */ int d;
    private final /* synthetic */ int e;
    private final /* synthetic */ long f;
    private final /* synthetic */ long g;
    private final /* synthetic */ long h;
    private final /* synthetic */ int i;
    private final /* synthetic */ long j;
    private final /* synthetic */ int k;
    private final /* synthetic */ int l;
    private final /* synthetic */ int m;
    private final /* synthetic */ double n;
    private final /* synthetic */ int o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gh(ex exVar, byte b, int i, int i2, int i3, long j, long j2, long j3, int i4, long j4, int i5, int i6, int i7, double d, int i8) {
        this.a = exVar;
        this.b = b;
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = j;
        this.g = j2;
        this.h = j3;
        this.i = i4;
        this.j = j4;
        this.k = i5;
        this.l = i6;
        this.m = i7;
        this.n = d;
        this.o = i8;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 39, 0);
        inOut.a(this.c);
        inOut.a(this.d);
        inOut.a(this.e);
        inOut.b(this.f);
        inOut.b(this.g);
        inOut.b(this.h);
        inOut.a(this.i);
        inOut.b(this.j);
        inOut.a(this.k);
        inOut.a(this.l);
        inOut.a(this.m);
        inOut.b(Double.doubleToRawLongBits(this.n));
        inOut.a(this.o);
        this.a.u();
    }
}
