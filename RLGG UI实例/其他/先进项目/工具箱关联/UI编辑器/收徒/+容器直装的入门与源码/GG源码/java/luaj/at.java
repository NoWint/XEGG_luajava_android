package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
class at extends av {
    private final int d;

    /* JADX INFO: Access modifiers changed from: protected */
    public at(LuaValue luaValue, LuaValue luaValue2, ad adVar) {
        super(WeakTable.a(luaValue), WeakTable.a(luaValue2), adVar);
        this.d = luaValue.hashCode();
    }

    protected at(at atVar, ad adVar) {
        super(atVar.a, atVar.b, adVar);
        this.d = atVar.d;
    }

    @Override // luaj.ad
    public int a(int i) {
        return LuaTable.c(this.d, i);
    }

    @Override // luaj.av
    public ad c(LuaValue luaValue) {
        this.b = WeakTable.a(luaValue);
        return this;
    }

    @Override // luaj.av
    public LuaValue c() {
        return WeakTable.a(this.a);
    }

    @Override // luaj.av
    public LuaValue d() {
        return WeakTable.a(this.b);
    }

    @Override // luaj.av
    protected av c(ad adVar) {
        return new at(this, adVar);
    }
}
