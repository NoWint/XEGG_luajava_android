package luaj.lib;

import luaj.Globals;
import luaj.LuaBoolean;
import luaj.LuaClosure;
import luaj.LuaFunction;
import luaj.LuaNil;
import luaj.LuaNumber;
import luaj.LuaString;
import luaj.LuaTable;
import luaj.LuaThread;
import luaj.LuaValue;
import luaj.ag;
import luaj.al;
import luaj.ao;
import luaj.ap;
import luaj.o;
import luaj.p;

/* compiled from: src */
/* loaded from: classes.dex */
public class DebugLib extends TwoArgFunction {
    public static boolean a;
    private static final LuaString al;
    private static final LuaString am;
    private static final LuaString an;
    private static final LuaString ao;
    private static final LuaString ap;
    private static final LuaString aq;
    public static boolean b;
    static final LuaString c;
    static final LuaString d;
    static final LuaString e;
    static final LuaString f;
    static final LuaString g;
    static final LuaString h;
    static final LuaString i;
    static final LuaString j;
    static final LuaString k;
    static final LuaString l;
    static final LuaString m;
    static final LuaString n;
    static final LuaString o;
    static final LuaString p;
    static final LuaString q;
    static final LuaString r;
    Globals ai;

    static {
        try {
            a = System.getProperty("CALLS") != null;
        } catch (Exception e2) {
        }
        try {
            b = System.getProperty("TRACE") != null;
        } catch (Exception e3) {
        }
        al = m("?");
        am = m("call");
        an = m("tail call");
        ao = m("line");
        ap = m("count");
        aq = m("return");
        c = m("func");
        d = m("istailcall");
        e = m("isvararg");
        f = m("nups");
        g = m("nparams");
        h = m("name");
        i = m("namewhat");
        j = m("what");
        k = m("source");
        l = m("short_src");
        m = m("linedefined");
        n = m("lastlinedefined");
        o = m("currentline");
        p = m("activelines");
        q = m("(*temporary)");
        r = m("(*vararg)");
    }

