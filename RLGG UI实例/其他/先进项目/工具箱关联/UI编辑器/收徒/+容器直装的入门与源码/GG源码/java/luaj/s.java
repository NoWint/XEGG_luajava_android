package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class s extends af {
    private boolean b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(LuaValue luaValue, boolean z) {
        super(luaValue);
        this.b = z;
    }

    @Override // luaj.v, luaj.ae
    public LuaValue t_() {
        return LuaTable.b(this.b);
    }

    @Override // luaj.v
    public v a_(LuaValue luaValue) {
        if (luaValue instanceof LuaBoolean) {
            this.b = luaValue == LuaValue.v;
            return this;
        } else if (luaValue instanceof LuaLong) {
            long q = luaValue.q();
            int i = (int) q;
            return ((long) i) == q ? new y(this.a, i) : new ab(this.a, q);
        } else if (luaValue instanceof LuaDouble) {
            double o = luaValue.o();
            float f = (float) o;
            return ((double) f) == o ? new w(this.a, f) : new u(this.a, o);
        } else {
            return new ac(this.a, luaValue);
        }
    }
}
