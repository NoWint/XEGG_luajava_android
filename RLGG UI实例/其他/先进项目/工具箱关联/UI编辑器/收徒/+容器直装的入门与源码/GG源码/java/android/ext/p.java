package android.ext;

import android.app.AlertDialog;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
class p {
    public WeakReference a;
    public WeakReference b;

    public p(AlertDialog alertDialog, q qVar) {
        this.a = new WeakReference(alertDialog);
        this.b = new WeakReference(qVar);
    }
}
