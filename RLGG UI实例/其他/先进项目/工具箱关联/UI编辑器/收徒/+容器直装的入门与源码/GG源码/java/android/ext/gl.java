package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class gl implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte[] b;
    private final /* synthetic */ byte c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gl(ex exVar, byte[] bArr, byte b) {
        this.a = exVar;
        this.b = bArr;
        this.c = b;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        int length = this.b.length;
        inOut.a(this.c, (byte) 48, length + 4);
        inOut.a(length);
        inOut.a(this.b, length);
        this.a.u();
    }
}
