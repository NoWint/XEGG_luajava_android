package luaj;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.ext.Tools;
import android.ext.be;
import android.ext.qk;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class g implements Runnable {
    final /* synthetic */ f a;
    private final /* synthetic */ j b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar, j jVar) {
        this.a = fVar;
        this.b = jVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlertDialog.Builder neutralButton = android.ext.i.a(Tools.e()).setMessage(String.valueOf(this.a.f) + "\n\n" + Tools.a(qk.a((int) R.string.invalid_header), this.b.a)).setNeutralButton(qk.a((int) R.string.fix_it), new be("kwws=22jdphjxdugldq1qhw2iruxp2wrslf2594440elqdu|0vfulswv0zlwk0fruuxswhg0ru0lqydolg0khdghuv2"));
        h hVar = new h(this, this.b);
        if (Tools.a.nextBoolean()) {
            neutralButton.setPositiveButton(qk.a((int) R.string.yes), hVar).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null);
        } else {
            neutralButton.setNegativeButton(qk.a((int) R.string.yes), hVar).setPositiveButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null);
        }
        AlertDialog create = neutralButton.create();
        android.ext.i.a(create, new i(this, this.b));
        android.ext.i.c(create);
    }
}
