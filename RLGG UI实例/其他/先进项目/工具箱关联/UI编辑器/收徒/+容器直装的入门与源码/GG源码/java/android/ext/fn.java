package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fn implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ int c;
    private final /* synthetic */ long d;
    private final /* synthetic */ long e;
    private final /* synthetic */ long f;
    private final /* synthetic */ byte[] g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fn(ex exVar, byte b, int i, long j, long j2, long j3, byte[] bArr) {
        this.a = exVar;
        this.b = b;
        this.c = i;
        this.d = j;
        this.e = j2;
        this.f = j3;
        this.g = bArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 34, 0);
        inOut.a(this.c);
        inOut.a(this.d);
        inOut.a(this.e);
        inOut.a(this.f);
        inOut.a(this.g.length);
        inOut.a(this.g, this.g.length);
        this.a.u();
        ex.b = false;
    }
}
