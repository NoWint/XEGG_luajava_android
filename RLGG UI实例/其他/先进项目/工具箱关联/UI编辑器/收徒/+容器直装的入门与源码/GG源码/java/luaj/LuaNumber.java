package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class LuaNumber extends LuaValue {
    public static LuaValue e;

    @Override // luaj.LuaValue
    public int e_() {
        return 3;
    }

    @Override // luaj.LuaValue
    public String f_() {
        return "number";
    }

    @Override // luaj.LuaValue
    public LuaNumber G() {
        return this;
    }

    @Override // luaj.LuaValue
    public LuaNumber b(String str) {
        return this;
    }

    @Override // luaj.LuaValue
    public LuaValue H() {
        return this;
    }

    @Override // luaj.LuaValue
    public boolean I() {
        return true;
    }

    @Override // luaj.LuaValue
    public boolean J() {
        return true;
    }

    @Override // luaj.LuaValue
    public LuaValue i() {
        return e;
    }

    @Override // luaj.LuaValue
    public LuaValue u(LuaValue luaValue) {
        return luaValue.a(this);
    }

    @Override // luaj.LuaValue
    public LuaValue a(LuaNumber luaNumber) {
        return t().b(luaNumber.t());
    }

    @Override // luaj.LuaValue
    public LuaValue b(LuaString luaString) {
        return t().b(luaString);
    }

    @Override // luaj.LuaValue
    public int c(LuaString luaString) {
        String luaString2 = luaString.toString();
        if (luaString2.length() > 50) {
            luaString2 = String.valueOf(luaString2.substring(0, 50)) + "...";
        }
        throw new o("attempt to compare number with string (" + this + " with '" + luaString2 + "')");
    }
}
