package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class gf implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gf(ex exVar, byte b) {
        this.a = exVar;
        this.b = b;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        this.a.a(this.b, (byte) 1);
        this.a.b(this.b, (byte) 45);
        inOut.b(false);
        MainService.instance.G();
    }
}
