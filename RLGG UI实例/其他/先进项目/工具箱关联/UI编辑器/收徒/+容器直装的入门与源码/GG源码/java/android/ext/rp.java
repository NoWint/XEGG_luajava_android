package android.ext;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class rp implements Runnable {
    final /* synthetic */ ShowApp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rp(ShowApp showApp) {
        this.a = showApp;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view = this.a.g;
        if (view != null) {
            if (MainService.instance.e == null || MainService.instance.p == null) {
                this.a.b(view);
            }
        }
    }
}
