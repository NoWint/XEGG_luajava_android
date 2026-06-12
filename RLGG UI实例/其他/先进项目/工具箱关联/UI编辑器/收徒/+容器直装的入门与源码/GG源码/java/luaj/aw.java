package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
class aw extends av {
    /* JADX INFO: Access modifiers changed from: protected */
    public aw(LuaValue luaValue, LuaValue luaValue2, ad adVar) {
        super(luaValue, WeakTable.a(luaValue2), adVar);
    }

    protected aw(aw awVar, ad adVar) {
        super(awVar.a, awVar.b, adVar);
    }

    @Override // luaj.ad
    public int a(int i) {
        return LuaTable.a(c(), i);
    }

    @Override // luaj.av
    public ad c(LuaValue luaValue) {
        this.b = WeakTable.a(luaValue);
        return this;
    }

    @Override // luaj.av
    public LuaValue d() {
        return WeakTable.a(this.b);
    }

    @Override // luaj.av
    protected av c(ad adVar) {
        return new aw(this, adVar);
    }
}
