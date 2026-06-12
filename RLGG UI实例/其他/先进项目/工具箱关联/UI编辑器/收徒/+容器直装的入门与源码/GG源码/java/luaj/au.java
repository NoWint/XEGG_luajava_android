package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
class au extends av {
    private final int d;

    /* JADX INFO: Access modifiers changed from: protected */
    public au(LuaValue luaValue, LuaValue luaValue2, ad adVar) {
        super(WeakTable.a(luaValue), luaValue2, adVar);
        this.d = luaValue.hashCode();
    }

    protected au(au auVar, ad adVar) {
        super(auVar.a, auVar.b, adVar);
        this.d = auVar.d;
    }

    @Override // luaj.ad
    public int a(int i) {
        return LuaTable.c(this.d, i);
    }

    @Override // luaj.av
    public ad c(LuaValue luaValue) {
        this.b = luaValue;
        return this;
    }

    @Override // luaj.av
    public LuaValue c() {
        return WeakTable.a(this.a);
    }

    @Override // luaj.av
    protected av c(ad adVar) {
        return new au(this, adVar);
    }
}
