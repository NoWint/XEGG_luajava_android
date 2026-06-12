package android.ext;

import android.fix.ScrollView;

/* compiled from: src */
/* loaded from: classes.dex */
class tb implements Runnable {
    final /* synthetic */ ta a;
    private final /* synthetic */ ScrollView b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public tb(ta taVar, ScrollView scrollView) {
        this.a = taVar;
        this.b = scrollView;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.b.fullScroll(130);
    }
}
