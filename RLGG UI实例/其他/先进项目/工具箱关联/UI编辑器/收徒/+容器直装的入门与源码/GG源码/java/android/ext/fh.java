package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fh implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ int c;
    private final /* synthetic */ boolean[] d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fh(ex exVar, byte b, int i, boolean[] zArr) {
        this.a = exVar;
        this.b = b;
        this.c = i;
        this.d = zArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 35, 0);
        inOut.a(this.c | 8);
        this.a.a(this.d);
        this.a.u();
    }
}
