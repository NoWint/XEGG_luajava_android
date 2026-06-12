package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class li implements Runnable {
    private boolean a = false;

    @Override // java.lang.Runnable
    public void run() {
        if (!this.a) {
            this.a = true;
            lh.a();
        }
    }
}
