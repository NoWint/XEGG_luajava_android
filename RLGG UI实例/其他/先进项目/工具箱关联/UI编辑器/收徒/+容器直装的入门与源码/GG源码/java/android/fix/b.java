package android.fix;

import android.content.Intent;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class b implements Runnable {
    final /* synthetic */ a a;
    private final /* synthetic */ Intent b;
    private final /* synthetic */ int c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar, Intent intent, int i) {
        this.a = aVar;
        this.b = intent;
        this.c = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.startActivityForResult(this.b, this.c);
    }
}
