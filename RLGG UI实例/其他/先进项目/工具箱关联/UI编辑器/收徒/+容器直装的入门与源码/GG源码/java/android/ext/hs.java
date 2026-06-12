package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hs implements DialogInterface.OnClickListener {
    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String str;
        try {
            str = Tools.e().getFilesDir().getAbsolutePath();
        } catch (Throwable th) {
            str = "error";
            la.b("Failed get files dir", th);
        }
        ConfigListAdapter.a(str);
    }
}
