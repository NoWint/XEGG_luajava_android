package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class gb implements Runnable {
    final /* synthetic */ ex a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gb(ex exVar) {
        this.a = exVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.d();
    }
}
