package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public class ao {
    public LuaString a;
    public final boolean b;
    public final short c;

    public ao(LuaString luaString, boolean z, int i) {
        this.a = luaString;
        this.b = z;
        this.c = (short) i;
    }

    public String toString() {
        return String.valueOf(String.valueOf(this.b ? 'v' : 'u')) + ((int) this.c) + " \"" + String.valueOf(this.a) + "\"";
    }
}
