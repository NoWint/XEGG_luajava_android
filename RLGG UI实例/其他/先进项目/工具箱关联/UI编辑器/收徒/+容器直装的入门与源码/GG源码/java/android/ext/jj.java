package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class jj implements Runnable {
    final /* synthetic */ HotPoint a;
    private final /* synthetic */ byte b;
    private final /* synthetic */ long c;
    private final /* synthetic */ long d;
    private final /* synthetic */ int e;
    private final /* synthetic */ int f;
    private final /* synthetic */ String g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jj(HotPoint hotPoint, byte b, long j, long j2, int i, int i2, String str) {
        this.a = hotPoint;
        this.b = b;
        this.c = j;
        this.d = j2;
        this.e = i;
        this.f = i2;
        this.g = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.b(this.b, this.c, this.d, this.e, this.f, this.g);
    }
}
