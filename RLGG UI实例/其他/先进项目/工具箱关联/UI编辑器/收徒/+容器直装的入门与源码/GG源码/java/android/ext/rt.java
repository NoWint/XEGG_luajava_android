package android.ext;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class rt implements Runnable {
    final /* synthetic */ ShowApp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rt(ShowApp showApp) {
        this.a = showApp;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.e && this.a.a(this.a.c)) {
            this.a.e = false;
        }
        if (this.a.a(this.a.c, this.a.d)) {
            this.a.e = true;
        }
    }
}
