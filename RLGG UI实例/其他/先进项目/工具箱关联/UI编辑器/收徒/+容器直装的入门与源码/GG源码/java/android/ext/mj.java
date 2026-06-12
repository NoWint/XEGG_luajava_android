package android.ext;

import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class mj implements Runnable {
    final /* synthetic */ MainService a;
    private final /* synthetic */ boolean b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mj(MainService mainService, boolean z) {
        this.a = mainService;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.b) {
            this.a.g = false;
        }
        this.a.f = this.b ? this.a.a("script-ui-button", 0, 50, R.drawable.ic_ui_button_24dp, R.drawable.ic_ui_button_24dp) : null;
        this.a.Z.b();
    }
}
