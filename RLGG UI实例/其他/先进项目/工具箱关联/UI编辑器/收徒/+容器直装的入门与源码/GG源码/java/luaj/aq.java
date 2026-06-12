package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public final class aq extends ap {
    private final int a;
    private final LuaValue[] b;
    private final int c;
    private final ap d;

    public aq(LuaValue[] luaValueArr, int i, int i2, ap apVar) {
        this.b = luaValueArr;
        this.a = i;
        this.c = i2;
        this.d = apVar;
    }

    @Override // luaj.ap
    public LuaValue c(int i) {
        return i < 1 ? LuaValue.u : i <= this.c ? this.b[(this.a + i) - 1] : this.d.c(i - this.c);
    }

    @Override // luaj.ap
    public int j_() {
        return this.c + this.d.j_();
    }

    @Override // luaj.ap
    public LuaValue g() {
        return this.c > 0 ? this.b[this.a] : this.d.g();
    }

    @Override // luaj.ap
    public ap e_(int i) {
        if (i <= 0) {
            LuaValue.a(1, "start must be > 0");
        }
        if (i != 1) {
            if (i > this.c) {
                return this.d.e_(i - this.c);
            }
            return LuaValue.a(this.b, (this.a + i) - 1, this.c - (i - 1), this.d);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // luaj.ap
    public void b(LuaValue[] luaValueArr, int i, int i2) {
        int min = Math.min(this.c, i2);
        System.arraycopy(this.b, this.a, luaValueArr, i, min);
        this.d.b(luaValueArr, i + min, i2 - min);
    }
}
