package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ga implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ byte c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ga(ex exVar, byte b, byte b2) {
        this.a = exVar;
        this.b = b;
        this.c = b2;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.e.a(this.b, this.c, 0);
        this.a.u();
    }
}
