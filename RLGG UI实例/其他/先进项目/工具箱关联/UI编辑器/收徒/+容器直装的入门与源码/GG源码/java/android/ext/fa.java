package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class fa implements Runnable {
    final /* synthetic */ ey a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fa(ey eyVar) {
        this.a = eyVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        ex exVar;
        exVar = this.a.a;
        exVar.d();
    }
}
