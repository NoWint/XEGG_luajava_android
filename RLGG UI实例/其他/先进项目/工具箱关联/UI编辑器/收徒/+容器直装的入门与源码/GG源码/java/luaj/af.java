package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public abstract class af extends v {
    protected final LuaValue a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public af(LuaValue luaValue) {
        this.a = luaValue;
    }

    @Override // luaj.v, luaj.ae
    public final LuaValue c() {
        return this.a;
    }

    @Override // luaj.v, luaj.ad
    public final int a(int i) {
        return LuaTable.a(this.a, i);
    }

    @Override // luaj.v, luaj.ad
    public final boolean b(LuaValue luaValue) {
        return luaValue.c(this.a);
    }
}
