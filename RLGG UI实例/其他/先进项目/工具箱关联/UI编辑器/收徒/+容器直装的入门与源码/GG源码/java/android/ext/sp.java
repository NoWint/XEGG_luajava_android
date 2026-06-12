package android.ext;

import android.view.View;
import android.view.Window;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sp implements Runnable {
    private final /* synthetic */ Window a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sp(Window window) {
        this.a = window;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            View currentFocus = this.a.getCurrentFocus();
            if (currentFocus == null) {
                currentFocus = this.a.peekDecorView();
            }
            if (currentFocus != null) {
                Tools.e(currentFocus);
            }
        } catch (Throwable th) {
            la.c("hideSoftInputFromWindow", th);
        }
    }
}
