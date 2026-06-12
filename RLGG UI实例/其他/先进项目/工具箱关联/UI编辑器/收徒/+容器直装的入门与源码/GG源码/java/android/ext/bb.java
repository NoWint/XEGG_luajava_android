package android.ext;

import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class bb implements Runnable {
    final /* synthetic */ ar a;
    private boolean b = false;
    private final /* synthetic */ Bundle c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bb(ar arVar, Bundle bundle) {
        this.a = arVar;
        this.c = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        la.a(this + ": 1200");
        if (this.b) {
            la.a(this + ": already");
            return;
        }
        this.b = true;
        this.a.c(this.c);
    }
}
