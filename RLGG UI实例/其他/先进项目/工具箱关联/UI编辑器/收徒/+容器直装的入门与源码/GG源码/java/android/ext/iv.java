package android.ext;

import android.text.Editable;

/* compiled from: src */
/* loaded from: classes.dex */
class iv {
    Editable a;
    int b = 1;

    public iv(Editable editable) {
        this.a = editable;
        while (this.b < editable.length()) {
            char charAt = editable.charAt(this.b);
            if (charAt != ' ' && charAt != '\t') {
                return;
            }
            this.b++;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i) {
        char charAt;
        int i2 = i * 2;
        for (int i3 = 0; i3 < i2; i3++) {
            this.b++;
            while (this.b < this.a.length() && ((charAt = this.a.charAt(this.b)) == ' ' || charAt == '\t')) {
                this.b++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        if (this.b <= this.a.length()) {
            this.a.insert(this.b, str);
        }
        this.b += str.length();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, String str) {
        int i2 = this.b;
        a(i);
        if (this.b <= this.a.length()) {
            this.a.replace(i2, this.b, str);
        }
        this.b = (str.length() - (this.b - i2)) + this.b;
    }
}
