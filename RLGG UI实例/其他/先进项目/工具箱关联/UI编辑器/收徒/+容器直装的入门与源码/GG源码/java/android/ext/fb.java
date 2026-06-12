package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fb implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ int c;
    private final /* synthetic */ long d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fb(ex exVar, byte b, int i, long j) {
        this.a = exVar;
        this.b = b;
        this.c = i;
        this.d = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 32, 0);
        inOut.a(this.c);
        inOut.a(this.d);
        this.a.u();
    }
}
