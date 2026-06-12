package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public class LuaNil extends LuaValue {
    public static LuaValue a;

    @Override // luaj.LuaValue
    public int e_() {
        return 0;
    }

    @Override // luaj.LuaValue, luaj.ap
    public String toString() {
        return "nil";
    }

    @Override // luaj.LuaValue
    public String f_() {
        return "nil";
    }

    @Override // luaj.LuaValue, luaj.ap
    public String d_() {
        return "nil";
    }

    @Override // luaj.LuaValue
    public LuaValue k_() {
        return LuaValue.v;
    }

    @Override // luaj.LuaValue
    public boolean i_() {
        return false;
    }

    @Override // luaj.LuaValue
    public boolean F() {
        return true;
    }

    @Override // luaj.LuaValue
    public LuaValue i() {
        return a;
    }

    @Override // luaj.LuaValue
    public boolean equals(Object obj) {
        return obj instanceof LuaNil;
    }

    @Override // luaj.LuaValue
    public boolean A() {
        return false;
    }

    @Override // luaj.LuaValue
    public boolean a(boolean z) {
        return z;
    }

    @Override // luaj.LuaValue
    public double b(double d) {
        return d;
    }

    @Override // luaj.LuaValue
    public LuaFunction a(LuaFunction luaFunction) {
        return luaFunction;
    }

    @Override // luaj.LuaValue
    public int b_(int i) {
        return i;
    }

    @Override // luaj.LuaValue
    public long a_(long j) {
        return j;
    }

    @Override // luaj.LuaValue
    public LuaTable a(LuaTable luaTable) {
        return luaTable;
    }

    @Override // luaj.LuaValue
    public String b_(String str) {
        return str;
    }

    @Override // luaj.LuaValue
    public LuaString a(LuaString luaString) {
        return luaString;
    }

    @Override // luaj.LuaValue
    public LuaValue t(LuaValue luaValue) {
        return luaValue;
    }
}
