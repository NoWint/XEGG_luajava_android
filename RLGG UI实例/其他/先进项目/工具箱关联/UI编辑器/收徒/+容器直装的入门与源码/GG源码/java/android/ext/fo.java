package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fo implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ long c;
    private final /* synthetic */ long d;
    private final /* synthetic */ int e;
    private final /* synthetic */ int f;
    private final /* synthetic */ long g;
    private final /* synthetic */ long h;
    private final /* synthetic */ long i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fo(ex exVar, byte b, long j, long j2, int i, int i2, long j3, long j4, long j5) {
        this.a = exVar;
        this.b = b;
        this.c = j;
        this.d = j2;
        this.e = i;
        this.f = i2;
        this.g = j3;
        this.h = j4;
        this.i = j5;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 38, 0);
        inOut.b(this.c);
        inOut.b(this.d);
        inOut.a(this.e);
        inOut.a(this.f);
        inOut.a(this.g);
        inOut.a(this.h);
        inOut.a(this.i);
        this.a.u();
        ex.b = (this.f & Integer.MIN_VALUE) != 0;
    }
}
