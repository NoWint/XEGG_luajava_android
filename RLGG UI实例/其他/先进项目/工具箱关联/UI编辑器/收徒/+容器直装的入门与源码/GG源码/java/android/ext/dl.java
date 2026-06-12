package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class dl implements DialogInterface.OnClickListener {
    final /* synthetic */ dk a;
    private final /* synthetic */ boolean[] b;
    private final /* synthetic */ int c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dl(dk dkVar, boolean[] zArr, int i) {
        this.a = dkVar;
        this.b = zArr;
        this.c = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1 || i == -3) {
            long j = -1;
            if (i == -1) {
                for (int i2 = 0; i2 < this.b.length; i2++) {
                    if (this.b[i2]) {
                        j |= 1 << i2;
                    } else {
                        j &= (1 << i2) ^ (-1);
                    }
                }
            }
            if ((((1 << this.b.length) - 1) & j) == 0) {
                j |= 1;
            }
            Config.b[this.c] = j;
            Config.c();
        }
        ConfigListAdapter.f();
    }
}
