package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class cz extends ct {
    int[] l;
    CharSequence[] m;
    int[] n;

    public cz(int i, int i2, int[] iArr, int i3, String str, boolean z) {
        super(i, i2, i3, str, z);
        this.m = null;
        this.n = null;
        this.l = iArr;
    }

    public cz(int i, int i2, int[] iArr, int i3, String str, boolean z, int i4) {
        this(i, i2, iArr, i3, str, z);
        this.h = i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
    }

    @Override // android.ext.ct
    public void d() {
        b();
        CharSequence[] charSequenceArr = this.m;
        if (this.l != null) {
            CharSequence[] charSequenceArr2 = new CharSequence[this.l.length];
            for (int i = 0; i < this.l.length; i++) {
                charSequenceArr2[i] = qk.a(this.l[i]);
            }
            charSequenceArr = charSequenceArr2;
        }
        a(charSequenceArr);
    }

    protected void a(CharSequence[] charSequenceArr) {
        int a = a(this.b);
        CharSequence[] charSequenceArr2 = new CharSequence[charSequenceArr.length];
        int i = 0;
        while (i < charSequenceArr.length) {
            charSequenceArr2[i] = (i != a || charSequenceArr[i] == null) ? charSequenceArr[i] : ((Object) charSequenceArr[i]) + " (" + qk.a((int) R.string.default_mark) + ')';
            i++;
        }
        i.a(i.c().setCustomTitle(Config.a(this.a, this.h, this.g)).setSingleChoiceItems(charSequenceArr2, a(this.d), this));
    }

    @Override // android.ext.ct
    public boolean a(DialogInterface dialogInterface, int i) {
        this.d = b(i);
        Config.c();
        Tools.a(dialogInterface);
        return true;
    }

    @Override // android.ext.ct
    public String toString() {
        String str = null;
        try {
            int a = a(this.d);
            str = this.l != null ? qk.a(this.l[a]) : this.m[a];
        } catch (IndexOutOfBoundsException e) {
        }
        if (str == null) {
            str = "int:" + this.d;
        }
        return String.valueOf(Tools.c(this.a)) + ": " + ((Object) str);
    }

    public int a(int i) {
        b();
        if (this.n != null) {
            int i2 = 1;
            while (true) {
                if (i2 >= this.n.length) {
                    i2 = 0;
                    break;
                } else if (this.n[i2] == i) {
                    break;
                } else {
                    i2++;
                }
            }
            return i2;
        }
        return i;
    }

    public int b(int i) {
        b();
        return this.n == null ? i : this.n[i];
    }
}
