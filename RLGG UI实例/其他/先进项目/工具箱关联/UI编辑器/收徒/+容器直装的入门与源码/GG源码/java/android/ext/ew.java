package android.ext;

import android.content.DialogInterface;
import android.content.Intent;
import java.io.File;

/* compiled from: src */
/* loaded from: classes.dex */
class ew implements DialogInterface.OnClickListener {
    final /* synthetic */ ev a;
    private final /* synthetic */ File b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ew(ev evVar, File file) {
        this.a = evVar;
        this.b = file;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        for (Intent intent : jp.a(this.b)) {
            try {
                Tools.e().startActivity(intent);
                return;
            } catch (Throwable th) {
                la.a(th);
            }
        }
    }
}
