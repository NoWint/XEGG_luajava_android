package android.ext;

import android.os.Process;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class fz implements Runnable {
    final /* synthetic */ ex a;
    private final /* synthetic */ byte b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public fz(ex exVar, byte b) {
        this.a = exVar;
        this.b = b;
    }

    @Override // java.lang.Runnable
    public void run() {
        InOut inOut = this.a.e;
        inOut.a(this.b, (byte) 47, 0);
        inOut.a(Process.myPid());
        inOut.a(this.a.i);
        this.a.u();
    }
}
