package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class rr implements Runnable {
    final /* synthetic */ ShowApp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rr(ShowApp showApp) {
        this.a = showApp;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.a(this.a.i)) {
            this.a.i = null;
        }
    }
}
