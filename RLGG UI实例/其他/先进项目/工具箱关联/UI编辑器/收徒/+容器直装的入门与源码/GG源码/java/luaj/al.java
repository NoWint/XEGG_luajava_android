package luaj;

import java.io.File;

/* compiled from: src */
/* loaded from: classes.dex */
public class al {
    private static final ao[] a = new ao[0];
    private static final al[] b = new al[0];
    public int A;
    public int B;
    public LuaValue[] q;
    public int[] r;
    public int[] t;
    public l[] u;
    public LuaString w;
    public int x;
    public int y;
    public int z;
    int C = -1;
    public al[] s = b;
    public ao[] v = a;

    public String toString() {
        return new StringBuilder().append(this.w).append(':').append(this.x).append('-').append(this.y).toString();
    }

    public LuaString a(int i, int i2) {
        for (int i3 = 0; i3 < this.u.length && this.u[i3].b <= i2; i3++) {
            if (i2 < this.u[i3].c && i - 1 == 0) {
                return this.u[i3].a;
            }
        }
        return null;
    }

    public String b() {
        if (this.w == null) {
            return "null";
        }
        String d_ = this.w.d_();
        if ((!d_.startsWith("/") || !new File(d_).exists()) && d_.length() > 124) {
            d_ = String.valueOf(d_.substring(0, 124)) + "...";
        }
        if (d_.startsWith("@") || d_.startsWith("=")) {
            return d_.substring(1);
        }
        if (d_.startsWith("\u001b")) {
            return "=?";
        }
        return d_;
    }
}
