package android.ext;

import android.widget.Toast;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sm implements Runnable {
    private final /* synthetic */ String a;
    private final /* synthetic */ int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sm(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            sf.a(Toast.makeText(sf.b(), qk.a(this.a == null ? "null" : this.a), this.b));
        } catch (Throwable th) {
            la.b("Toast fail", th);
        }
    }
}
