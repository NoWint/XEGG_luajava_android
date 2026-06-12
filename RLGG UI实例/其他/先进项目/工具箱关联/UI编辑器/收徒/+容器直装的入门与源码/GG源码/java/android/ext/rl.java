package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class rl implements Runnable {
    final /* synthetic */ ShowApp a;
    private final /* synthetic */ boolean b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rl(ShowApp showApp, boolean z) {
        this.a = showApp;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.a(this.a)) {
            this.a.f = false;
        }
        if (this.b || !this.a.a(this.a.h)) {
            return;
        }
        this.a.h = null;
    }
}
