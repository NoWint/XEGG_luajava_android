package android.ext;

import android.ext.Config;

/* compiled from: src */
/* loaded from: classes.dex */
class ce extends Config.OptionMultiChoice {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ce(int i, int i2, int[] iArr, int i3, String str, boolean z, int i4) {
        super(i, i2, iArr, i3, str, z, i4);
    }

    @Override // android.ext.cz
    protected void b() {
        super.b();
        if (this.j == null) {
            this.j = new cf(this);
        }
        a(true);
    }
}
