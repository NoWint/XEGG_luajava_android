package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class oy implements DialogInterface.OnClickListener {
    final /* synthetic */ ow a;
    private final /* synthetic */ boolean b;
    private final /* synthetic */ boolean[] c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oy(ow owVar, boolean z, boolean[] zArr) {
        this.a = owVar;
        this.b = z;
        this.c = zArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.b ? 0 : -15999;
        if (i == -1) {
            for (int i3 = 0; i3 < this.c.length; i3++) {
                if (this.c[i3]) {
                    i2 |= 1 << i3;
                } else {
                    i2 &= (1 << i3) ^ (-1);
                }
            }
        }
        if (!this.b && (((1 << this.c.length) - 1) & i2) == 0) {
            i2 |= 8;
        }
        if (this.b) {
            SavedListAdapter.a(i2);
        } else {
            this.a.b(i2);
        }
    }
}
