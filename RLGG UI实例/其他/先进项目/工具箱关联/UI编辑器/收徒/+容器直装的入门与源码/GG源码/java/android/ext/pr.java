package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class pr implements Runnable {
    final /* synthetic */ OffsetCalculator a;
    private final /* synthetic */ long b;
    private final /* synthetic */ long c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pr(OffsetCalculator offsetCalculator, long j, long j2) {
        this.a = offsetCalculator;
        this.b = j;
        this.c = j2;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.a.a(this.b, this.c, false);
        } catch (Throwable th) {
            la.b("Failed update value: " + this.b + ' ' + this.c, th);
        }
    }
}
