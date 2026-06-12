package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ac extends af {
    private LuaValue b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(LuaValue luaValue, LuaValue luaValue2) {
        super(luaValue);
        this.b = luaValue2;
    }

    @Override // luaj.v, luaj.ae
    public LuaValue t_() {
        return this.b;
    }

    @Override // luaj.v
    public v a_(LuaValue luaValue) {
        if (luaValue instanceof LuaBoolean) {
            return new s(this.a, luaValue.i_());
        }
        if (luaValue instanceof LuaLong) {
            long q = luaValue.q();
            int i = (int) q;
            return ((long) i) == q ? new y(this.a, i) : new ab(this.a, q);
        } else if (luaValue instanceof LuaDouble) {
            double o = luaValue.o();
            float f = (float) o;
            return ((double) f) == o ? new w(this.a, f) : new u(this.a, o);
        } else {
            this.b = luaValue;
            return this;
        }
    }

    @Override // luaj.v, luaj.ae
    public ap f() {
        return this;
    }
}
