package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class dj implements Runnable {
    final /* synthetic */ dh a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dj(dh dhVar) {
        this.a = dhVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        MainService.instance.k.e();
    }
}
