package android.ext;

import java.util.ArrayList;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
public class bp {
    private final List a = new ArrayList();

    public bp a(CharSequence charSequence) {
        this.a.add(charSequence);
        return this;
    }

    public bp a(String str, CharSequence... charSequenceArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int indexOf = str.indexOf("%s", i2);
            if (indexOf < 0) {
                this.a.add(str.substring(i2, str.length()));
                return this;
            }
            this.a.add(str.substring(i2, indexOf));
            this.a.add(charSequenceArr[i]);
            i2 = indexOf + 2;
            i++;
        }
    }

    public CharSequence a() {
        return Tools.a((CharSequence[]) this.a.toArray(new CharSequence[this.a.size()]));
    }

    public int b() {
        return this.a.size();
    }
}
