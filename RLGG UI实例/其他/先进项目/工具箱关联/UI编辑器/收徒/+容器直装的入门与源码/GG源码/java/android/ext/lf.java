package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class lf implements Runnable {
    final /* synthetic */ le a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lf(le leVar) {
        this.a = leVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        MainService.instance.a((byte) 0, 20, (int[]) null);
    }
}
