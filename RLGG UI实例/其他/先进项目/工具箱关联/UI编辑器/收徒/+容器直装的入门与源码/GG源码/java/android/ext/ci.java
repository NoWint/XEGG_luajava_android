package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class ci implements cv {
    final /* synthetic */ ch a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ci(ch chVar) {
        this.a = chVar;
    }

    @Override // android.ext.cv
    public void a(int i) {
        StringBuilder sb;
        if ((i & 1) != 0) {
            sb = new StringBuilder();
            sb.append(qk.a((int) R.string.hide_1_warn));
        } else {
            sb = null;
        }
        if ((i & 8) != 0) {
            if (sb == null) {
                sb = new StringBuilder();
            } else {
                sb.append("\n\n");
            }
            sb.append(qk.a((int) R.string.hide_4_warn));
        }
        if (sb != null) {
            i.a(i.c().setMessage(sb.toString()).setPositiveButton(R.string.ok, (DialogInterface.OnClickListener) null));
        }
    }
}
