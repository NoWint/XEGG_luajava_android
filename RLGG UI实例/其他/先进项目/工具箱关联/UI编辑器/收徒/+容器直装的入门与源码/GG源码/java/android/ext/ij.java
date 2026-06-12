package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ij implements Runnable {
    final /* synthetic */ FloatPanel a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ij(FloatPanel floatPanel) {
        this.a = floatPanel;
    }

    @Override // java.lang.Runnable
    public void run() {
        la.a(this.a.a("hide"));
        if (this.a.b) {
            this.a.b = false;
            this.a.g();
        }
    }
}
