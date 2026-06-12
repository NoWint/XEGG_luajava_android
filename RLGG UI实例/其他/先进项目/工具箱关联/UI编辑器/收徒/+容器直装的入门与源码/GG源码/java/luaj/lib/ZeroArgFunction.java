package luaj.lib;

import luaj.LuaValue;
import luaj.ap;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class ZeroArgFunction extends LibFunction {
    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public abstract LuaValue l();

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue) {
        return l();
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        return l();
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return l();
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public ap a_(ap apVar) {
        return l();
    }
}
