package luaj.a;

import java.io.InputStream;
import java.util.Hashtable;
import luaj.LuaString;
import luaj.LuaValue;
import luaj.al;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class u {
    int a = 0;
    private Hashtable b = new Hashtable();

    /* JADX INFO: Access modifiers changed from: package-private */
    public al a(InputStream inputStream, String str) {
        boolean z = false;
        h hVar = new h(this, inputStream);
        c cVar = new c();
        hVar.h = cVar;
        hVar.a(this, inputStream.read(), inputStream, LuaValue.m(str));
        cVar.b = new al();
        cVar.b.w = LuaValue.m(str);
        hVar.a(cVar);
        t.a(cVar.d == null);
        if (hVar.m == null || (hVar.m.b == 0 && hVar.m.d == 0 && hVar.m.f == 0)) {
            z = true;
        }
        t.a(z);
        return cVar.b;
    }

    public LuaString a(String str) {
        return b(LuaString.c(str));
    }

    public LuaString a(LuaString luaString) {
        return b(luaString);
    }

    public LuaString b(LuaString luaString) {
        LuaString luaString2 = (LuaString) this.b.get(luaString);
        if (luaString2 == null) {
            this.b.put(luaString, luaString);
            return luaString;
        }
        return luaString2;
    }

    public String b(String str) {
        return str;
    }
}
