package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public abstract class v extends ap implements ae {
    public abstract int a(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract v a_(LuaValue luaValue);

    public abstract boolean b(LuaValue luaValue);

    public abstract LuaValue c();

    public abstract LuaValue t_();

    @Override // luaj.ad
    public int b(int i) {
        return 0;
    }

    @Override // luaj.ap
    public LuaValue c(int i) {
        switch (i) {
            case 1:
                return c();
            case 2:
                return t_();
            default:
                return LuaTable.u;
        }
    }

    @Override // luaj.ap
    public int j_() {
        return 2;
    }

    public ap f() {
        return this;
    }

    @Override // luaj.ap
    public LuaValue g() {
        return c();
    }

    @Override // luaj.ap
    public ap e_(int i) {
        switch (i) {
            case 1:
                return this;
            case 2:
                return t_();
            default:
                return LuaTable.x;
        }
    }

    @Override // luaj.ad
    public ae a() {
        return this;
    }

    @Override // luaj.ad
    public ad u_() {
        return null;
    }

    @Override // luaj.ad
    public ae a(LuaValue luaValue) {
        if (b(luaValue)) {
            return this;
        }
        return null;
    }

    @Override // luaj.ad
    public ad a(ae aeVar, LuaValue luaValue) {
        return a_(luaValue);
    }

    @Override // luaj.ad
    public ad a(ad adVar) {
        return new aa(this, adVar);
    }

    @Override // luaj.ad
    public ad a(ae aeVar) {
        return new t(c(), null, null);
    }

    @Override // luaj.ad
    public ad b(ad adVar) {
        return adVar != null ? new aa(this, adVar) : this;
    }
}
