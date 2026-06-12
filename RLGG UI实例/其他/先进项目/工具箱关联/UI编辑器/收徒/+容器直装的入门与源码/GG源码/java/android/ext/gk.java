package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class gk implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ String b;
    private final /* synthetic */ String c;
    private final /* synthetic */ byte d;
    private final /* synthetic */ int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gk(ex exVar, String str, String str2, byte b, int i) {
        this.a = exVar;
        this.b = str;
        this.c = str2;
        this.d = b;
        this.e = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        byte[] bytes = this.b.getBytes();
        int length = bytes.length;
        if (length > 255) {
            length = 255;
        }
        byte[] bytes2 = this.c == null ? android.c.b.c : this.c.getBytes();
        int length2 = bytes2.length;
        int i = length2 <= 255 ? length2 : 255;
        inOut.a(this.d, (byte) 37, 0);
        inOut.a(this.e);
        inOut.a((byte) length);
        inOut.a(bytes, length);
        inOut.a((byte) i);
        inOut.a(bytes2, i);
        this.a.u();
    }
}
