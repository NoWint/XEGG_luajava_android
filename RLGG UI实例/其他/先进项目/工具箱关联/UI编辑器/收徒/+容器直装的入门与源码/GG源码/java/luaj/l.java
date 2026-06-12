package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public class l {
    public LuaString a;
    public int b;
    public int c;

    public l(LuaString luaString, int i, int i2) {
        this.a = luaString;
        this.b = i;
        this.c = i2;
    }

    public String a() {
        return new StringBuilder().append(this.a).append(' ').append(this.b).append('-').append(this.c).toString();
    }

    public String toString() {
        return a();
    }
}
