package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import java.util.ArrayList;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
class s implements DialogInterface.OnShowListener {
    private final List a;

    private s() {
        this.a = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ s(s sVar) {
        this();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.c((AlertDialog) dialogInterface);
        for (DialogInterface.OnShowListener onShowListener : this.a) {
            if (onShowListener != null) {
                onShowListener.onShow(dialogInterface);
            }
        }
    }

    public void a(DialogInterface.OnShowListener onShowListener) {
        if (onShowListener != null && !this.a.contains(onShowListener)) {
            this.a.add(onShowListener);
        }
    }
}
