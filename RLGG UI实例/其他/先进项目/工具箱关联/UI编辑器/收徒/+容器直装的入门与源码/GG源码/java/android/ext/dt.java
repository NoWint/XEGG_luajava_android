package android.ext;

import android.content.DialogInterface;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class dt implements DialogInterface.OnShowListener {
    private final /* synthetic */ View.OnClickListener a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dt(View.OnClickListener onClickListener) {
        this.a = onClickListener;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this.a);
    }
}
