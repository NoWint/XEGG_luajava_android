package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class cl extends cz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public cl(int i, int i2, int[] iArr, int i3, String str, boolean z, int i4) {
        super(i, i2, iArr, i3, str, z, i4);
    }

    @Override // android.ext.cz, android.ext.ct
    public boolean a(DialogInterface dialogInterface, int i) {
        boolean a = super.a(dialogInterface, i);
        if (a && this.d == 3) {
            i.a(i.a(Tools.e()).setMessage(qk.a((int) R.string.help_faq_33_a)).setNegativeButton(R.string.ok, (DialogInterface.OnClickListener) null));
        }
        return a;
    }
}
