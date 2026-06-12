package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class lj implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        lg.a("AndroidService", "wait 4");
        rx.a().removeCallbacks(this);
        lh.k();
    }
}
