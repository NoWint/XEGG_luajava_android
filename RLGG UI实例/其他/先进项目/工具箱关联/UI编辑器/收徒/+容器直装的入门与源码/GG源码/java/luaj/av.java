package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class av implements ad {
    protected Object a;
    protected Object b;
    protected ad c;

    public abstract ad c(LuaValue luaValue);

    protected abstract av c(ad adVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public av(Object obj, Object obj2, ad adVar) {
        this.a = obj;
        this.b = obj2;
        this.c = adVar;
    }

    @Override // luaj.ad
    public ae a() {
        LuaValue c = c();
        LuaValue d = d();
        if (c != null && d != null) {
            return new ac(c, d);
        }
        this.a = null;
        this.b = null;
        return null;
    }

    @Override // luaj.ad
    public ae a(LuaValue luaValue) {
        ae a = a();
        if (a != null) {
            return a.a(luaValue);
        }
        return null;
    }

    @Override // luaj.ad
    public boolean b(LuaValue luaValue) {
        ae a = a();
        return a != null && a.b(luaValue);
    }

    @Override // luaj.ad
    public ad u_() {
        return this.c;
    }

    @Override // luaj.ad
    public int b(int i) {
        return 0;
    }

    @Override // luaj.ad
    public ad a(ae aeVar, LuaValue luaValue) {
        LuaValue c = c();
        if (c != null && aeVar.a(c) != null) {
            return c(luaValue);
        }
        if (c != null) {
            this.c = this.c.a(aeVar, luaValue);
            return this;
        }
        return this.c.a(aeVar, luaValue);
    }

    @Override // luaj.ad
    public ad a(ad adVar) {
        if (this.c != null) {
            adVar = this.c.a(adVar);
        }
        this.c = adVar;
        return (c() == null || d() == null) ? this.c : this;
    }

    @Override // luaj.ad
    public ad a(ae aeVar) {
        LuaValue c = c();
        if (c == null) {
            return this.c.a(aeVar);
        }
        if (aeVar.b(c)) {
            this.b = null;
            return this;
        }
        this.c = this.c.a(aeVar);
        return this;
    }

    @Override // luaj.ad
    public ad b(ad adVar) {
        if (c() == null || d() == null) {
            return adVar;
        }
        if (adVar != null || this.c != null) {
            return c(adVar);
        }
        return this;
    }

    public LuaValue c() {
        return (LuaValue) this.a;
    }

    public LuaValue d() {
        return (LuaValue) this.b;
    }
}
