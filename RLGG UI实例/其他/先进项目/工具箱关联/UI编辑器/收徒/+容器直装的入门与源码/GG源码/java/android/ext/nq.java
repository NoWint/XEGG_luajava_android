package android.ext;

import android.content.Intent;

/* compiled from: src */
/* loaded from: classes.dex */
class nq implements Runnable {
    final /* synthetic */ np a;
    private final /* synthetic */ Intent b;
    private final /* synthetic */ String c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nq(np npVar, Intent intent, String str) {
        this.a = npVar;
        this.b = intent;
        this.c = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Tools.e().startActivity(this.b);
        } catch (Exception e) {
            la.c("Failed restart app 2: " + this.c, e);
        }
    }
}
