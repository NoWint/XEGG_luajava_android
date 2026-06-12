package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
class ih implements Runnable {
    final /* synthetic */ ig a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ih(ig igVar) {
        this.a = igVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.a();
    }
}
