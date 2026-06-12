package android.ext;

import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class pg {
    long a;
    String b;
    int c;
    private CharSequence d;

    public pg(long j, CharSequence charSequence, String str, int i) {
        this.a = j;
        this.d = charSequence;
        this.b = str;
        this.c = i;
    }

    public CharSequence a() {
        return Tools.a(Tools.a((CharSequence) d.b(this.a, 0), Tools.e((int) R.color.address)), Tools.a((CharSequence) (": " + ((Object) this.d)), -1));
    }
}
