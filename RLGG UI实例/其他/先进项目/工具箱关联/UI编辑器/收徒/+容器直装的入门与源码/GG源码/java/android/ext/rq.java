package android.ext;

import android.view.View;

/* compiled from: src */
/* loaded from: classes.dex */
class rq implements Runnable {
    final /* synthetic */ ShowApp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rq(ShowApp showApp) {
        this.a = showApp;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.a.a(this.a.i)) {
            this.a.i = null;
        }
        MainService mainService = MainService.instance;
        if (mainService != null) {
            View view = mainService.i;
            if (this.a.a(view, this.a.b)) {
                this.a.i = view;
            }
        }
    }
}
