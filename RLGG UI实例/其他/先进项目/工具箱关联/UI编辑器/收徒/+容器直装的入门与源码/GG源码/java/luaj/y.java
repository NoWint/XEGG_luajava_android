package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class y extends af {
    private int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y(LuaValue luaValue, int i) {
        super(luaValue);
        this.b = i;
    }

    @Override // luaj.v, luaj.ae
    public LuaValue t_() {
        return LuaTable.d(this.b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h() {
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
                this.b = i;
                return this;
            }
            return new ab(this.a, q);
        }
        double o = H.o();
        float f = (float) o;
        return ((double) f) == o ? new w(this.a, f) : new u(this.a, o);
    }
}
