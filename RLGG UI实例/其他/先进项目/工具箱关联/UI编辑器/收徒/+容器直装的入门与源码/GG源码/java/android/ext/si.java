package android.ext;

import android.widget.Toast;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class si implements Runnable {
    private final /* synthetic */ Toast a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public si(Toast toast) {
        this.a = toast;
    }

    @Override // java.lang.Runnable
    public void run() {
        sf.e(this.a);
    }
}
