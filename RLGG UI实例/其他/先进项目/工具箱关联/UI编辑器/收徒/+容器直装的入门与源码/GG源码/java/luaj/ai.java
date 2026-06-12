package luaj;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ai implements ah {
    private final LuaValue a;

    public ai(LuaValue luaValue) {
        this.a = luaValue;
    }

    @Override // luaj.ah
    public boolean U() {
        return false;
    }

    @Override // luaj.ah
    public boolean V() {
        return false;
    }

    @Override // luaj.ah
    public LuaValue W() {
        return this.a;
    }

    @Override // luaj.ah
    public ad e(LuaValue luaValue, LuaValue luaValue2) {
        return LuaTable.f(luaValue, luaValue2);
    }

    @Override // luaj.ah
    public LuaValue E(LuaValue luaValue) {
        return luaValue;
    }

    @Override // luaj.ah
    public LuaValue a(LuaValue[] luaValueArr, int i) {
        return luaValueArr[i];
    }
}
