package android.c;

/* compiled from: src */
/* loaded from: classes.dex */
public class a {
    int a;
    private long[] b;
    private int[] c;
    private boolean[] d;

    static IndexOutOfBoundsException a(int i, int i2) {
        throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + i2);
    }

    public a() {
        this(0);
    }

    public a(int i) {
        c(b.a(i));
    }

    private void c(int i) {
        long[] jArr;
        int[] iArr;
        boolean[] zArr;
        if (i == 0) {
            jArr = b.e;
            iArr = b.d;
            zArr = b.g;
        } else {
            jArr = new long[i * 2];
            iArr = new int[i];
            zArr = new boolean[i];
        }
        int i2 = this.a;
        if (i2 != 0) {
            System.arraycopy(this.b, 0, jArr, 0, i2 * 2);
            System.arraycopy(this.c, 0, iArr, 0, i2);
            System.arraycopy(this.d, 0, zArr, 0, i2);
        }
        this.b = jArr;
        this.c = iArr;
        this.d = zArr;
    }

    private void d() {
        int i = this.a;
        c((i < 6 ? 12 : i >> 1) + i);
    }

    public void a(long j, long j2, int i, boolean z) {
        int i2 = this.a;
        if (i2 == this.c.length) {
            d();
        }
        this.b[(i2 * 2) + 0] = j;
        this.b[(i2 * 2) + 1] = j2;
        this.c[i2] = i;
        this.d[i2] = z;
        this.a = i2 + 1;
    }

    public void a(int i) {
        if (this.c.length < i) {
            c(i);
        }
    }

    public android.ext.d a(int i, android.ext.d dVar) {
        if (i >= this.a) {
            a(i, this.a);
        }
        if (dVar == null) {
            return new android.ext.d(this.b[(i * 2) + 0], this.b[(i * 2) + 1], this.c[i]);
        }
        dVar.b = this.b[(i * 2) + 0];
        dVar.c = this.b[(i * 2) + 1];
        dVar.d = this.c[i];
        return dVar;
    }

    public boolean b(int i) {
        return this.d[i];
    }

    public void a(int i, boolean z) {
        this.d[i] = z;
    }

    public void a() {
        if (this.a != this.d.length) {
            c(this.a);
        }
    }

    public int b() {
        return this.a;
    }

    public void c() {
        this.a = 0;
    }
}
