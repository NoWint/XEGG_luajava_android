package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class cm extends cz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public cm(int i, int i2, int[] iArr, int i3, String str, boolean z) {
        super(i, i2, iArr, i3, str, z);
    }

    @Override // android.ext.cz, android.ext.ct
    public boolean a(DialogInterface dialogInterface, int i) {
        boolean a = super.a(dialogInterface, i);
        if (a) {
            MainService.instance.l.m();
        }
        return a;
    }
}
