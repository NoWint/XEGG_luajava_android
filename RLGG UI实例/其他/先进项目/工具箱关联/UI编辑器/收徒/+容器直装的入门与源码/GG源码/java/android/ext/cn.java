package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;
import java.util.Locale;

/* compiled from: src */
/* loaded from: classes.dex */
class cn extends cz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public cn(int i, int i2, int[] iArr, int i3, String str, boolean z) {
        super(i, i2, iArr, i3, str, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.ext.ct
    public void a() {
        if (this.d > 0) {
            String[] f = f();
            if (this.d < f.length) {
                ad.a(ad.a(f[this.d]));
            }
        }
    }

    private String[] f() {
        return new String[]{"", "en_US", "in_ID", "ru_RU"};
    }

    @Override // android.ext.cz
    protected void b() {
        super.b();
        if (this.m == null) {
            String[] f = f();
            CharSequence[] charSequenceArr = new CharSequence[f.length];
            for (int i = 0; i < f.length; i++) {
                charSequenceArr[i] = a(f[i]);
            }
            this.m = charSequenceArr;
        }
    }

    private String a(String str) {
        Locale a;
        try {
            if (str.length() == 0) {
                a = ad.b();
                str = Tools.c((int) R.string.default_);
            } else {
                a = ad.a(str);
            }
            return String.valueOf(str) + String.format(a, "\n[%,.1f | %.2e]", Double.valueOf(-1234.0d), Double.valueOf(-4.56E-78d));
        } catch (Throwable th) {
            String str2 = str;
            la.a(th);
            return str2;
        }
    }

    @Override // android.ext.cz, android.ext.ct
    public boolean a(DialogInterface dialogInterface, int i) {
        boolean a = super.a(dialogInterface, i);
        if (a) {
            ConfigListAdapter.c();
        }
        return a;
    }
}
