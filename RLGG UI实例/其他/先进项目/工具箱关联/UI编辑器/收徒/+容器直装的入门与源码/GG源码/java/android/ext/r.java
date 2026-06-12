package android.ext;

import android.app.AlertDialog;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
class r {
    public WeakReference a;
    public WeakReference b;

    public r(AlertDialog alertDialog, s sVar) {
        this.a = new WeakReference(alertDialog);
        this.b = new WeakReference(sVar);
    }
}
