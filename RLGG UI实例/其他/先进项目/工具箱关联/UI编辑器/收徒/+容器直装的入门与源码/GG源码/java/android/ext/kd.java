package android.ext;

import android.content.DialogInterface;
import android.content.Intent;

/* compiled from: src */
/* loaded from: classes.dex */
class kd implements DialogInterface.OnClickListener {
    final /* synthetic */ kc a;
    private final /* synthetic */ int b;
    private final /* synthetic */ Intent[] c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kd(kc kcVar, int i, Intent[] intentArr) {
        this.a = kcVar;
        this.b = i;
        this.c = intentArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Intent[] intentArr;
        switch (i) {
            case -2:
                jp.g.g &= this.b ^ (-1);
                break;
            case -1:
                int i2 = -1;
                int length = this.b == 1 ? jp.l % this.c.length : 0;
                for (Intent intent : this.c) {
                    i2++;
                    if (i2 >= length) {
                        try {
                            if (this.b == 1) {
                                jp.l++;
                            }
                            ar.d.startActivityForResult(intent, this.b);
                            break;
                        } catch (Throwable th) {
                            la.c("intent fail", th);
                        }
                    }
                }
                break;
        }
        jp.e.f = null;
    }
}
