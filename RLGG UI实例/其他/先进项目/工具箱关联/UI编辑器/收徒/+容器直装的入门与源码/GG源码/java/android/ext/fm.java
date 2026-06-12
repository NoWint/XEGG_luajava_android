package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fm implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ short c;
    private final /* synthetic */ int d;
    private final /* synthetic */ long e;
    private final /* synthetic */ long f;
    private final /* synthetic */ long g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fm(ex exVar, byte b, short s, int i, long j, long j2, long j3) {
        this.a = exVar;
        this.b = b;
        this.c = s;
        this.d = i;
        this.e = j;
        this.f = j2;
        this.g = j3;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 64, 0);
        inOut.a((int) this.c);
        inOut.a(this.d);
        inOut.a(this.e);
        inOut.a(this.f);
        inOut.a(this.g);
        this.a.u();
        ex.b = false;
    }
}
