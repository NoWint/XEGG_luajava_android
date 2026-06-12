package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fw implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ byte c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fw(ex exVar, byte b, byte b2) {
        this.a = exVar;
        this.b = b;
        this.c = b2;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 53, 0);
        inOut.a(this.c);
        this.a.u();
    }
}
