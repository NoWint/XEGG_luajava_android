package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class bo implements Runnable {
    final /* synthetic */ bl a;
    private final /* synthetic */ CharSequence b;
    private final /* synthetic */ long c;
    private final /* synthetic */ long d;
    private final /* synthetic */ int e;
    private final /* synthetic */ int f;
    private final /* synthetic */ long g;
    private final /* synthetic */ String h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bo(bl blVar, CharSequence charSequence, long j, long j2, int i, int i2, long j3, String str) {
        this.a = blVar;
        this.b = charSequence;
        this.c = j;
        this.d = j2;
        this.e = i;
        this.f = i2;
        this.g = j3;
        this.h = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.b(this.b, this.c, this.d, this.e, this.f, this.g, this.h);
    }
}
