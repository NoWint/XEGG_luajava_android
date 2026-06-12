package luaj.a;

import java.io.InputStream;
import luaj.Globals;
import luaj.LuaClosure;
import luaj.LuaFunction;
import luaj.LuaValue;
import luaj.al;

/* compiled from: src */
/* loaded from: classes.dex */
public class t extends a implements luaj.b, luaj.c {
    public static final t b = new t();

    public static void a(Globals globals) {
        globals.m = b;
        globals.l = b;
    }

    protected t() {
    }

    @Override // luaj.b
    public al a(InputStream inputStream, String str) {
        return new u().a(inputStream, str);
    }

    @Override // luaj.c
    public LuaFunction a(al alVar, String str, LuaValue luaValue) {
        return new LuaClosure(alVar, luaValue, true);
    }
}
