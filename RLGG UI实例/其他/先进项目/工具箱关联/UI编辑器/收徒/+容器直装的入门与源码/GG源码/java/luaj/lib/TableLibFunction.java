package luaj.lib;

import luaj.LuaValue;

/* compiled from: src */
/* loaded from: classes.dex */
class TableLibFunction extends LibFunction {
    @Override // luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue l() {
        return a(1, "table expected, got no value");
    }
}
