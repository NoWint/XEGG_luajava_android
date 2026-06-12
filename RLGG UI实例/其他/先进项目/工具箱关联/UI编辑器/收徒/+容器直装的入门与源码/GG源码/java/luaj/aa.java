package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
class aa implements ae {
    private v a;
    private ad b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aa(v vVar, ad adVar) {
        this.a = vVar;
        this.b = adVar;
    }

    @Override // luaj.ae
    public LuaValue c() {
        return this.a.c();
    }

    @Override // luaj.ad
    public int a(int i) {
        return this.a.a(i);
    }

    @Override // luaj.ae
    public LuaValue t_() {
        return this.a.t_();
    }

    @Override // luaj.ae
    public ap f() {
        return this.a.f();
    }

    @Override // luaj.ad
    public ae a() {
        return this.a;
    }

    @Override // luaj.ad
    public ae a(LuaValue luaValue) {
        if (this.a.b(luaValue)) {
            return this;
        }
        return null;
    }

    @Override // luaj.ad
    public boolean b(LuaValue luaValue) {
        return this.a.b(luaValue);
    }

    @Override // luaj.ad
    public ad u_() {
        return this.b;
    }

    @Override // luaj.ad
    public int b(int i) {
        return this.a.b(i);
    }

    @Override // luaj.ad
    public ad a(ae aeVar, LuaValue luaValue) {
        if (aeVar == this) {
            this.a = this.a.a_(luaValue);
            return this;
        }
        return c(this.b.a(aeVar, luaValue));
    }

    @Override // luaj.ad
    public ad a(ad adVar) {
        return c(this.b.a(adVar));
    }

    @Override // luaj.ad
    public ad a(ae aeVar) {
        if (this == aeVar) {
            return new t(c(), this.b, null);
        }
        this.b = this.b.a(aeVar);
        return this;
    }

    @Override // luaj.ad
    public ad b(ad adVar) {
        return adVar != null ? new aa(this.a, adVar) : this.a;
    }

    private ad c(ad adVar) {
        if (adVar != null) {
            this.b = adVar;
            return this;
        }
        return this.a;
    }

    public String toString() {
        return this.a + "; " + this.b;
    }
}
