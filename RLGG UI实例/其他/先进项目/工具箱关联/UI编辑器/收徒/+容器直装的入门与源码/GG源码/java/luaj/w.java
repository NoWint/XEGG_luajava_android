package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class w extends af {
    private float b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(LuaValue luaValue, float f) {
        super(luaValue);
        this.b = f;
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
            this.b = f;
            return this;
        }
        return new u(this.a, o);
    }
}
