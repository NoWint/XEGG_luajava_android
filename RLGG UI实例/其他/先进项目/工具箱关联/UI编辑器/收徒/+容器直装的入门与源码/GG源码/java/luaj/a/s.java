package luaj.a;

import luaj.LuaLong;
import luaj.LuaValue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class s {
    short a;
    short b;
    short c;
    LuaValue d;
    int e;

    public void a(LuaValue luaValue) {
        this.d = luaValue;
    }

    public LuaValue a() {
        return this.d == null ? LuaLong.b(this.e) : this.d;
    }
}
