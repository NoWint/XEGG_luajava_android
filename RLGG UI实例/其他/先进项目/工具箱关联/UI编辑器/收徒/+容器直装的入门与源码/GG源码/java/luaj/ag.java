package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public class ag implements Runnable {
    public final LuaValue a;
    public LuaFunction e;
    public boolean f;
    public boolean g;
    public boolean h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    private final Globals o;
    ap b = LuaValue.x;
    ap c = LuaValue.x;
    String d = null;
    public int n = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(Globals globals, LuaThread luaThread, LuaValue luaValue) {
        this.o = globals;
        this.a = luaValue;
    }

    @Override // java.lang.Runnable
    public synchronized void run() {
        ap apVar = this.b;
        this.b = LuaValue.x;
        this.c = this.a.a_(apVar);
        this.n = 4;
        notify();
    }
}
