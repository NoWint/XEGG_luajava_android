package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fd implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ long c;
    private final /* synthetic */ long d;
    private final /* synthetic */ int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fd(ex exVar, byte b, long j, long j2, int i) {
        this.a = exVar;
        this.b = b;
        this.c = j;
        this.d = j2;
        this.e = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 62, 0);
        inOut.a(this.c);
        inOut.a(this.d);
        inOut.a(this.e);
        this.a.u();
    }
}
