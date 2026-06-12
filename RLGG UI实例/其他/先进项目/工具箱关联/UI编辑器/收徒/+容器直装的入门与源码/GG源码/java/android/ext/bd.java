package android.ext;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

/* compiled from: src */
/* loaded from: classes.dex */
class bd implements DialogInterface.OnClickListener {
    final /* synthetic */ bc a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bd(bc bcVar) {
        this.a = bcVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            ar.f.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2iruxp2wrslf24<7540yluwxdo0vsdfhv0wr0uxq0jdphjxdugldq0zlwkrxw0urrw2"))));
        } catch (Throwable th) {
            la.b("Failed call activity", th);
        }
        new ib(1400).onClick(null, 0);
    }
}
