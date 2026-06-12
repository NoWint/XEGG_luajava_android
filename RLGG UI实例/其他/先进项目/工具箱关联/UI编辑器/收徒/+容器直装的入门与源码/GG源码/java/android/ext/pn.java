package android.ext;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class pn implements DialogInterface.OnClickListener {
    final /* synthetic */ pl a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pn(pl plVar) {
        this.a = plVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            this.a.a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(Tools.removeNewLinesChars(this.a.b()))));
        } catch (Throwable th) {
            la.b("Failed call activity", th);
        }
    }
}
