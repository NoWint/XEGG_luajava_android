package android.c;

/* compiled from: src */
/* loaded from: classes.dex */
public class e implements Cloneable {
    private static final Object a = new Object();
    private boolean b;
    private long[] c;
    private Object[] d;
    private boolean[] e;
    private int f;

    public e() {
        this(16);
    }

    public e(int i) {
        this.b = false;
        if (i == 0) {
            this.c = b.e;
            this.d = b.f;
            this.e = b.g;
        } else {
            int a2 = b.a(i);
            this.c = new long[a2];
            this.d = new Object[a2];
            this.e = new boolean[a2];
        }
        this.f = 0;
    }

    /* renamed from: a */
    public e clone() {
        try {
            e eVar = (e) super.clone();
            try {
                eVar.c = (long[]) this.c.clone();
                eVar.d = (Object[]) this.d.clone();
                eVar.e = (boolean[]) this.e.clone();
                return eVar;
            } catch (CloneNotSupportedException e) {
                return eVar;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public Object a(long j) {
        return a(j, (Object) null);
    }

    public Object a(long j, Object obj) {
        int a2 = b.a(this.c, this.f, j);
        return (a2 < 0 || this.d[a2] == a) ? obj : this.d[a2];
    }

    public Object b(long j) {
        Object obj;
        int a2 = b.a(this.c, this.f, j);
        if (a2 < 0 || (obj = this.d[a2]) == a) {
            return null;
        }
        this.d[a2] = a;
        this.b = true;
        return obj;
    }

    public Object a(int i) {
        Object obj = this.d[i];
        if (obj != a) {
            this.d[i] = a;
            this.b = true;
            return obj;
        }
        return null;
    }

    private void d() {
        int i = this.f;
        long[] jArr = this.c;
        Object[] objArr = this.d;
        boolean[] zArr = this.e;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    zArr[i2] = zArr[i3];
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.b = false;
        this.f = i2;
    }

    public Object a(long j, Object obj, byte b) {
        int a2 = b.a(this.c, this.f, j);
        if (a2 >= 0) {
            Object obj2 = this.d[a2];
            this.d[a2] = obj;
            if (b != 0) {
                this.e[a2] = b == 1;
            }
            return obj2;
        }
        int i = a2 ^ (-1);
        if (i < this.f && this.d[i] == a) {
            this.c[i] = j;
            this.d[i] = obj;
            if (b != 0) {
                this.e[i] = b == 1;
            }
            return null;
        }
        if (this.b && this.f >= this.c.length) {
            d();
            i = b.a(this.c, this.f, j) ^ (-1);
        }
        this.c = d.a(this.c, this.f, i, j);
        this.d = d.a(this.d, this.f, i, obj);
        this.e = d.a(this.e, this.f, i, b == 1);
        this.f++;
        return null;
    }

    public int b() {
        if (this.b) {
            d();
        }
        return this.f;
    }

    public long b(int i) {
        if (this.b) {
            d();
        }
        return this.c[i];
    }

    public Object c(int i) {
        if (this.b) {
            d();
        }
        return this.d[i];
    }

    public boolean d(int i) {
        if (this.b) {
            d();
        }
        return this.e[i];
    }

    public void a(int i, boolean z) {
        if (this.b) {
            d();
        }
        this.e[i] = z;
    }

    public int c(long j) {
        if (this.b) {
            d();
        }
        return b.a(this.c, this.f, j);
    }

    public void c() {
        this.c = new long[16];
        this.d = new Object[16];
        this.e = new boolean[16];
        this.f = 0;
        this.b = false;
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f * 28);
        sb.append('{');
        for (int i = 0; i < this.f; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(b(i));
            sb.append('=');
            Object c = c(i);
            if (c != this) {
                sb.append(c);
            } else {
                sb.append("(this Map)");
            }
            sb.append(" [");
            sb.append(d(i));
            sb.append("]");
        }
        sb.append('}');
        return sb.toString();
    }
}
