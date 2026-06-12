package android.c;

/* compiled from: src */
/* loaded from: classes.dex */
public class f implements Cloneable {
    private long[] a;
    private long[] b;
    private int c;

    public f() {
        this(16);
    }

    public f(int i) {
        if (i == 0) {
            this.a = b.e;
            this.b = b.e;
        } else {
            int a = b.a(i);
            this.a = new long[a];
            this.b = new long[a];
        }
        this.c = 0;
    }

    /* renamed from: a */
    public f clone() {
        try {
            f fVar = (f) super.clone();
            try {
                fVar.a = (long[]) this.a.clone();
                fVar.b = (long[]) this.b.clone();
                return fVar;
            } catch (CloneNotSupportedException e) {
                return fVar;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public boolean a(long j, long j2) {
        int a = b.a(this.a, this.c, j);
        if (a >= 0) {
            long[] jArr = this.b;
            if (jArr[a] == j2) {
                return false;
            }
            jArr[a] = j2;
        } else {
            int i = a ^ (-1);
            this.a = d.a(this.a, this.c, i, j);
            this.b = d.a(this.b, this.c, i, j2);
            this.c++;
        }
        return true;
    }

    public int b() {
        return this.c;
    }

    public long a(int i) {
        return this.a[i];
    }

    public long b(int i) {
        return this.b[i];
    }

    public int a(long j) {
        return b.a(this.a, this.c, j);
    }

    public void c() {
        this.a = new long[16];
        this.b = new long[16];
        this.c = 0;
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.c * 28);
        sb.append('{');
        for (int i = 0; i < this.c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(a(i));
            sb.append('=');
            sb.append(b(i));
        }
        sb.append('}');
        return sb.toString();
    }
}
