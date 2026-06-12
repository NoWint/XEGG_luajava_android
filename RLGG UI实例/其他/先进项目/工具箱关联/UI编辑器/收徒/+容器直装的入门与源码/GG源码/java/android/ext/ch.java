package android.ext;

import android.ext.Config;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class ch extends Config.OptionMultiChoice {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ch(int i, int i2, int[] iArr, int i3, String str, boolean z) {
        super(i, i2, iArr, i3, str, z);
    }

    @Override // android.ext.cz
    protected void b() {
        super.b();
        if (this.n == null) {
            CharSequence[] charSequenceArr = new CharSequence[r0.length];
            String str = " (" + qk.a((int) R.string.slow) + ')';
            charSequenceArr[0] = String.valueOf(1) + str;
            charSequenceArr[1] = String.valueOf(2) + str;
            charSequenceArr[2] = String.valueOf(3) + str;
            int[] iArr = {1, 2, 4, 8};
            charSequenceArr[3] = String.valueOf(4) + str;
            this.n = iArr;
            this.m = charSequenceArr;
            this.l = null;
            if (this.j == null) {
                this.j = new ci(this);
            }
        }
    }
}
