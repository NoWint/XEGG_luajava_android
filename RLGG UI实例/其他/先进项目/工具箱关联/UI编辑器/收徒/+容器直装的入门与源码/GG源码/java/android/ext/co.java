package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class co extends cz {
    private int k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public co(int i, int i2, int[] iArr, int i3, String str, boolean z, int i4) {
        super(i, i2, iArr, i3, str, z, i4);
        this.k = 0;
    }

    @Override // android.ext.cz, android.ext.ct
    public boolean a(DialogInterface dialogInterface, int i) {
        boolean z = false;
        if (i < 0) {
            if (i == -2) {
                this.d = 0;
                Config.c();
            }
            if (Config.vSpaceReal && this.k != this.d) {
                ConfigListAdapter.c();
            }
        } else {
            this.k = this.d;
            z = super.a(dialogInterface, i);
            if (z) {
                if (i == 1) {
                    AlertDialog create = i.a(Tools.e()).setCustomTitle(Tools.d(this.a)).setMessage(qk.a(this.h)).setPositiveButton(R.string.save, this).setNegativeButton(R.string.cancel, this).create();
                    i.c(create);
                    i.a(create, new cp(this, create));
                } else if (Config.vSpaceReal && this.k != this.d) {
                    ConfigListAdapter.c();
                }
            }
        }
        return z;
    }
}
