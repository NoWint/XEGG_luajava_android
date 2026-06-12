package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fy implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ byte[] c;
    private final /* synthetic */ String d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fy(ex exVar, byte b, byte[] bArr, String str) {
        this.a = exVar;
        this.b = b;
        this.c = bArr;
        this.d = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 54, 0);
        inOut.a(Config.h);
        inOut.a(Config.A);
        inOut.b(Config.j);
        inOut.a(Config.m);
        inOut.a(Config.i);
        inOut.a(this.c.length);
        inOut.a(this.c, this.c.length);
        long d = inOut.d();
        if (d != this.a.m) {
            this.a.m = d;
            this.a.u();
            la.a("Sended config: " + Config.h + ' ' + Integer.toBinaryString(Config.A) + ' ' + Long.toBinaryString(Config.j) + ' ' + Config.m + ' ' + Config.i + ' ' + this.d + "; " + this.c.length);
        }
    }
}
