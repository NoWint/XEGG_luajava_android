package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class rn implements Runnable {
    final /* synthetic */ ShowApp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rn(ShowApp showApp) {
        this.a = showApp;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.g == null) {
            this.a.b();
            rx.a().postDelayed(this.a.j, 2000L);
        }
    }
}
