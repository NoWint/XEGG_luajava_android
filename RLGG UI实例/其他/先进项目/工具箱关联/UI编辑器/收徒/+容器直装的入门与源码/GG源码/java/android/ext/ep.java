package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class ep implements DialogInterface.OnClickListener {
    final /* synthetic */ eo a;
    private final /* synthetic */ boolean[] b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ep(eo eoVar, boolean[] zArr) {
        this.a = eoVar;
        this.b = zArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        int i3 = 0;
        if (i == -1) {
            int i4 = 0;
            while (true) {
                i2 = i3;
                if (i4 >= this.b.length) {
                    break;
                }
                if (this.b[i4]) {
                    i3 = (1 << i4) | i2;
                } else {
                    i3 = ((1 << i4) ^ (-1)) & i2;
                }
                i4++;
            }
        } else {
            i2 = 0;
        }
        Config.a((int) R.id.config_copy_params).d = i2;
        Config.c();
        this.a.a(i2);
    }
}
