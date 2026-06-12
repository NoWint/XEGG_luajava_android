package android.ext;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;

/* compiled from: src */
/* loaded from: classes.dex */
public class be implements DialogInterface.OnClickListener, View.OnClickListener {
    private String a;

    public be(String str) {
        this.a = str == null ? "kwws=22jdphjxdugldq1qhw2grzqordg" : str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            Tools.e().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(Tools.removeNewLinesChars(this.a))));
            i.d();
        } catch (Throwable th) {
            la.b("Failed call activity", th);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        onClick(null, 0);
    }
}
