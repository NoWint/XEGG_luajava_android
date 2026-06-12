package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class qn implements Runnable {
    final /* synthetic */ qm a;
    private final /* synthetic */ Throwable b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qn(qm qmVar, Throwable th) {
        this.a = qmVar;
        this.b = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        try {
            AlertDialog.Builder customTitle = i.c().setCustomTitle(Tools.d((int) R.string.error));
            str = this.a.c;
            i.a(customTitle.setMessage(String.valueOf(str) + "\n\n" + this.b.toString()).setPositiveButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
        } catch (Throwable th) {
            la.b("Failed show alert", th);
        }
    }
}
