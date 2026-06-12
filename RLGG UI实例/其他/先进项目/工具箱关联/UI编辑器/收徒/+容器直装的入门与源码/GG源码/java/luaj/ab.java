package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ab extends af {
    private long b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ab(LuaValue luaValue, long j) {
        super(luaValue);
        this.b = j;
    }

    @Override // luaj.v, luaj.ae
    public LuaValue t_() {
        return LuaTable.d(this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long h() {
        return this.b;
    }

    @Override // luaj.v
    public v a_(LuaValue luaValue) {
        if (luaValue instanceof LuaBoolean) {
            return new s(this.a, luaValue.i_());
        }
        LuaValue H = luaValue.H();
        if (H.F()) {
            return new ac(this.a, luaValue);
        }
        if (H instanceof LuaLong) {
            long q = H.q();
            int i = (int) q;
            if (i == q) {
                return new y(this.a, i);
            }
            this.b = q;
            return this;
        }
        double o = H.o();
        float f = (float) o;
        return ((double) f) == o ? new w(this.a, f) : new u(this.a, o);
    }
}
