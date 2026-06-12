package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class rm implements Runnable {
    final /* synthetic */ ShowApp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rm(ShowApp showApp) {
        this.a = showApp;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.c();
    }
}
