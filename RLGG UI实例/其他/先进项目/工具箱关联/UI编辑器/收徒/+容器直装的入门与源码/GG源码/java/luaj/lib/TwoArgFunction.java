package luaj.lib;

import luaj.LuaValue;
import luaj.ap;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class TwoArgFunction extends LibFunction {
    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public abstract LuaValue a(LuaValue luaValue, LuaValue luaValue2);

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public final LuaValue l() {
        return a(u, u);
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public final LuaValue a(LuaValue luaValue) {
        return a(luaValue, u);
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return a(luaValue, luaValue2);
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public ap a_(ap apVar) {
        return a(apVar.g(), apVar.c(2));
    }
}
