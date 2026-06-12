package android.fix;

import android.content.Context;
import android.content.Intent;
import android.ext.la;

/* compiled from: src */
/* loaded from: classes.dex */
class f implements Runnable {
    private final /* synthetic */ Context a;
    private final /* synthetic */ Intent b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(Context context, Intent intent) {
        this.a = context;
        this.b = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.a.startActivity(this.b);
        } catch (Throwable th) {
            la.b("Failed startActivity from UI thread: " + this.b, th);
        }
    }
}
