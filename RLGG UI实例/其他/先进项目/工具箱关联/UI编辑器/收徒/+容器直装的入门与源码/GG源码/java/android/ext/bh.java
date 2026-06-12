package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class bh implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        try {
            if (MainService.instance != null) {
                MainService.instance.O();
            }
        } catch (Throwable th) {
            la.b("MainService onDestroy fail", th);
        }
    }
}
