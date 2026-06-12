package android.ext;

import android.os.Process;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class lw implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        lh.a(1, (String) null);
        boolean z = jp.a().a;
        ar.d.g = z && (!Config.vSpaceReal || Config.D);
        if (z) {
            boolean i = ConfigListAdapter.i();
            la.a("Install64: " + i);
            if (i) {
                lh.b();
                return;
            } else {
                lh.a();
                return;
            }
        }
        ar.h = false;
        if (lh.d) {
            lh.a(8, (String) null);
            lh.i();
            return;
        }
        boolean a = bi.a();
        lh.a(a ? (byte) 1 : (byte) 2);
        if (!a) {
            la.a("Not instr: " + Process.myUid());
            lh.a(2, new StringBuilder().append(Config.z).toString());
            rx.a(new lx(this));
            lh.a(4, (String) null);
            return;
        }
        la.a("Use instr: " + Process.myUid());
        lh.a(9, (String) null);
        lh.e();
        lh.i();
    }
}
