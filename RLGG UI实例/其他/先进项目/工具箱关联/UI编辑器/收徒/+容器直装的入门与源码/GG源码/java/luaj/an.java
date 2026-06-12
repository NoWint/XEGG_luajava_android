package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public final class an {
    LuaValue[] a;
    int b;

    public an(LuaValue[] luaValueArr, int i) {
        this.a = luaValueArr;
        this.b = i;
    }

    public String toString() {
        return new StringBuilder().append(this.b).append('/').append(this.a.length).append(' ').append(this.a[this.b]).toString();
    }

    public final LuaValue a() {
        return this.a[this.b];
    }

    public final void a(LuaValue luaValue) {
        this.a[this.b] = luaValue;
    }

    public final void b() {
        LuaValue[] luaValueArr = this.a;
        this.a = new LuaValue[]{luaValueArr[this.b]};
        luaValueArr[this.b] = null;
        this.b = 0;
    }
}
