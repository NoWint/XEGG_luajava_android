package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public class LuaThread extends LuaValue {
    public static LuaValue a;
    public static int b = 0;
    public static final String[] c = {"suspended", "suspended", "running", "normal", "dead"};
    public final ag d;
    public Object e;
    public final Globals f;
    public LuaValue g;

    public LuaThread(Globals globals) {
        this.d = new ag(globals, this, null);
        this.d.n = 2;
        this.f = globals;
    }

    @Override // luaj.LuaValue
    public int e_() {
        return 8;
    }

    @Override // luaj.LuaValue
    public String f_() {
        return "thread";
    }

    @Override // luaj.LuaValue
    public boolean p_() {
        return true;
    }

    @Override // luaj.LuaValue
    public LuaThread R() {
        return this;
    }

    @Override // luaj.LuaValue
    public LuaValue i() {
        return a;
    }
}
