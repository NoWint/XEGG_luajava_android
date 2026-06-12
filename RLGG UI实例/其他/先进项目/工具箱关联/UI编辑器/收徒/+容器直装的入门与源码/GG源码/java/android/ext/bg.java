package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class bg implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        try {
            if (MainService.instance != null) {
                MainService.instance.t();
            }
        } catch (Throwable th) {
            la.b("MainService onCreate fail", th);
            throw th;
        }
    }
}
