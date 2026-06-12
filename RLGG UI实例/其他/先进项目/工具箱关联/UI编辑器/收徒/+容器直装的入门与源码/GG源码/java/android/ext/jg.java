package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class jg implements Runnable {
    final /* synthetic */ HotPoint a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jg(HotPoint hotPoint) {
        this.a = hotPoint;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.k();
        Tools.a(this.a.g, 0.0f);
    }
}
