package luaj.a;

/* compiled from: src */
/* loaded from: classes.dex */
public class g extends c {
    final lasm.d q;

    public g(lasm.d dVar) {
        this.q = dVar;
        this.e = new h(null, null);
    }

    @Override // luaj.a.c
    int h(int i, int i2) {
        return this.q.a(i);
    }

    @Override // luaj.a.c
    public int b(int i, int i2, int i3) {
        return super.b(i, i2, i3);
    }

    @Override // luaj.a.c
    public int d(int i, int i2, int i3, int i4) {
        return super.d(i, i2, i3, i4);
    }

    @Override // luaj.a.c
    public int d(int i, int i2, int i3) {
        return super.d(i, i2, i3);
    }

    @Override // luaj.a.c
    public int i(int i, int i2) {
        return super.i(i, i2);
    }

    public void f(int i, int i2, int i3) {
        if (i3 <= 511) {
            d(36, i, i2, i3);
            return;
        }
        d(36, i, i2, 0);
        h(i3, this.e.e);
    }
}
