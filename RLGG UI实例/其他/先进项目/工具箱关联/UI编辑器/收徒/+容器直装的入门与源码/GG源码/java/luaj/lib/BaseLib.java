package luaj.lib;

import android.ext.la;
import android.os.Build;
import android.system.Os;
import android.system.OsConstants;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import luaj.Globals;
import luaj.LuaClosure;
import luaj.LuaFunction;
import luaj.LuaString;
import luaj.LuaTable;
import luaj.LuaThread;
import luaj.LuaValue;
import luaj.ap;
import luaj.o;

/* compiled from: src */
/* loaded from: classes.dex */
public class BaseLib extends TwoArgFunction implements j {
    Globals a;
    private c c = null;
    byte[] b = null;

    @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        Globals c = luaValue2.c();
        this.a = c;
        c.g = this;
        c.i = this;
        if (c.a) {
            luaValue2.a("_G", luaValue2);
            luaValue2.c("_VERSION", "Lua 5.3 (with Luaj 3.0.1)");
            luaValue2.a("assert", new _assert());
            luaValue2.a("assert2", new assert2());
            luaValue2.a("collectgarbage", new collectgarbage());
            luaValue2.a("dofile", new dofile());
            luaValue2.a("error", new error());
            luaValue2.a("getmetatable", new getmetatable());
            luaValue2.a("load", new load());
            luaValue2.a("loadfile", new loadfile());
            luaValue2.a("pcall", new pcall());
            luaValue2.a("print", new print(this));
        }
        luaValue2.a("rawequal", new rawequal());
        luaValue2.a("rawget", new rawget());
        luaValue2.a("rawlen", new rawlen());
        luaValue2.a("rawset", new rawset());
        luaValue2.a("select", new select());
        if (c.a) {
            luaValue2.a("setmetatable", new setmetatable());
        }
        luaValue2.a("tonumber", new tonumber());
        luaValue2.a("tostring", new tostring());
        luaValue2.a("type", new type());
        if (c.a) {
            luaValue2.a("xpcall", new xpcall());
        }
        next nextVar = new next();
        luaValue2.a("next", nextVar);
        luaValue2.a("pairs", new pairs(nextVar));
        luaValue2.a("ipairs", new ipairs());
        return luaValue2;
    }

    @Override // luaj.lib.j
    public InputStream c(String str) {
        try {
            return new b(new FileInputStream(this.a.d(str)));
        } catch (IOException e) {
            return null;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class _assert extends VarArgFunction {
        _assert() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            if (apVar.j_() == 0) {
                a(1, "assert", "value expected");
            }
            if (!apVar.w(1)) {
                if (apVar.j_() == 1) {
                    throw new o("assertion failed!");
                }
                throw new o(apVar.c(2));
            }
            return apVar;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class assert2 extends VarArgFunction {
        assert2() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            String str;
            LuaValue c = apVar.c(1);
            LuaValue c2 = apVar.c(2);
            if (!c.b(c2)) {
                if (!c.u().equals(c2.u())) {
                    str = c + " ~= " + c2;
                } else if (!c.f_().equals(c2.f_())) {
                    str = c + " [" + c.f_() + "] ~= " + c2 + " [" + c2.f_() + "]";
                } else {
                    str = c + " {" + c.getClass() + "} ~= " + c2 + " {" + c2.getClass() + "}";
                }
                f(String.valueOf(str) + ": " + apVar.c(3, "assertion failed!"));
            }
            return apVar;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class collectgarbage extends VarArgFunction {
        collectgarbage() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            String c = apVar.c(1, "collect");
            if ("collect".equals(c)) {
                System.gc();
                return y;
            } else if ("count".equals(c)) {
                Runtime runtime = Runtime.getRuntime();
                long freeMemory = runtime.totalMemory() - runtime.freeMemory();
                return b((LuaValue) c(freeMemory / 1024.0d), (ap) d(freeMemory % 1024));
            } else if ("step".equals(c)) {
                System.gc();
                return LuaValue.v;
            } else {
                a(1, "collectgarbage", "invalid option '" + c + "'");
                return u;
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class dofile extends VarArgFunction {
        dofile() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaValue g = apVar.g();
            if (!g.J() && !g.F()) {
                a(1, "dofile", "string expected, got " + g.f_());
            }
            ap a = BaseLib.this.a(g.y(), "bt", BaseLib.this.a);
            return a.f(1) ? f(a.y(2)) : a.g().Y();
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class error extends TwoArgFunction {
        error() {
        }

        @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            if (luaValue.F()) {
                throw new o(u);
            }
            if (!luaValue.J() || luaValue2.b_(1) == 0) {
                throw new o(luaValue);
            }
            throw new o(luaValue.d_(), luaValue2.b_(1));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getmetatable extends LibFunction {
        getmetatable() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue l() {
            return a(1, "value expected");
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            LuaValue i = luaValue.i();
            return i != null ? i.x(H).t(i) : u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class load extends VarArgFunction {
        load() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaValue g = apVar.g();
            if (!g.J() && !g.B()) {
                a(1, "load", "string or function expected, got " + g.f_());
            }
            String c = apVar.c(2, g.J() ? g.d_() : "=(load)");
            String c2 = apVar.c(3, "bt");
            LuaValue d = apVar.d(4, BaseLib.this.a);
            LuaString t = g.J() ? g.t() : null;
            InputStream r_ = t != null ? t.r_() : new d(g.C());
            if (BaseLib.this.c != null) {
                r_ = BaseLib.this.a(t, (String) null, false, r_);
            }
            return BaseLib.this.a(r_, c, c2, d);
        }
    }

    public void S() {
        if (this.c != null) {
            this.c.a();
        }
    }

    public void d(String str) {
        try {
            this.c = new c(this, str);
        } catch (Throwable th) {
            la.a("Failed prepare log loads for " + str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public InputStream a(LuaString luaString, String str, boolean z, InputStream inputStream) {
        int i = 0;
        c cVar = this.c;
        if (cVar != null) {
            if (z) {
                if (str != null) {
                    try {
                        byte[] bArr = this.b;
                        if (bArr == null) {
                            bArr = new byte[8192];
                            this.b = bArr;
                        }
                        if (Build.VERSION.SDK_INT >= 21) {
                            FileDescriptor open = Os.open(str, OsConstants.O_RDONLY, 438);
                            while (true) {
                                int read = Os.read(open, bArr, 0, bArr.length);
                                if (read <= 0) {
                                    break;
                                }
                                cVar.b.write(bArr, 0, read);
                                i += read;
                            }
                            Os.close(open);
                        } else {
                            FileInputStream fileInputStream = new FileInputStream(this.a.d(str));
                            while (true) {
                                int read2 = fileInputStream.read(bArr);
                                if (read2 <= 0) {
                                    break;
                                }
                                cVar.b.write(bArr, 0, read2);
                                i += read2;
                            }
                            fileInputStream.close();
                        }
                        if (i > 0) {
                            cVar.d.writeInt(i);
                            return inputStream;
                        }
                        return inputStream;
                    } catch (Throwable th) {
                        la.a("Failed write log file from " + str, th);
                        return inputStream;
                    }
                }
                return inputStream;
            } else if (luaString != null) {
                try {
                    int i2 = luaString.d;
                    if (i2 > 0) {
                        cVar.b.write(luaString.b, luaString.c, i2);
                        cVar.d.writeInt(i2);
                        return inputStream;
                    }
                    return inputStream;
                } catch (Throwable th2) {
                    la.b("Failed write log file", th2);
                    return inputStream;
                }
            } else {
                return new a(this, inputStream, cVar);
            }
        }
        return inputStream;
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class loadfile extends VarArgFunction {
        loadfile() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaValue g = apVar.g();
            if (!g.J() && !g.F()) {
                a(1, "loadfile", "string expected, got " + g.f_());
            }
            return BaseLib.this.a(g.y(), apVar.c(2, "bt"), apVar.d(3, BaseLib.this.a));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class print extends VarArgFunction {
        final BaseLib a;

        print(BaseLib baseLib) {
            this.a = baseLib;
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaValue j = BaseLib.this.a.j("tostring");
            int j_ = apVar.j_();
            for (int i = 1; i <= j_; i++) {
                if (i > 1) {
                    BaseLib.this.a.e.print(" \t");
                }
                LuaValue a = j.a(apVar.c(i));
                if (!a.J()) {
                    throw new o("'tostring' must return a string to 'print', got " + a.f_());
                }
                BaseLib.this.a.e.print(a.t().d_());
            }
            BaseLib.this.a.e.println();
            return x;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class rawequal extends LibFunction {
        rawequal() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue l() {
            return a(1, "value expected");
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return a(2, "value expected");
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            return b(luaValue.c(luaValue2));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class rawget extends TableLibFunction {
        rawget() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return a(2, "value expected");
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            return luaValue.O().x(luaValue2);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class rawlen extends LibFunction {
        rawlen() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return d(luaValue.M());
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class rawset extends TableLibFunction {
        rawset() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return a(2, "value expected");
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            return a(3, "value expected");
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            LuaTable O = luaValue.O();
            if (!luaValue2.A()) {
                a(2, "table index is nil");
            }
            O.c(luaValue2, luaValue3);
            return O;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class select extends VarArgFunction {
        select() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            int j_ = apVar.j_() - 1;
            if (apVar.g().equals(m("#"))) {
                return d(j_);
            }
            int o = apVar.o(1);
            if (o == 0 || o < (-j_)) {
                a(1, "index out of range");
            }
            return apVar.e_(o < 0 ? j_ + o + 2 : o + 1);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class setmetatable extends TableLibFunction {
        setmetatable() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return a(2, "nil or table expected");
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            LuaValue i = luaValue.O().i();
            if (i != null && !i.x(H).F()) {
                f("cannot change a protected metatable");
            }
            return luaValue.v(luaValue2.F() ? null : luaValue2.O());
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class tonumber extends LibFunction {
        tonumber() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return luaValue.H();
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            if (luaValue2.F()) {
                return luaValue.H();
            }
            int v = luaValue2.v();
            if (v < 2 || v > 36) {
                a(2, "base out of range");
            }
            return luaValue.z().g_(v);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class tostring extends LibFunction {
        tostring() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return BaseLib.y(luaValue);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LuaString y(LuaValue luaValue) {
        LuaValue I = luaValue.I(T);
        if (!I.F()) {
            LuaValue a = I.a(luaValue);
            LuaValue u = a.u();
            if (u.F()) {
                throw new o("'__tostring' must return a string, got '" + a.f_() + "' ('" + a + "')");
            }
            return u.z();
        }
        LuaValue u2 = luaValue.u();
        if (!u2.F()) {
            return u2.z();
        }
        return m(luaValue.d_());
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class type extends LibFunction {
        type() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return m(luaValue.f_());
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class pcall extends VarArgFunction {
        pcall() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            return LuaClosure.a(BaseLib.this.a, this, apVar.v(1), apVar.e_(2));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class xpcall extends VarArgFunction {
        xpcall() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaThread luaThread = BaseLib.this.a.h;
            LuaValue luaValue = luaThread.g;
            luaThread.g = apVar.v(2);
            try {
                return LuaClosure.a(BaseLib.this.a, this, apVar.v(1), apVar.e_(3));
            } finally {
                luaThread.g = luaValue;
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class pairs extends VarArgFunction {
        final next a;

        pairs(next nextVar) {
            this.a = nextVar;
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            return a((LuaValue) this.a, (LuaValue) apVar.t(1), (ap) u);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class ipairs extends VarArgFunction {
        inext a = new inext();

        ipairs() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            return a((LuaValue) this.a, (LuaValue) apVar.t(1), (ap) y);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class next extends VarArgFunction {
        next() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            return apVar.t(1).A(apVar.c(2));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class inext extends VarArgFunction {
        inext() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            return apVar.t(1).B(apVar.c(2));
        }
    }

    public ap a(String str, String str2, LuaValue luaValue) {
        InputStream c = this.a.g.c(str);
        if (c == null) {
            return b(u, (ap) m("cannot open " + str + ": No such file or directory"));
        }
        try {
            String absolutePath = this.a.d(str).getAbsolutePath();
            ap a = a(c, String.valueOf('@') + absolutePath, str2, luaValue);
            if (a instanceof LuaClosure) {
                ((LuaClosure) a).d = absolutePath;
            }
            if (this.c != null && (a instanceof LuaFunction)) {
                a((LuaString) null, str, true, (InputStream) null);
            }
            try {
                c.close();
                return a;
            } catch (Exception e) {
                e.printStackTrace();
                return a;
            }
        } catch (Throwable th) {
            try {
                String message = th.getMessage();
                ap b = b(u, (ap) m(message == null ? th.getClass().getName() : message));
                try {
                    c.close();
                    return b;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return b;
                }
            } catch (Throwable th2) {
                try {
                    c.close();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                throw th2;
            }
        }
    }

    public ap a(InputStream inputStream, String str, String str2, LuaValue luaValue) {
        ap a;
        try {
            if (inputStream == null) {
                a = b(u, (ap) m("not found: " + str));
            } else {
                a = this.a.a(inputStream, str, str2, luaValue);
            }
            return a;
        } catch (Exception e) {
            return b(u, (ap) m(e.getMessage()));
        }
    }
}
