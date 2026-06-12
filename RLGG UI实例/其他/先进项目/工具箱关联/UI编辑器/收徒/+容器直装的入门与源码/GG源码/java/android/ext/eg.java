package android.ext;

import android.content.DialogInterface;
import android.os.Build;

/* compiled from: src */
/* loaded from: classes.dex */
class eg implements DialogInterface.OnClickListener {
    final /* synthetic */ ConfigListAdapter a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eg(ConfigListAdapter configListAdapter) {
        this.a = configListAdapter;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Tools.a("GG: " + ((113.6f * 1) - 12.5f) + " (" + ((int) (((16681.6f * 1) - 539.6f) + 0.5f)) + "); Android: " + Build.VERSION.RELEASE + " (" + Build.VERSION.SDK_INT + ") [" + lh.o() + ']', false);
    }
}
