package android.ext;

import android.view.View;
import android.view.WindowManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class td implements Runnable {
    private final /* synthetic */ boolean a;
    private final /* synthetic */ WindowManager.LayoutParams b;
    private final /* synthetic */ View c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public td(boolean z, WindowManager.LayoutParams layoutParams, View view) {
        this.a = z;
        this.b = layoutParams;
        this.c = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        Tools.a();
        try {
            if (this.a) {
                MainService.instance.n.addView(this.c, this.b);
            } else {
                MainService.instance.n.updateViewLayout(this.c, this.b);
            }
        } catch (WindowManager.BadTokenException e) {
            String message = e.getMessage();
            if (rv.a && message != null && message.contains("permission denied") && this.b.type != rv.b()) {
                int i = this.b.type;
                this.b.type = rv.b();
                try {
                    if (this.a) {
                        MainService.instance.n.addView(this.c, this.b);
                    } else {
                        MainService.instance.n.updateViewLayout(this.c, this.b);
                    }
                } catch (WindowManager.BadTokenException e2) {
                    this.b.type = i;
                    throw e2;
                }
            } else {
                throw e;
            }
        } catch (IllegalArgumentException e3) {
            la.b("Fail", e3);
        } catch (NullPointerException e4) {
            la.a(e4);
        } catch (Throwable th) {
            la.b("Fail", th);
        }
        if (this.a) {
            Tools.l(this.c);
        }
    }
}
