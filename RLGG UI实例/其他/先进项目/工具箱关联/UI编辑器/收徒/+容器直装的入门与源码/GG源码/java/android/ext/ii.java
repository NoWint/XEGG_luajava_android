package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ii implements Runnable {
    final /* synthetic */ FloatPanel a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ii(FloatPanel floatPanel) {
        this.a = floatPanel;
    }

    @Override // java.lang.Runnable
    public void run() {
        la.a(this.a.a("show"));
        if (!this.a.c) {
            this.a.e();
        }
    }
}
