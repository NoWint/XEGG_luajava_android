package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class pz implements Runnable {
    final /* synthetic */ py a;
    private final /* synthetic */ int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pz(py pyVar, int i) {
        this.a = pyVar;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.a.setSelection(this.b);
    }
}
