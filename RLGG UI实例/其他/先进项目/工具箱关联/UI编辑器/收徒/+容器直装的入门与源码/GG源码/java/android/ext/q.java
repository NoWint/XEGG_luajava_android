package android.ext;

import android.content.DialogInterface;
import java.util.ArrayList;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
class q implements DialogInterface.OnDismissListener {
    private final List a;

    private q() {
        this.a = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ q(q qVar) {
        this();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        i.b();
        for (DialogInterface.OnDismissListener onDismissListener : this.a) {
            if (onDismissListener != null) {
                onDismissListener.onDismiss(dialogInterface);
            }
        }
    }

    public void a(DialogInterface.OnDismissListener onDismissListener) {
        if (onDismissListener != null && !this.a.contains(onDismissListener)) {
            this.a.add(onDismissListener);
        }
    }
}
