package luaj.lib;

import luaj.LuaTable;
import luaj.LuaValue;
import luaj.ap;

/* compiled from: src */
/* loaded from: classes.dex */
public class Bit32Lib extends TwoArgFunction {
    @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        a(luaTable, Bit32LibV.class, new String[]{"band", "bnot", "bor", "btest", "bxor", "extract", "replace"});
        a(luaTable, Bit32Lib2.class, new String[]{"arshift", "lrotate", "lshift", "rrotate", "rshift"});
        luaValue2.a("bit32", luaTable);
        if (!luaValue2.j("package").F()) {
            luaValue2.j("package").j("loaded").a("bit32", luaTable);
        }
        return luaTable;
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class Bit32LibV extends VarArgFunction {
        Bit32LibV() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            switch (this.aj) {
                case 0:
                    return Bit32Lib.b(apVar);
                case 1:
                    return Bit32Lib.c(apVar);
                case 2:
                    return Bit32Lib.d(apVar);
                case 3:
                    return Bit32Lib.e(apVar);
                case 4:
                    return Bit32Lib.f(apVar);
                case 5:
                    return Bit32Lib.a((int) apVar.p(1), (int) apVar.p(2), (int) apVar.a(3, 1L));
                case 6:
                    return Bit32Lib.a((int) apVar.p(1), (int) apVar.p(2), (int) apVar.p(3), (int) apVar.a(4, 1L));
                default:
                    return u;
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class Bit32Lib2 extends TwoArgFunction {
        Bit32Lib2() {
        }

        @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            switch (this.aj) {
                case 0:
                    return Bit32Lib.a((int) luaValue.w(), (int) luaValue2.w());
                case 1:
                    return Bit32Lib.e((int) luaValue.w(), (int) luaValue2.w());
                case 2:
                    return Bit32Lib.c((int) luaValue.w(), (int) luaValue2.w());
                case 3:
                    return Bit32Lib.f((int) luaValue.w(), (int) luaValue2.w());
                case 4:
                    return Bit32Lib.b((int) luaValue.w(), (int) luaValue2.w());
                default:
                    return u;
            }
        }
    }

    static LuaValue a(int i, int i2) {
        return i2 >= 0 ? e(i >> i2) : e(i << (-i2));
    }

    static LuaValue b(int i, int i2) {
        if (i2 >= 32 || i2 <= -32) {
            return y;
        }
        if (i2 >= 0) {
            return e(i >>> i2);
        }
        return e(i << (-i2));
    }

    static LuaValue c(int i, int i2) {
        if (i2 >= 32 || i2 <= -32) {
            return y;
        }
        if (i2 >= 0) {
            return e(i << i2);
        }
        return e(i >>> (-i2));
    }

    static ap b(ap apVar) {
        int i = -1;
        for (int i2 = 1; i2 <= apVar.j_(); i2++) {
            i &= (int) apVar.p(i2);
        }
        return e(i);
    }

    static ap c(ap apVar) {
        return e(((int) apVar.p(1)) ^ (-1));
    }

    static ap d(ap apVar) {
        int i = 0;
        for (int i2 = 1; i2 <= apVar.j_(); i2++) {
            i |= (int) apVar.p(i2);
        }
        return e(i);
    }

    static ap e(ap apVar) {
        int i = -1;
        for (int i2 = 1; i2 <= apVar.j_(); i2++) {
            i &= (int) apVar.p(i2);
        }
        return b(i != 0);
    }

    static ap f(ap apVar) {
        int i = 0;
        for (int i2 = 1; i2 <= apVar.j_(); i2++) {
            i ^= (int) apVar.p(i2);
        }
        return e(i);
    }

    static LuaValue e(int i, int i2) {
        if (i2 < 0) {
            return f(i, -i2);
        }
        int i3 = i2 & 31;
        return e((i >>> (32 - i3)) | (i << i3));
    }

    static LuaValue f(int i, int i2) {
        if (i2 < 0) {
            return e(i, -i2);
        }
        int i3 = i2 & 31;
        return e((i << (32 - i3)) | (i >>> i3));
    }

    static LuaValue a(int i, int i2, int i3) {
        if (i2 < 0) {
            a(2, "field cannot be negative");
        }
        if (i3 < 0) {
            a(3, "width must be postive");
        }
        if (i2 + i3 > 32) {
            f("trying to access non-existent bits");
        }
        return e((i >>> i2) & ((-1) >>> (32 - i3)));
    }

    static LuaValue a(int i, int i2, int i3, int i4) {
        if (i3 < 0) {
            a(3, "field cannot be negative");
        }
        if (i4 < 0) {
            a(4, "width must be postive");
        }
        if (i3 + i4 > 32) {
            f("trying to access non-existent bits");
        }
        int i5 = ((-1) >>> (32 - i4)) << i3;
        return e((i5 & (i2 << i3)) | ((i5 ^ (-1)) & i));
    }

    private static LuaValue e(int i) {
        return i < 0 ? d(i & 4294967295L) : d(i);
    }
}
