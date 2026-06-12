package android.ext;

import android.os.Bundle;

/* compiled from: src */
/* loaded from: classes.dex */
class ba implements Runnable {
    final /* synthetic */ ar a;
    private boolean b = false;
    private final /* synthetic */ Bundle c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ba(ar arVar, Bundle bundle) {
        this.a = arVar;
        this.c = bundle;
    }

    @Override // java.lang.Runnable
    public void run() {
        la.a(this + ": 200");
        if (this.b) {
            la.a(this + ": already");
            return;
        }
        this.b = true;
        this.a.b(this.c);
    }
}
