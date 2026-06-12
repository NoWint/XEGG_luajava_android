package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
public class to implements Runnable {
    final Runnable a;

    public static Runnable a(Runnable runnable) {
        if (!(runnable instanceof to)) {
            return new to(runnable);
        }
        return runnable;
    }

    public to(Runnable runnable) {
        this.a = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.a.run();
        } catch (Throwable th) {
            la.a(th);
        }
    }
}
