package android.ext;

import android.content.DialogInterface;
import android.util.SparseIntArray;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class tu implements DialogInterface.OnClickListener {
    final e[] a;
    private final String b;
    private final DialogInterface.OnClickListener c;

    public tu(android.fix.j jVar, String str, String str2, DialogInterface.OnClickListener onClickListener) {
        this(jVar, null, str, str2, onClickListener);
    }

    public tu(android.fix.j jVar, SparseIntArray sparseIntArray, String str, String str2, DialogInterface.OnClickListener onClickListener) {
        this.a = d.a(jVar, sparseIntArray);
        this.b = str;
        this.c = onClickListener;
        if (jVar.size() == 1) {
            onClick(null, 0);
        } else {
            i.a(i.a(Tools.o()).setCustomTitle(Tools.i(str2)).setAdapter(new tv(this, MainService.context, this.a), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            int i2 = this.a[i].a;
            if (!"0".equals(this.b)) {
                d.a(0L, this.b, i2);
            }
            if (dialogInterface != null) {
                Tools.a(dialogInterface);
            }
            this.c.onClick(dialogInterface, i2);
        } catch (NumberFormatException e) {
            re.a(e, (android.widget.EditText) null);
        }
    }
}
