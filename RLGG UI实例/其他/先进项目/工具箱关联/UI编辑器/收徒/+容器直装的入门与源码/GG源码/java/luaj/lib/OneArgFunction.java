package luaj.lib;

import luaj.LuaValue;
import luaj.ap;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class OneArgFunction extends LibFunction {
    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public abstract LuaValue a(LuaValue luaValue);

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public final LuaValue l() {
        return a(u);
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public final LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        return a(luaValue);
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return a(luaValue);
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public ap a_(ap apVar) {
        return a(apVar.g());
    }
}
