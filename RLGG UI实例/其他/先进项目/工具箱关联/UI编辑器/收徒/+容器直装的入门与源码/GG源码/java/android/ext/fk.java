package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fk implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ long c;
    private final /* synthetic */ long d;
    private final /* synthetic */ int e;
    private final /* synthetic */ long f;
    private final /* synthetic */ long g;
    private final /* synthetic */ long h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fk(ex exVar, byte b, long j, long j2, int i, long j3, long j4, long j5) {
        this.a = exVar;
        this.b = b;
        this.c = j;
        this.d = j2;
        this.e = i;
        this.f = j3;
        this.g = j4;
        this.h = j5;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 63, 0);
        inOut.a(this.c);
        inOut.a(this.d);
        inOut.a(this.e);
        inOut.a(this.f);
        inOut.a(this.g);
        inOut.a(this.h);
        this.a.u();
        ex.b = false;
    }
}
