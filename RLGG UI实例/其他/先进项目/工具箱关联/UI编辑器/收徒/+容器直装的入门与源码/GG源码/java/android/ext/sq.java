package android.ext;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sq implements Runnable {
    private final /* synthetic */ View a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sq(View view) {
        this.a = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (Tools.c == null) {
                Tools.c = (InputMethodManager) MainService.context.getSystemService("input_method");
            }
            if (this.a != null) {
                Tools.c.hideSoftInputFromWindow(this.a.getWindowToken(), 0);
            }
        } catch (Throwable th) {
            la.c("hideSoftInputFromWindow", th);
        }
    }
}
