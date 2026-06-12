package luaj.lib;

import java.io.IOException;
import java.io.InputStream;
import luaj.Globals;
import luaj.LuaBoolean;
import luaj.LuaFunction;
import luaj.LuaString;
import luaj.LuaTable;
import luaj.LuaValue;
import luaj.ap;
import luaj.o;

/* compiled from: src */
/* loaded from: classes.dex */
public class PackageLib extends TwoArgFunction {
    public static final String a;
    static final LuaString b;
    static final LuaString c;
    static final LuaString d;
    static final LuaString e;
    static final LuaString f;
    static final LuaString l;
    static final String m;
    private static final LuaString n;
    Globals g;
    LuaTable h;
    public preload_searcher i;
    public lua_searcher j;
    public java_searcher k;

    static {
        String str;
        try {
            str = System.getProperty("luaj.package.path");
        } catch (Exception e2) {
            System.out.println(e2.toString());
            str = null;
        }
        if (str == null) {
            str = "?.lua";
        }
        a = str;
        b = m("loaded");
        n = m("loadlib");
        c = m("preload");
        d = m("path");
        e = m("searchpath");
        f = m("searchers");
        l = m("\u0001");
        m = System.getProperty("file.separator");
    }

    @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        this.g = luaValue2.c();
        this.g.a("require", new require());
        this.h = new LuaTable();
        this.h.b((LuaValue) b, (LuaValue) new LuaTable());
        this.h.b((LuaValue) c, (LuaValue) new LuaTable());
        this.h.b((LuaValue) d, (LuaValue) LuaValue.m(a));
        this.h.b((LuaValue) n, (LuaValue) new loadlib());
        this.h.b((LuaValue) e, (LuaValue) new searchpath());
        LuaValue luaTable = new LuaTable();
        preload_searcher preload_searcherVar = new preload_searcher();
        this.i = preload_searcherVar;
        luaTable.a(1, (LuaValue) preload_searcherVar);
        lua_searcher lua_searcherVar = new lua_searcher();
        this.j = lua_searcherVar;
        luaTable.a(2, (LuaValue) lua_searcherVar);
        java_searcher java_searcherVar = new java_searcher();
        this.k = java_searcherVar;
        luaTable.a(3, (LuaValue) java_searcherVar);
        this.h.b((LuaValue) f, luaTable);
        this.h.c("config", String.valueOf(m) + "\n;\n?\n!\n-\n");
        this.h.w(b).a("package", this.h);
        luaValue2.a("package", this.h);
        this.g.j = this;
        return luaValue2;
    }

    @Override // luaj.lib.LibFunction, luaj.LuaFunction, luaj.LuaValue, luaj.ap
    public String d_() {
        return "package";
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public class require extends OneArgFunction {
        public require() {
        }

        @Override // luaj.lib.OneArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            Object obj;
            ap a_;
            Object obj2;
            int i = 1;
            LuaString z = luaValue.z();
            LuaValue w = PackageLib.this.h.w(PackageLib.b);
            LuaValue w2 = w.w(z);
            if (w2.i_()) {
                if (w2 == PackageLib.l) {
                    f("loop or previous error loading module '" + z + '\'');
                    return w2;
                }
                return w2;
            }
            LuaValue w3 = PackageLib.this.h.w(PackageLib.f);
            if (!w3.N()) {
                f("'package.searchers' must be a table");
            }
            LuaTable O = w3.O();
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                try {
                    LuaValue c_ = O.c_(i);
                    if (c_.F()) {
                        f("module '" + z + "' not found: " + z + ((Object) stringBuffer));
                    }
                    a_ = c_.a_(z);
                    if (a_.g(1)) {
                        break;
                    }
                    if (a_.i(1)) {
                        stringBuffer.append(a_.y(1));
                    }
                    i++;
                } catch (Exception e) {
                    e = e;
                    obj = null;
                }
            }
            w.b((LuaValue) z, (LuaValue) PackageLib.l);
            try {
                LuaValue a = a_.g().a((LuaValue) z, a_.c(2));
                if (!a.F()) {
                    w.b((LuaValue) z, a);
                    return a;
                }
                LuaValue w4 = w.w(z);
                if (w4 == PackageLib.l) {
                    LuaBoolean luaBoolean = LuaValue.v;
                    w.b((LuaValue) z, (LuaValue) luaBoolean);
                    return luaBoolean;
                }
                return w4;
            } catch (Exception e2) {
                e = e2;
                obj = obj2;
                if (e instanceof o) {
                    ((o) e).l = "error loading module '" + z + "'" + (obj == null ? "" : " from file '" + obj + "'") + ":\n";
                }
                throw e;
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public class loadlib extends VarArgFunction {
        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            apVar.s(1);
            return a(u, (LuaValue) m("dynamic libraries not enabled"), (ap) m("absent"));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public class preload_searcher extends VarArgFunction {
        public preload_searcher() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaString s = apVar.s(1);
            LuaValue w = PackageLib.this.h.w(PackageLib.c).w(s);
            if (!w.F()) {
                return w;
            }
            return m("\n\tno field package.preload['" + s + "']");
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public class lua_searcher extends VarArgFunction {
        public lua_searcher() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaString s = apVar.s(1);
            LuaValue w = PackageLib.this.h.w(PackageLib.d);
            if (!w.J()) {
                return m("\n\tpackage.path is not a string");
            }
            ap a_ = PackageLib.this.h.w(PackageLib.e).a_(b((LuaValue) s, (ap) w));
            if (!a_.i(1)) {
                return a_.c(2).u();
            }
            LuaString t = a_.g().t();
            String d_ = t.d_();
            PackageLib.this.g.i.a((LuaString) null, d_, true, (InputStream) null);
            LuaValue c_ = PackageLib.this.g.c_(d_);
            if (c_.g().B()) {
                return LuaValue.b(c_.g(), (ap) t);
            }
            return b(u, (ap) m("'" + t + "': " + c_.c(2).d_()));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public class searchpath extends VarArgFunction {
        public searchpath() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            String r = apVar.r(1);
            String r2 = apVar.r(2);
            String c = apVar.c(3, ".");
            String c2 = apVar.c(4, PackageLib.m);
            int i = -1;
            int length = r2.length();
            StringBuffer stringBuffer = null;
            if (c.length() > 0) {
                r = r.replace(c, c2);
            }
            while (i < length) {
                int i2 = i + 1;
                i = r2.indexOf(59, i2);
                if (i < 0) {
                    i = r2.length();
                }
                String replace = r2.substring(i2, i).replace("?", r);
                InputStream c3 = PackageLib.this.g.g.c(replace);
                if (c3 != null) {
                    try {
                        c3.close();
                    } catch (IOException e) {
                    }
                    return m(replace);
                }
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer();
                }
                stringBuffer.append("\n\t" + replace);
            }
            return b(u, (ap) m(stringBuffer.toString()));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public class java_searcher extends VarArgFunction {
        public java_searcher() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            String c = PackageLib.c(apVar.r(1));
            try {
                LuaValue luaValue = (LuaValue) Class.forName(c).newInstance();
                if (luaValue.B()) {
                    ((LuaFunction) luaValue).K(PackageLib.this.g);
                }
                return b(luaValue, (ap) PackageLib.this.g);
            } catch (ClassNotFoundException e) {
                return m("\n\tno class '" + c + '\'');
            } catch (Exception e2) {
                return m("\n\tjava load failed on '" + c + "', " + e2);
            }
        }
    }

    public static final String c(String str) {
        int length = str.length();
        int i = str.endsWith(".lua") ? length - 4 : length;
        for (int i2 = 0; i2 < i; i2++) {
            char charAt = str.charAt(i2);
            if (!a(charAt) || charAt == '/' || charAt == '\\') {
                StringBuffer stringBuffer = new StringBuffer(i);
                for (int i3 = 0; i3 < i; i3++) {
                    char charAt2 = str.charAt(i3);
                    if (!a(charAt2)) {
                        charAt2 = (charAt2 == '/' || charAt2 == '\\') ? '.' : '_';
                    }
                    stringBuffer.append(charAt2);
                }
                return stringBuffer.toString();
            }
        }
        return length == i ? str : str.substring(0, i);
    }

    private static final boolean a(char c2) {
        if (c2 < 'a' || c2 > 'z') {
            if (c2 < 'A' || c2 > 'Z') {
                if (c2 < '0' || c2 > '9') {
                    switch (c2) {
                        case '$':
                        case '.':
                        case '_':
                            return true;
                        default:
                            return false;
                    }
                }
                return true;
            }
            return true;
        }
        return true;
    }
}