    @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        this.ai = luaValue2.c();
        this.ai.k = this;
        LuaTable luaTable = new LuaTable();
        luaTable.a("debug", new debug());
        luaTable.a("gethook", new gethook());
        luaTable.a("getinfo", new getinfo());
        luaTable.a("getlocal", new getlocal());
        luaTable.a("getmetatable", new getmetatable());
        luaTable.a("getregistry", new getregistry());
        luaTable.a("getupvalue", new getupvalue());
        luaTable.a("sethook", new sethook());
        luaTable.a("setlocal", new setlocal());
        luaTable.a("setmetatable", new setmetatable());
        luaTable.a("setupvalue", new setupvalue());
        luaTable.a("traceback", new traceback());
        luaTable.a("upvalueid", new upvalueid());
        luaTable.a("upvaluejoin", new upvaluejoin());
        luaValue2.a("debug", luaTable);
        if (!luaValue2.j("package").F()) {
            luaValue2.j("package").j("loaded").a("debug", luaTable);
        }
        return luaTable;
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class debug extends ZeroArgFunction {
        debug() {
        }

        @Override // luaj.lib.ZeroArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue l() {
            return x;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class gethook extends VarArgFunction {
        gethook() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            ag agVar = (apVar.j_() > 0 ? apVar.u(1) : DebugLib.this.ai.h).d;
            return a(agVar.e != null ? agVar.e : u, (LuaValue) m(String.valueOf(agVar.g ? "c" : "") + (agVar.h ? "r" : "") + (agVar.f ? "l" : "")), (ap) d(agVar.i));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getinfo extends VarArgFunction {
        getinfo() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaThread luaThread;
            int i;
            e a;
            int[] iArr;
            char charAt;
            if (apVar.j(1)) {
                i = 2;
                luaThread = apVar.u(1);
            } else {
                luaThread = DebugLib.this.ai.h;
                i = 1;
            }
            int i2 = i + 1;
            LuaValue c = apVar.c(i);
            int i3 = i2 + 1;
            String c2 = apVar.c(i2, "flnStu");
            f a2 = DebugLib.this.a(luaThread);
            if (c.I()) {
                int p = c.p();
                if (a2.a(1).a == this) {
                    p++;
                }
                e a3 = a2.a(p);
                if (a3 == null) {
                    return x;
                }
                c = a3.a;
                a = a3;
            } else if (c.B()) {
                a = a2.a(c);
            } else {
                return a(i3 - 2, "function or level");
            }
            g a4 = a2.a(c2, (LuaFunction) c, a);
            LuaTable luaTable = new LuaTable();
            for (int i4 = 0; i4 < c2.length(); i4++) {
                switch (c2.charAt(i4)) {
                    case 'L':
                        if (c.j()) {
                            LuaTable luaTable2 = new LuaTable();
                            luaTable.b((LuaValue) DebugLib.p, (LuaValue) luaTable2);
                            int length = c.k().a.t.length;
                            for (int i5 = 0; i5 < length; i5++) {
                                luaTable2.c(d(iArr[i5]), v);
                            }
                            break;
                        } else {
                            break;
                        }
                    case 'S':
                        luaTable.b((LuaValue) DebugLib.j, (LuaValue) m(a4.c));
                        luaTable.b((LuaValue) DebugLib.k, (LuaValue) m(a4.d));
                        luaTable.b((LuaValue) DebugLib.l, (LuaValue) m(a4.l));
                        luaTable.b((LuaValue) DebugLib.m, (LuaValue) d(a4.f));
                        luaTable.b((LuaValue) DebugLib.n, (LuaValue) d(a4.g));
                        break;
                    case 'f':
                        if (c != null) {
                            luaTable.b((LuaValue) DebugLib.c, c);
                            break;
                        } else {
                            break;
                        }
                    case 'l':
                        luaTable.b((LuaValue) DebugLib.o, (LuaValue) d(a4.e));
                        break;
                    case 'n':
                        luaTable.b((LuaValue) DebugLib.h, a4.a != null ? LuaValue.m(a4.a) : u);
                        luaTable.b((LuaValue) DebugLib.i, (LuaValue) LuaValue.m(a4.b));
                        break;
                    case 't':
                        luaTable.b((LuaValue) DebugLib.d, (LuaValue) b(a4.k));
                        break;
                    case 'u':
                        luaTable.b((LuaValue) DebugLib.f, (LuaValue) d(a4.h));
                        luaTable.b((LuaValue) DebugLib.g, (LuaValue) d(a4.i));
                        luaTable.b((LuaValue) DebugLib.e, (LuaValue) (a4.j ? v : w));
                        break;
                    default:
                        a(i3 - 1, "debug.getinfo", "invalid option: '" + c2.charAt(i4) + "' [0x" + Integer.toHexString(charAt) + "] at index " + (i4 + 1) + " in '" + c2 + "'");
                        break;
                }
            }
            return luaTable;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getlocal extends VarArgFunction {
        getlocal() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaThread luaThread;
            int i;
            int i2;
            if (apVar.j(1)) {
                i = 2;
                luaThread = apVar.u(1);
            } else {
                luaThread = DebugLib.this.ai.h;
                i = 1;
            }
            int i3 = i + 1;
            LuaValue c = apVar.c(i);
            int i4 = i3 + 1;
            int o = apVar.o(i3);
            if (c.B()) {
                return !c.j() ? u : c.k().a.a(o, 0);
            }
            int o2 = apVar.o(i);
            f a = DebugLib.this.a(luaThread);
            int i5 = a.c;
            if (a.a(1).a == this) {
                i2 = o2 + 1;
                i5--;
            } else {
                i2 = o2;
            }
            e a2 = a.a(i2);
            return a2 != null ? a2.a(o) : a(i, "debug.getlocal", "level out of range: " + i2 + " not between 1 and " + i5);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getmetatable extends LibFunction {
        getmetatable() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            LuaValue i = luaValue.i();
            return i != null ? i : u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getregistry extends ZeroArgFunction {
        getregistry() {
        }

        @Override // luaj.lib.ZeroArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue l() {
            return DebugLib.this.ai;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class getupvalue extends VarArgFunction {
        getupvalue() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaClosure luaClosure;
            LuaString a;
            LuaFunction n = apVar.n(1);
            int o = apVar.o(2);
            return (!(n instanceof LuaClosure) || (a = DebugLib.a((luaClosure = (LuaClosure) n), o)) == null) ? u : b((LuaValue) a, (ap) luaClosure.b[o - 1].a());
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class sethook extends VarArgFunction {
        sethook() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaThread luaThread;
            int i;
            boolean z;
            if (apVar.j(1)) {
                i = 2;
                luaThread = apVar.u(1);
            } else {
                luaThread = DebugLib.this.ai.h;
                i = 1;
            }
            int i2 = i + 1;
            LuaFunction a = apVar.a(i, (LuaFunction) null);
            int i3 = i2 + 1;
            String c = apVar.c(i2, "");
            int i4 = i3 + 1;
            int d = apVar.d(i3, 0);
            int i5 = 0;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            while (i5 < c.length()) {
                switch (c.charAt(i5)) {
                    case 'c':
                        z = z2;
                        z4 = true;
                        break;
                    case 'l':
                        z = z2;
                        z3 = true;
                        break;
                    case 'r':
                        z = true;
                        break;
                    default:
                        z = z2;
                        break;
                }
                i5++;
                z2 = z;
            }
            ag agVar = luaThread.d;
            agVar.e = a;
            agVar.g = z4;
            agVar.f = z3;
            agVar.i = d;
            agVar.h = z2;
            DebugLib.this.T().a(agVar);
            return x;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class setlocal extends VarArgFunction {
        setlocal() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaThread luaThread;
            int i;
            int i2;
            if (apVar.j(1)) {
                i = 2;
                luaThread = apVar.u(1);
            } else {
                luaThread = DebugLib.this.ai.h;
                i = 1;
            }
            int i3 = i + 1;
            int o = apVar.o(i);
            int i4 = i3 + 1;
            int o2 = apVar.o(i3);
            int i5 = i4 + 1;
            LuaValue c = apVar.c(i4);
            f a = DebugLib.this.a(luaThread);
            int i6 = a.c;
            if (a.a(1).a == this) {
                i2 = o + 1;
                i6--;
            } else {
                i2 = o;
            }
            e a2 = a.a(i2);
            return a2 != null ? a2.a(o2, c) : a(i, "debug.setlocal", "level out of range: " + i2 + " not between 1 and " + i6);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class setmetatable extends TwoArgFunction {
        setmetatable() {
        }

        @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            LuaTable a = luaValue2.a((LuaTable) null);
            switch (luaValue.e_()) {
                case 0:
                    LuaNil.a = a;
                    break;
                case 1:
                    LuaBoolean.a = a;
                    break;
                case 2:
                case 5:
                case 7:
                default:
                    luaValue.v(a);
                    break;
                case 3:
                    LuaNumber.e = a;
                    break;
                case 4:
                    LuaString.a = a;
                    break;
                case 6:
                    LuaFunction.s = a;
                    break;
                case 8:
                    LuaThread.a = a;
                    break;
            }
            return luaValue;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class setupvalue extends VarArgFunction {
        setupvalue() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaClosure luaClosure;
            LuaString a;
            LuaFunction n = apVar.n(1);
            int o = apVar.o(2);
            LuaValue c = apVar.c(3);
            if (!(n instanceof LuaClosure) || (a = DebugLib.a((luaClosure = (LuaClosure) n), o)) == null) {
                return u;
            }
            luaClosure.b[o - 1].a(c);
            return a;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class traceback extends VarArgFunction {
        traceback() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaThread luaThread;
            int i;
            if (apVar.j(1)) {
                i = 2;
                luaThread = apVar.u(1);
            } else {
                luaThread = DebugLib.this.ai.h;
                i = 1;
            }
            int i2 = i + 1;
            LuaValue c = apVar.c(i);
            if (c.J() || c.F()) {
                int i3 = i2 + 1;
                int d = apVar.d(i2, 1);
                f a = DebugLib.this.a(luaThread);
                String a2 = a.a(DebugLib.this.ai, a.a(1).a == this ? d + 1 : d);
                if (c.J()) {
                    a2 = String.valueOf(c.d_()) + '\n' + a2;
                }
                return m(a2);
            }
            return c;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class upvalueid extends VarArgFunction {
        upvalueid() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaFunction n = apVar.n(1);
            int o = apVar.o(2);
            if (n instanceof LuaClosure) {
                LuaClosure luaClosure = (LuaClosure) n;
                if (luaClosure.b != null && o > 0 && o <= luaClosure.b.length) {
                    return d(luaClosure.b[o - 1].hashCode());
                }
            }
            return a(2, "debug.upvalueid", "invalid upvalue index " + o);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class upvaluejoin extends VarArgFunction {
        upvaluejoin() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaClosure l = apVar.l(1);
            int o = apVar.o(2);
            LuaClosure l2 = apVar.l(3);
            int o2 = apVar.o(4);
            if (o < 1 || o > l.b.length) {
                g("index out of range");
            }
            if (o2 < 1 || o2 > l2.b.length) {
                g("index out of range");
            }
            l.b[o - 1] = l2.b[o2 - 1];
            return x;
        }
    }

    public void a(LuaFunction luaFunction, boolean z) {
        ag agVar = this.ai.h.d;
        boolean z2 = agVar.j == 1;
        if (z2) {
            agVar.j = 2;
        }
        T().a(luaFunction, z2, z);
        if (agVar.j == 0) {
            if (agVar.f) {
                agVar.k = 0;
                agVar.l = 0;
            }
            if (agVar.g) {
                a(agVar, z ? an : am, u);
            }
        }
    }

    public void a(LuaClosure luaClosure, ap apVar, LuaValue[] luaValueArr, boolean z) {
        ag agVar = this.ai.h.d;
        boolean z2 = agVar.j == 1;
        if (z2) {
            agVar.j = 2;
        }
        T().a(luaClosure, apVar, luaValueArr, z2, z);
        if (agVar.j == 0) {
            if (agVar.f) {
                agVar.k = 0;
                agVar.l = 0;
            }
            if (agVar.g) {
                a(agVar, z ? an : am, u);
            }
        }
    }

    public void a(int i2, ap apVar, int i3) {
        LuaThread luaThread = this.ai.h;
        ag agVar = luaThread.d;
        a(luaThread).a(i2, apVar, i3);
        if (agVar.j == 0 && agVar.e != null) {
            if (agVar.i > 0) {
                int i4 = agVar.m + 1;
                agVar.m = i4;
                if (i4 % agVar.i == 0) {
                    a(agVar, ap, u);
                }
            }
            if (agVar.f) {
                int a2 = T().a();
                if (a2 != agVar.k || i2 <= agVar.l) {
                    agVar.k = a2;
                    a(agVar, ao, LuaValue.d(a2));
                }
                agVar.l = i2;
            }
        }
    }

    public void S() {
        ag agVar = this.ai.h.d;
        if (agVar.j == 0 && agVar.h) {
            a(agVar, aq, u);
        }
        T().b(agVar);
    }

    public String a(Globals globals, int i2) {
        return T().a(globals, i2);
    }

    public e e(int i2) {
        return T().a(i2);
    }

    void a(ag agVar, LuaValue luaValue, LuaValue luaValue2) {
        LuaFunction luaFunction = agVar.e;
        if (agVar.j == 0 && luaFunction != null) {
            agVar.j = 1;
            try {
                try {
                    boolean z = luaFunction.j() ? false : true;
                    if (z) {
                        a(luaFunction, false);
                    }
                    try {
                        luaFunction.a(luaValue, luaValue2);
                    } finally {
                        if (z) {
                            S();
                        }
                    }
                } catch (o e2) {
                    throw e2;
                } catch (RuntimeException e3) {
                    throw new p(e3);
                }
            } finally {
                agVar.j = 0;
            }
        }
    }

    f T() {
        return a(this.ai.h);
    }

    f a(LuaThread luaThread) {
        if (luaThread.e == null) {
            luaThread.e = new f();
        }
        return (f) luaThread.e;
    }

    private static LuaString a(ao aoVar, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append("(.upval ");
        if (aoVar != null) {
            sb.append(aoVar.b ? 'v' : 'u');
            sb.append((int) aoVar.c);
        } else {
            sb.append("???");
        }
        sb.append(" \"(*no name)\"; u");
        sb.append(i2);
        sb.append(')');
        return LuaString.c(sb.toString());
    }

    static LuaString a(LuaClosure luaClosure, int i2) {
        if (luaClosure.b == null || i2 <= 0 || i2 > luaClosure.b.length) {
            return null;
        }
        if (luaClosure.a.v != null && i2 <= luaClosure.a.v.length) {
            LuaString luaString = luaClosure.a.v[i2 - 1].a;
            return luaString == null ? a(luaClosure.a.v[i2 - 1], i2) : luaString;
        }
        return a((ao) null, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a(e eVar) {
        LuaString luaString;
        if (!eVar.a.j()) {
            return new h(eVar.a.D(), "Java");
        }
        al alVar = eVar.a.k().a;
        int i2 = eVar.b;
        if (i2 < alVar.r.length) {
            int i3 = alVar.r[i2];
            switch (luaj.m.a(i3)) {
                case 6:
                case 7:
                case 12:
                    luaString = LuaValue.D;
                    break;
                case 8:
                case 10:
                    luaString = LuaValue.E;
                    break;
                case 9:
                case 11:
                case 20:
                case 23:
                case 27:
                case 28:
                case 31:
                case 32:
                case 33:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                default:
                    return null;
                case 13:
                    luaString = LuaValue.I;
                    break;
                case 14:
                    luaString = LuaValue.J;
                    break;
                case 15:
                    luaString = LuaValue.L;
                    break;
                case 16:
                    luaString = LuaValue.K;
                    break;
                case 17:
                    luaString = LuaValue.N;
                    break;
                case 18:
                    luaString = LuaValue.M;
                    break;
                case 19:
                    luaString = LuaValue.O;
                    break;
                case 21:
                    luaString = LuaValue.P;
                    break;
                case 22:
                    luaString = LuaValue.U;
                    break;
                case 24:
                    luaString = LuaValue.Q;
                    break;
                case 25:
                    luaString = LuaValue.R;
                    break;
                case 26:
                    luaString = LuaValue.S;
                    break;
                case 29:
                case 30:
                    return a(alVar, i2, luaj.m.b(i3));
                case 34:
                    return new h("for iterator", "for iterator");
                case 40:
                    luaString = LuaValue.V;
                    break;
                case 41:
                    luaString = LuaValue.W;
                    break;
                case 42:
                    luaString = LuaValue.X;
                    break;
                case 43:
                    luaString = LuaValue.Y;
                    break;
                case 44:
                    luaString = LuaValue.Z;
                    break;
                case 45:
                    luaString = LuaValue.aa;
                    break;
                case 46:
                    luaString = LuaValue.ab;
                    break;
            }
            return new h(luaString.d_(), "metamethod");
        }
        return null;
    }

    public static String a(int i2, int i3, al alVar) {
        h a2 = a(alVar, i2, i3);
        if (a2 == null) {
            return null;
        }
        return a2.toString();
    }

    static h a(al alVar, int i2, int i3) {
        LuaString luaString;
        LuaString a2 = alVar.a(i3 + 1, i2);
        if (a2 != null) {
            return new h(a2.d_(), "local");
        }
        int c2 = c(alVar, i2, i3);
        if (c2 != -1) {
            int i4 = alVar.r[c2];
            switch (luaj.m.a(i4)) {
                case 0:
                    int b2 = luaj.m.b(i4);
                    int d2 = luaj.m.d(i4);
                    if (d2 < b2) {
                        return a(alVar, c2, d2);
                    }
                    return null;
                case 1:
                case 2:
                    int f2 = luaj.m.a(i4) == 1 ? luaj.m.f(i4) : luaj.m.c(alVar.r[c2 + 1]);
                    if (alVar.q[f2].J()) {
                        return new h(alVar.q[f2].t().d_(), "constant");
                    }
                    return null;
                case 3:
                case 4:
                case 8:
                case 9:
                case 10:
                case 11:
                default:
                    return null;
                case 5:
                    int d3 = luaj.m.d(i4);
                    LuaString luaString2 = d3 < alVar.v.length ? alVar.v[d3].a : al;
                    if (luaString2 != null) {
                        return new h(luaString2.d_(), "upvalue");
                    }
                    return null;
                case 6:
                case 7:
                    int e2 = luaj.m.e(i4);
                    int d4 = luaj.m.d(i4);
                    if (luaj.m.a(i4) == 7) {
                        luaString = alVar.a(d4 + 1, c2);
                    } else {
                        luaString = d4 < alVar.v.length ? alVar.v[d4].a : al;
                    }
                    return new h(b(alVar, c2, e2), (luaString == null || !luaString.b((LuaValue) C)) ? "field" : "global");
                case 12:
                    return new h(b(alVar, c2, luaj.m.e(i4)), "method");
            }
        }
        return null;
    }

    static String b(al alVar, int i2, int i3) {
        if (luaj.m.h(i3)) {
            LuaValue luaValue = alVar.q[luaj.m.i(i3)];
            if (luaValue.J()) {
                return luaValue.d_();
            }
        } else {
            h a2 = a(alVar, i2, i3);
            if (a2 != null && "constant".equals(a2.b)) {
                return a2.a;
            }
        }
        return "?";
    }

    static int c(al alVar, int i2, int i3) {
        int i4 = -1;
        int i5 = 0;
        while (i5 < i2) {
            int i6 = alVar.r[i5];
            int a2 = luaj.m.a(i6);
            if (a2 < 47) {
                int b2 = luaj.m.b(i6);
                switch (a2) {
                    case 4:
                        int d2 = luaj.m.d(i6);
                        if (b2 <= i3 && i3 <= d2 + b2) {
                            i4 = i5;
                            continue;
                        }
                        break;
                    case 23:
                        int g2 = luaj.m.g(i6);
                        int i7 = i5 + 1 + g2;
                        if (i5 < i7 && i7 <= i2) {
                            i5 += g2;
                            continue;
                        }
                        break;
                    case 27:
                        if (i3 != b2) {
                            break;
                        } else {
                            i4 = i5;
                            continue;
                        }
                    case 29:
                    case 30:
                        if (i3 < b2) {
                            break;
                        } else {
                            i4 = i5;
                            continue;
                        }
                    case 34:
                        if (i3 < b2 + 2) {
                            break;
                        } else {
                            i4 = i5;
                            continue;
                        }
                    case 36:
                        if (((i6 >> 14) & 511) != 0) {
                            break;
                        } else {
                            i5++;
                            continue;
                        }
                    default:
                        if (luaj.m.n(a2) && i3 == b2) {
                            i4 = i5;
                            continue;
                        }
                        break;
                }
            }
            i5++;
        }
        return i4;
    }
}
