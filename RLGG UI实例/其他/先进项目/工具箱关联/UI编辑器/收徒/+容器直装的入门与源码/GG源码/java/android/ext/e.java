package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
public class e {
    int a;
    CharSequence b;
    public int c;

    public e(int i, CharSequence charSequence, int i2) {
        this.c = 0;
        this.a = i;
        this.b = charSequence;
        this.c = i2;
    }

    public String toString() {
        return this.c > 0 ? String.valueOf(this.c) + ": " + this.b.toString() : this.b.toString();
    }
}
