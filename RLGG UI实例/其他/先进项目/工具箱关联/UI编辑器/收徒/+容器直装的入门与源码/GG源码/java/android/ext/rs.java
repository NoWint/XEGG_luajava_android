package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class rs implements Runnable {
    final /* synthetic */ ShowApp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rs(ShowApp showApp) {
        this.a = showApp;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.f && this.a.a(this.a)) {
            this.a.f = false;
        }
        if (this.a.a(this.a, this.a.a)) {
            this.a.f = true;
        }
    }
}
