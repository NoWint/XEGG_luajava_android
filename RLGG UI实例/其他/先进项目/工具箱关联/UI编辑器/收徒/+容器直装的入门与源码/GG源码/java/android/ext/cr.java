package android.ext;

import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class cr extends cz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public cr(int i, int i2, int[] iArr, int i3, String str, boolean z) {
        super(i, i2, iArr, i3, str, z);
    }

    @Override // android.ext.cz, android.ext.ct
    public void d() {
        if (lh.g()) {
            super.d();
        }
    }

    @Override // android.ext.cz
    protected void b() {
        super.b();
        int length = Config.a.length;
        if (this.n == null || this.n.length != length + 1) {
            int[] iArr = new int[length + 1];
            CharSequence[] charSequenceArr = new CharSequence[length + 1];
            iArr[0] = 0;
            charSequenceArr[0] = qk.a((int) R.string.no);
            for (int i = 0; i < length; i++) {
                int i2 = Config.a[i];
                iArr[i + 1] = i2;
                charSequenceArr[i + 1] = Config.c(i2);
            }
            this.n = iArr;
            this.m = charSequenceArr;
            this.l = null;
        }
    }

    @Override // android.ext.cz, android.ext.ct
    public String toString() {
        return String.valueOf(Tools.c(this.a)) + ": " + Config.c(this.d);
    }
}
