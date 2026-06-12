package android.ext;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ro implements Runnable {
    final /* synthetic */ ShowApp a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ro(ShowApp showApp) {
        this.a = showApp;
    }

    @Override // java.lang.Runnable
    public void run() {
        View view;
        rx.a().removeCallbacks(this.a.j);
        this.a.b(this.a.g);
        MainService mainService = MainService.instance;
        if (mainService != null && (view = mainService.e) != null) {
            View view2 = mainService.f;
            if (view2 != null && MainService.instance.p != null && this.a.a(view2, this.a.b)) {
                this.a.h = view2;
            }
            if (this.a.a(view, this.a.b)) {
                this.a.g = view;
            }
        }
    }
}
