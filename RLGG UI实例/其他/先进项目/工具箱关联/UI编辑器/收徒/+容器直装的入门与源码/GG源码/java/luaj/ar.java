package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public final class ar extends ap {
    private final LuaValue[] a;
    private final ap b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ar(LuaValue[] luaValueArr, ap apVar) {
        this.a = luaValueArr;
        this.b = apVar;
    }

    @Override // luaj.ap
    public LuaValue c(int i) {
        return i < 1 ? LuaValue.u : i <= this.a.length ? this.a[i - 1] : this.b.c(i - this.a.length);
    }

    @Override // luaj.ap
    public int j_() {
        return this.a.length + this.b.j_();
    }

    @Override // luaj.ap
    public LuaValue g() {
        return this.a.length > 0 ? this.a[0] : this.b.g();
    }

    @Override // luaj.ap
    public ap e_(int i) {
        if (i <= 0) {
            LuaValue.a(1, "start must be > 0");
        }
        if (i != 1) {
            if (i > this.a.length) {
                return this.b.e_(i - this.a.length);
            }
            return LuaValue.a(this.a, i - 1, this.a.length - (i - 1), this.b);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // luaj.ap
    public void b(LuaValue[] luaValueArr, int i, int i2) {
        int min = Math.min(this.a.length, i2);
        System.arraycopy(this.a, 0, luaValueArr, i, min);
        this.b.b(luaValueArr, i + min, i2 - min);
    }
}
