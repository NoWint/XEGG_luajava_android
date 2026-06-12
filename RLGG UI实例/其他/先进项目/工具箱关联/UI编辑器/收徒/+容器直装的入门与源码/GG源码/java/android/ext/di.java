package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class di implements Runnable {
    final /* synthetic */ dh a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public di(dh dhVar) {
        this.a = dhVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            MainService mainService = MainService.instance;
            mainService.g();
            mainService.l.d();
            mainService.g(false);
        } catch (Throwable th) {
            la.c("Failed restore after take screenshot", th);
        }
    }
}
