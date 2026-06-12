package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public final class LuaBoolean extends LuaValue {
    public static LuaValue a;
    public final boolean b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LuaBoolean(boolean z) {
        this.b = z;
    }

    @Override // luaj.LuaValue
    public int e_() {
        return 1;
    }

    @Override // luaj.LuaValue
    public String f_() {
        return "boolean";
    }

    @Override // luaj.LuaValue
    public boolean n_() {
        return true;
    }

    @Override // luaj.LuaValue
    public LuaValue k_() {
        return this.b ? w : LuaValue.v;
    }

    @Override // luaj.LuaValue
    public boolean i_() {
        return this.b;
    }

    @Override // luaj.LuaValue, luaj.ap
    public String d_() {
        return this.b ? "true" : "false";
    }

    @Override // luaj.LuaValue
    public boolean a(boolean z) {
        return this.b;
    }

    @Override // luaj.LuaValue
    public boolean h() {
        return this.b;
    }

    @Override // luaj.LuaValue
    public LuaValue i() {
        return a;
    }
}
