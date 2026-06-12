package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
public class rc {
    public long a = 0;
    public long b = 0;
    public int c = 0;
    public int d = 536870912;

    public String toString() {
        return String.valueOf(super.toString()) + ": " + this.a + (this.d == 536870912 ? "~" : "~~") + this.b + ' ' + this.c;
    }
}
