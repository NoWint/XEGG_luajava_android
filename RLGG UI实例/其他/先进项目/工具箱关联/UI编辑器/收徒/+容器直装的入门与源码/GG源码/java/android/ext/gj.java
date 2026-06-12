package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class gj implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ long c;
    private final /* synthetic */ int d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gj(ex exVar, byte b, long j, int i) {
        this.a = exVar;
        this.b = b;
        this.c = j;
        this.d = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 50, 0);
        inOut.a(this.c);
        inOut.a(this.d);
        inOut.a((byte) 0);
        this.a.u();
    }
}
