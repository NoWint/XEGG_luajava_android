package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class bu implements Runnable {
    final /* synthetic */ bq a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bu(bq bqVar) {
        this.a = bqVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.c();
    }
}
