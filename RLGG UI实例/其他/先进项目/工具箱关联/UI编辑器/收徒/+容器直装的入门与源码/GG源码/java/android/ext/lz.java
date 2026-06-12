package android.ext;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class lz implements Runnable {
    private final /* synthetic */ Context a;
    private final /* synthetic */ String b;
    private final /* synthetic */ long c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lz(Context context, String str, long j) {
        this.a = context;
        this.b = str;
        this.c = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Context context = this.a;
            if (context == null) {
                context = Tools.e();
            }
            AlertDialog create = i.a(context).setMessage(this.b).setPositiveButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).setNeutralButton(qk.a((int) R.string.skip), lh.a(this.c)).create();
            i.c(create);
            Tools.a(create);
        } catch (Throwable th) {
            la.a(th);
        }
    }
}
