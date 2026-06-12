package android.ext;

import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class cq extends cz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public cq(int i, int i2, int[] iArr, int i3, String str, boolean z) {
        super(i, i2, iArr, i3, str, z);
    }

    @Override // android.ext.cz
    protected void b() {
        int c;
        super.b();
        if (this.n == null) {
            int floor = Tools.c() > 0 ? ((int) Math.floor(Math.log(c / 5.0f) / Math.log(2.0d))) - 8 : 0;
            if (floor <= 0) {
                floor = 7;
            }
            int i = floor < 20 ? floor : 20;
            int[] iArr = new int[i + 2];
            CharSequence[] charSequenceArr = new CharSequence[i + 2];
            iArr[0] = 0;
            charSequenceArr[0] = qk.a((int) R.string.no);
            iArr[iArr.length - 1] = Integer.MAX_VALUE;
            charSequenceArr[iArr.length - 1] = qk.a((int) R.string.yes);
            String a = qk.a((int) R.string.first_mb);
            for (int i2 = 1; i2 <= i; i2++) {
                int i3 = 1 << (i2 + 8);
                iArr[i2] = i3;
                charSequenceArr[i2] = Tools.a(a, Integer.valueOf(Math.round((i3 * 5.0f) / 1024.0f)));
            }
            this.n = iArr;
            this.m = charSequenceArr;
            this.l = null;
        }
    }

    private String c(int i) {
        if (i == Integer.MAX_VALUE) {
            return qk.a((int) R.string.yes);
        }
        if (i == 0) {
            return qk.a((int) R.string.no);
        }
        return Tools.a(qk.a((int) R.string.first_mb), Integer.valueOf(Math.round((5.0f * i) / 1024.0f)));
    }

    @Override // android.ext.cz, android.ext.ct
    public String toString() {
        return String.valueOf(Tools.c(this.a)) + ": " + c(this.d);
    }
}
