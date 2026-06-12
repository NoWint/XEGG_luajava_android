package luaj.a;

import luaj.LuaString;

/* compiled from: src */
/* loaded from: classes.dex */
class m {
    LuaString a;
    int b;
    int c;
    short d;

    public m(LuaString luaString, int i, int i2, short s) {
        this.a = luaString;
        this.b = i;
        this.c = i2;
        this.d = s;
    }

    public String toString() {
        return "Labeldesc [name=" + this.a + ", pc=" + this.b + ", line=" + this.c + ", nactvar=" + ((int) this.d) + ']';
    }
}
