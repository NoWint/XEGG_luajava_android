package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class u extends af {
    private double b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(LuaValue luaValue, double d) {
        super(luaValue);
        this.b = d;
    }

    @Override // luaj.v, luaj.ae
    public LuaValue t_() {
        return LuaTable.c(this.b);
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
            return ((long) i) == q ? new y(this.a, i) : new ab(this.a, q);
        }
        double o = H.o();
        float f = (float) o;
        if (f == o) {
            return new w(this.a, f);
        }
        this.b = o;
        return this;
    }
}
