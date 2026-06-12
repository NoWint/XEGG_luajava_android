package luaj.lib;

import luaj.LuaFunction;
import luaj.LuaValue;
import luaj.ap;
import luaj.o;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class LibFunction extends LuaFunction {
    protected int aj;
    protected String ak;

    @Override // luaj.LuaFunction, luaj.LuaValue, luaj.ap
    public String d_() {
        return this.ak != null ? "function: " + this.ak : super.d_();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(LuaValue luaValue, Class cls, String[] strArr) {
        a(luaValue, cls, strArr, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(LuaValue luaValue, Class cls, String[] strArr, int i) {
        try {
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                LibFunction libFunction = (LibFunction) cls.newInstance();
                libFunction.aj = i + i2;
                libFunction.ak = strArr[i2];
                luaValue.a(libFunction.ak, libFunction);
            }
        } catch (Exception e) {
            throw new o("bind failed: " + e);
        }
    }

    @Override // luaj.LuaValue
    public LuaValue l() {
        return a(1, "value expected");
    }

    @Override // luaj.LuaValue
    public LuaValue a(LuaValue luaValue) {
        return l();
    }

    @Override // luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        return a(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return a(luaValue, luaValue2);
    }

    public LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3, LuaValue luaValue4) {
        return a(luaValue, luaValue2, luaValue3);
    }

    @Override // luaj.LuaValue
    public ap a_(ap apVar) {
        switch (apVar.j_()) {
            case 0:
                return l();
            case 1:
                return a(apVar.g());
            case 2:
                return a(apVar.g(), apVar.c(2));
            case 3:
                return a(apVar.g(), apVar.c(2), apVar.c(3));
            default:
                return a(apVar.g(), apVar.c(2), apVar.c(3), apVar.c(4));
        }
    }
}
