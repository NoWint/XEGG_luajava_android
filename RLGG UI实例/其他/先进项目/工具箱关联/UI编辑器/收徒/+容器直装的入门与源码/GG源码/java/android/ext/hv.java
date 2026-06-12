package android.ext;

import android.os.Looper;
import android.widget.Toast;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hv extends Thread {
    final /* synthetic */ ho a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hv(ho hoVar, String str, String str2) {
        super(str);
        this.a = hoVar;
        this.b = str2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            Looper.prepare();
            sf.a(Toast.makeText(sf.b(), this.b, 1));
            Looper.loop();
        } catch (Throwable th) {
        }
    }
}
