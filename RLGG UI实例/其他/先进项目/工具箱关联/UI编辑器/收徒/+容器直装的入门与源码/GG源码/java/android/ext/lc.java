package android.ext;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class lc implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        la.a = true;
        if (la.b != null) {
            try {
                la.b.flush();
                la.b.close();
                la.b = null;
            } catch (IOException e) {
                lg.a("AndroidService", "Log close: I/O", e);
            }
        }
    }
}
