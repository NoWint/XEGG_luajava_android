package android.ext;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class te implements Runnable {
    private final /* synthetic */ View a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public te(View view) {
        this.a = view;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            MainService.instance.n.removeView(this.a);
        } catch (Throwable th) {
            la.c("Failed removeView: " + this.a, th);
        }
    }
}
