package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class dh implements DialogInterface.OnClickListener {
    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MainService mainService = MainService.instance;
        try {
            mainService.g();
            rx.a().postDelayed(new di(this), 8000L);
            mainService.g(true);
            mainService.l.f();
            rx.a().postDelayed(new dj(this), 300L);
        } catch (Throwable th) {
            la.c("Failed take screenshot", th);
            try {
                mainService.l.d();
            } catch (Throwable th2) {
                la.c("Failed restore after take screenshot", th2);
            }
        }
    }
}
