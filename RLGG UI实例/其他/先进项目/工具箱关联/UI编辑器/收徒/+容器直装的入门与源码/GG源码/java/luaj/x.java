package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class x extends v {
    private final int a;
    private LuaValue b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(int i, LuaValue luaValue) {
        this.a = i;
        this.b = luaValue;
    }

    @Override // luaj.v, luaj.ae
    public LuaValue c() {
        return LuaTable.d(this.a);
    }

    @Override // luaj.v, luaj.ad
    public int b(int i) {
        if (this.a < 1 || this.a > i) {
            return 0;
        }
        return this.a;
    }

    @Override // luaj.v, luaj.ae
    public LuaValue t_() {
        return this.b;
    }

    @Override // luaj.v
    public v a_(LuaValue luaValue) {
        this.b = luaValue;
        return this;
    }

    @Override // luaj.v, luaj.ad
    public int a(int i) {
        return LuaTable.c(LuaLong.c(this.a), i);
    }

    @Override // luaj.v, luaj.ad
    public boolean b(LuaValue luaValue) {
        return luaValue.I() && this.a == luaValue.p();
    }
}
