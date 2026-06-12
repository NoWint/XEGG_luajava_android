package android.ext;

import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class lm implements Runnable {
    final /* synthetic */ ll a;
    private final /* synthetic */ StringBuilder b;
    private final /* synthetic */ String c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lm(ll llVar, StringBuilder sb, String str) {
        this.a = llVar;
        this.b = sb;
        this.c = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        View a = android.fix.i.a((int) R.layout.main_new_version, (ViewGroup) null);
        Tools.a((TextView) a.findViewById(R.id.changelog), this.b.toString());
        i.a(i.c().setCustomTitle(Tools.i(Tools.a(qk.a((int) R.string.found_new_version), this.c))).setView(a).setCancelable(false).setPositiveButton(qk.a((int) R.string.download_it), new be(null)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
    }
}
