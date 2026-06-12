package luaj.lib;

import luaj.LuaValue;
import luaj.ap;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class VarArgFunction extends LibFunction {
    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue l() {
        return a_(x).g();
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue) {
        return a_(luaValue).g();
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        return a_(b(luaValue, (ap) luaValue2)).g();
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return a_(a(luaValue, luaValue2, (ap) luaValue3)).g();
    }

    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public ap a_(ap apVar) {
        return a(apVar, false).b();
    }
}
