package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class lv implements DialogInterface.OnClickListener {
    private final /* synthetic */ Runnable a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lv(Runnable runnable) {
        this.a = runnable;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == 1) {
            jp.a = (byte) 1;
        } else if (i == 2) {
            jp.a = (byte) 2;
        }
        this.a.run();
    }
}
