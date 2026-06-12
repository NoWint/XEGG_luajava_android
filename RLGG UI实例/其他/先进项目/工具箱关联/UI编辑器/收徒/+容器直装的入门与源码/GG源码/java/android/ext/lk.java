package android.ext;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class lk implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        try {
            Context e = Tools.e();
            ComponentName m = lh.m();
            lg.a("AndroidService", "Restart: true " + Config.z + ' ' + m);
            if (!Config.vSpaceReal && Config.z == 0 && m != null && e.startInstrumentation(m, null, ar.a())) {
                lg.a("AndroidService", "Restart 1");
            }
            lg.a("AndroidService", "Restart 2");
            String g = Tools.g();
            String b = ar.b();
            Tools.a(200, new ComponentName(g, b), 1);
            Intent a = Tools.a(e, g, b);
            la.a("Restart: " + a);
            ((AlarmManager) e.getSystemService("alarm")).set(1, System.currentTimeMillis() + 1000, PendingIntent.getActivity(e, 123456, a, 268435456));
            lh.l();
        } catch (Throwable th) {
            throw new RuntimeException("Failed restart", th);
        }
    }
}
