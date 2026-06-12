package android.ext;

import android.view.View;
import android.view.WindowManager;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class bs implements Runnable {
    final /* synthetic */ bq a;
    private final /* synthetic */ View b;
    private final /* synthetic */ WindowManager.LayoutParams c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bs(bq bqVar, View view, WindowManager.LayoutParams layoutParams) {
        this.a = bqVar;
        this.b = view;
        this.c = layoutParams;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Tools.b(this.b, this.c);
        } catch (Throwable th) {
            la.c("Failed show test view(" + this.c.type + ", " + this.c.flags + "): " + this.b + "; " + this.c, th);
        }
        synchronized (this) {
            notify();
        }
    }
}
