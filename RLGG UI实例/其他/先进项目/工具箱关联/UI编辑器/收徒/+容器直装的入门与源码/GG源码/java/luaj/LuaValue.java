package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class LuaValue extends ap {
    public static final String[] t = {"nil", "boolean", "lightuserdata", "number", "string", "table", "function", "userdata", "thread", "value"};
    public static final LuaValue u = new LuaNil();
    public static final LuaBoolean v = new LuaBoolean(true);
    public static final LuaBoolean w = new LuaBoolean(false);
    public static final LuaValue x = new None(null);
    public static final LuaNumber y = LuaLong.b(0L);
    public static final LuaNumber z = LuaLong.b(1L);
    public static final LuaNumber A = LuaLong.b(-1L);
    public static final LuaValue[] B = new LuaValue[0];
    public static final LuaString C = LuaString.d("_ENV");
    public static final LuaString D = LuaString.d("__index");
    public static final LuaString E = LuaString.d("__newindex");
    public static final LuaString F = LuaString.d("__call");
    public static final LuaString G = LuaString.d("__mode");
    public static final LuaString H = LuaString.d("__metatable");
    public static final LuaString I = LuaString.d("__add");
    public static final LuaString J = LuaString.d("__sub");
    public static final LuaString K = LuaString.d("__div");
    public static final LuaString L = LuaString.d("__mul");
    public static final LuaString M = LuaString.d("__pow");
    public static final LuaString N = LuaString.d("__mod");
    public static final LuaString O = LuaString.d("__unm");
    public static final LuaString P = LuaString.d("__len");
    public static final LuaString Q = LuaString.d("__eq");
    public static final LuaString R = LuaString.d("__lt");
    public static final LuaString S = LuaString.d("__le");
    public static final LuaString T = LuaString.d("__tostring");
    public static final LuaString U = LuaString.d("__concat");
    public static final LuaString V = LuaString.d("__idiv");
    public static final LuaString W = LuaString.d("__bnot");
    public static final LuaString X = LuaString.d("__band");
    public static final LuaString Y = LuaString.d("__bor");
    public static final LuaString Z = LuaString.d("__bxor");
    public static final LuaString aa = LuaString.d("__shl");
    public static final LuaString ab = LuaString.d("__shr");
    public static final LuaString ac = LuaString.d("__name");
    public static final LuaString ad = LuaString.d("");
    public static final LuaString ae = LuaString.d("0");
    public static final LuaString af = LuaString.d("1");
    public static final LuaValue[] ag = new LuaValue[250];

    public abstract int e_();

    public abstract String f_();

    static {
        for (int i = 0; i < 250; i++) {
            ag[i] = u;
        }
    }

    public boolean n_() {
        return false;
    }

    public boolean j() {
        return false;
    }

    public boolean B() {
        return false;
    }

    public boolean h_() {
        return false;
    }

    public boolean q_() {
        return false;
    }

    public boolean n() {
        return false;
    }

    public boolean E() {
        return false;
    }

    public boolean F() {
        return false;
    }

    public boolean I() {
        return false;
    }

    public boolean J() {
        return false;
    }

    public boolean p_() {
        return false;
    }

    public boolean N() {
        return false;
    }

    public boolean i_() {
        return true;
    }

    public double o() {
        return 0.0d;
    }

    public int p() {
        return 0;
    }

    public long q() {
        return 0L;
    }

    @Override // luaj.ap
    public String d_() {
        return String.valueOf(aa()) + ": " + Integer.toHexString(hashCode());
    }

    @Override // luaj.ap
    public String toString() {
        return d_();
    }

    public LuaValue H() {
        return u;
    }

    public LuaValue u() {
        return u;
    }

    public boolean a(boolean z2) {
        g("boolean");
        return false;
    }

    public double b(double d) {
        g("number");
        return 0.0d;
    }

    public LuaFunction a(LuaFunction luaFunction) {
        g("function");
        return null;
    }

    public int b_(int i) {
        g("int");
        return 0;
    }

    public long a_(long j) {
        g("long");
        return 0L;
    }

    public String b_(String str) {
        g("String");
        return null;
    }

    public LuaString a(LuaString luaString) {
        g("string");
        return null;
    }

    public LuaTable a(LuaTable luaTable) {
        g("table");
        return null;
    }

    public LuaValue t(LuaValue luaValue) {
        return this;
    }

    public boolean h() {
        g("boolean");
        return false;
    }

    public LuaClosure k() {
        g("closure");
        return null;
    }

    public double x() {
        g("number");
        return 0.0d;
    }

    public LuaFunction C() {
        g("function");
        return null;
    }

    public Globals c() {
        g("globals");
        return null;
    }

    public int v() {
        g("int");
        return 0;
    }

    public long w() {
        g("long");
        return 0L;
    }

    public LuaNumber G() {
        g("number");
        return null;
    }

    public LuaNumber b(String str) {
        throw new o(str);
    }

    public String y() {
        g("string");
        return null;
    }

    public LuaString z() {
        g("string");
        return null;
    }

    public LuaTable O() {
        g("table");
        return null;
    }

    public LuaThread R() {
        g("thread");
        return null;
    }

    public boolean A() {
        return true;
    }

    public static LuaValue f(String str) {
        throw new o(str);
    }

    public static LuaValue a(String str, Throwable th) {
        throw new o(str, th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LuaValue g(String str) {
        throw new o("bad argument: " + str + " expected, got " + aa());
    }

    public static LuaValue a(int i, String str) {
        throw new n(i, null, str);
    }

    public static LuaValue a(int i, String str, String str2) {
        throw new n(i, str, str2);
    }

    protected LuaValue h(String str) {
        throw new o(String.valueOf(str) + " expected, got " + aa());
    }

    protected LuaValue i(String str) {
        throw new o(String.valueOf('\'') + str + "' not implemented for " + f_());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public LuaValue b(String str, String str2) {
        throw new o("illegal operation '" + str + "' for " + str2);
    }

    public LuaValue w(LuaValue luaValue) {
        return i(this, luaValue);
    }

    public LuaValue c_(int i) {
        return w(LuaLong.b(i));
    }

    public LuaValue j(String str) {
        return w(m(str));
    }

    public void b(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue == null || luaValue2 == null) {
            return;
        }
        d(this, luaValue, luaValue2);
    }

    public void a(int i, LuaValue luaValue) {
        if (luaValue != null) {
            b((LuaValue) LuaLong.b(i), luaValue);
        }
    }

    public void a(String str, LuaValue luaValue) {
        if (str == null || luaValue == null) {
            return;
        }
        b((LuaValue) m(str), luaValue);
    }

    public void a(String str, double d) {
        if (str != null) {
            b((LuaValue) m(str), (LuaValue) c(d));
        }
    }

    public void a(String str, int i) {
        if (str != null) {
            b((LuaValue) m(str), (LuaValue) d(i));
        }
    }

    public void c(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        b((LuaValue) m(str), (LuaValue) m(str2));
    }

    public LuaValue x(LuaValue luaValue) {
        return i("rawget");
    }

    public LuaValue d(int i) {
        return x(d(i));
    }

    public LuaValue k(String str) {
        return x(m(str));
    }

    public void c(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue == null || luaValue2 == null) {
            return;
        }
        i("rawset");
    }

    public void b(int i, LuaValue luaValue) {
        if (luaValue != null) {
            c(d(i), luaValue);
        }
    }

    public void b(int i, String str) {
        if (str != null) {
            b(i, m(str));
        }
    }

    public void b(String str, LuaValue luaValue) {
        if (str == null || luaValue == null) {
            return;
        }
        c(m(str), luaValue);
    }

    public void b(String str, double d) {
        if (str != null) {
            c(m(str), c(d));
        }
    }

    public void b(String str, int i) {
        if (str != null) {
            c(m(str), d(i));
        }
    }

    public void d(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        c(m(str), m(str2));
    }

    public void d_(int i) {
        h("table");
    }

    public ap A(LuaValue luaValue) {
        return h("table");
    }

    public ap B(LuaValue luaValue) {
        return h("table");
    }

    public LuaValue F(LuaValue luaValue) {
        return luaValue.a((LuaValue) ad, this);
    }

    @Override // luaj.ap
    public LuaValue c(int i) {
        return i == 1 ? this : u;
    }

    @Override // luaj.ap
    public int j_() {
        return 1;
    }

    @Override // luaj.ap
    public LuaValue g() {
        return this;
    }

    public LuaValue i() {
        return null;
    }

    public LuaValue v(LuaValue luaValue) {
        return g("table");
    }

    public LuaValue l() {
        return Z().a(this);
    }

    public LuaValue a(LuaValue luaValue) {
        return Z().a(this, luaValue);
    }

    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        return Z().a(this, luaValue, luaValue2);
    }

    public LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        return Z().a(new LuaValue[]{this, luaValue, luaValue2, luaValue3}).g();
    }

    public ap Y() {
        return a_(x);
    }

    public ap a_(ap apVar) {
        return Z().a(this, apVar);
    }

    public ap a(LuaValue luaValue, ap apVar) {
        return a_(b(luaValue, apVar));
    }

    public ap a(LuaValue[] luaValueArr) {
        return a_(c(luaValueArr));
    }

    protected LuaValue Z() {
        return a(F, "attempt to call ");
    }

    public LuaValue k_() {
        return w;
    }

    public LuaValue r() {
        return a(O, "attempt to perform arithmetic on ").a(this);
    }

    public LuaValue s() {
        return a(W, "attempt to perform bitwise on ").a(this);
    }

    public LuaValue K() {
        return a(P, "attempt to get length of ").a(this);
    }

    public int L() {
        return K().p();
    }

    public int M() {
        h("table or string");
        return 0;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public boolean b(LuaValue luaValue) {
        return this == luaValue;
    }

    public boolean c(LuaValue luaValue) {
        return this == luaValue;
    }

    public boolean d(LuaString luaString) {
        return false;
    }

    public static final boolean g(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue i;
        LuaValue luaValue3 = u;
        LuaValue i2 = luaValue.i();
        if (i2 != null) {
            luaValue3 = i2.x(Q);
        }
        if (luaValue3.F() && (i = luaValue2.i()) != null) {
            luaValue3 = i.x(Q);
        }
        if (luaValue3.F()) {
            return false;
        }
        return luaValue3.a(luaValue, luaValue2).i_();
    }

    public LuaValue d(LuaValue luaValue) {
        return b(I, this, luaValue);
    }

    public LuaValue e(LuaValue luaValue) {
        return b(J, this, luaValue);
    }

    public LuaValue f(LuaValue luaValue) {
        return b(L, this, luaValue);
    }

    public LuaValue g(LuaValue luaValue) {
        return b(M, this, luaValue);
    }

    public LuaValue h(LuaValue luaValue) {
        return b(K, this, luaValue);
    }

    public LuaValue i(LuaValue luaValue) {
        return b(V, this, luaValue);
    }

    public LuaValue k(LuaValue luaValue) {
        return c(X, this, luaValue);
    }

    public LuaValue l(LuaValue luaValue) {
        return c(Y, this, luaValue);
    }

    public LuaValue m(LuaValue luaValue) {
        return c(Z, this, luaValue);
    }

    public LuaValue n(LuaValue luaValue) {
        return c(aa, this, luaValue);
    }

    public LuaValue o(LuaValue luaValue) {
        return c(ab, this, luaValue);
    }

    public LuaValue j(LuaValue luaValue) {
        return b(N, this, luaValue);
    }

    public String aa() {
        LuaValue I2 = I(ac);
        return I2.J() ? I2.d_() : f_();
    }

    public static LuaValue b(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        LuaValue I2 = luaValue2.I(luaValue);
        if (I2.F()) {
            I2 = luaValue3.I(luaValue);
            if (I2.F()) {
                f("attempt to perform arithmetic " + luaValue + " on a " + luaValue2.aa() + " value and a " + luaValue3.aa() + " value");
            }
        }
        return I2.a(luaValue2, luaValue3);
    }

    public static String G(LuaValue luaValue) {
        return luaValue == X ? "&" : luaValue == Y ? "|" : luaValue == Z ? "~" : luaValue == aa ? "<<" : luaValue == ab ? ">>" : luaValue.d_();
    }

    public static LuaValue c(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        LuaValue I2 = luaValue2.I(luaValue);
        if (I2.F()) {
            LuaValue I3 = luaValue3.I(luaValue);
            if (I3.F()) {
                LuaValue luaValue4 = null;
                if (luaValue2.I() && !luaValue2.n()) {
                    luaValue4 = luaValue2;
                } else if (luaValue3.I() && !luaValue3.n()) {
                    luaValue4 = luaValue3;
                }
                String G2 = G(luaValue);
                if (luaValue4 != null) {
                    throw new o("number '" + luaValue4.d_() + "' has no integer representation (for bitwise operation '" + luaValue2.d_() + " " + G2 + " " + luaValue3.d_() + "')");
                }
                f("attempt to perform bitwise operation " + G2 + " on a " + luaValue2.f_() + " value and a " + luaValue3.f_() + " value");
            }
            I2 = I3;
        }
        return I2.a(luaValue2, luaValue3);
    }

    public boolean p(LuaValue luaValue) {
        return h(R, luaValue).i_();
    }

    public boolean q(LuaValue luaValue) {
        return h(S, luaValue).i_();
    }

    public boolean r(LuaValue luaValue) {
        return luaValue.h(S, this).i_();
    }

    public boolean s(LuaValue luaValue) {
        return luaValue.h(R, this).i_();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0037, code lost:
        if (r0.F() == false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public luaj.LuaValue h(luaj.LuaValue r4, luaj.LuaValue r5) {
        /*
            r3 = this;
            luaj.LuaValue r0 = r3.I(r4)
            boolean r1 = r0.F()
            if (r1 == 0) goto L14
            luaj.LuaValue r0 = r5.I(r4)
            boolean r1 = r0.F()
            if (r1 != 0) goto L19
        L14:
            luaj.LuaValue r0 = r0.a(r3, r5)
        L18:
            return r0
        L19:
            luaj.LuaString r0 = luaj.LuaValue.S
            boolean r0 = r0.c(r4)
            if (r0 == 0) goto L42
            luaj.LuaString r0 = luaj.LuaValue.R
            luaj.LuaValue r0 = r3.I(r0)
            boolean r1 = r0.F()
            if (r1 == 0) goto L39
            luaj.LuaString r0 = luaj.LuaValue.R
            luaj.LuaValue r0 = r5.I(r0)
            boolean r1 = r0.F()
            if (r1 != 0) goto L42
        L39:
            luaj.LuaValue r0 = r0.a(r5, r3)
            luaj.LuaValue r0 = r0.k_()
            goto L18
        L42:
            java.lang.String r0 = r3.aa()
            java.lang.String r1 = r5.aa()
            boolean r2 = r0.equals(r1)
            if (r2 == 0) goto L79
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "two "
            r1.<init>(r2)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r1 = " values"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
        L65:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "attempt to compare "
            r1.<init>(r2)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
            luaj.LuaValue r0 = f(r0)
            goto L18
        L79:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r2.<init>(r0)
            java.lang.String r0 = " with "
            java.lang.StringBuilder r0 = r2.append(r0)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            goto L65
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.LuaValue.h(luaj.LuaValue, luaj.LuaValue):luaj.LuaValue");
    }

    public int c(LuaString luaString) {
        f("attempt to compare " + f_());
        return 0;
    }

    public LuaValue u(LuaValue luaValue) {
        return H(luaValue);
    }

    public LuaValue a(LuaNumber luaNumber) {
        return luaNumber.H(this);
    }

    public LuaValue b(LuaString luaString) {
        return luaString.H(this);
    }

    public a ab() {
        return new a(this);
    }

    public LuaValue H(LuaValue luaValue) {
        LuaValue I2 = I(U);
        if (I2.F()) {
            I2 = luaValue.I(U);
            if (I2.F()) {
                LuaValue luaValue2 = null;
                if (!J()) {
                    luaValue2 = this;
                } else if (!luaValue.J()) {
                    luaValue2 = luaValue;
                }
                if (luaValue2 != null) {
                    throw new o("attempt to concatenate a " + luaValue2.f_() + " value");
                }
                f("attempt to concatenate " + f_() + " and " + luaValue.f_());
            }
        }
        return I2.a(this, luaValue);
    }

    public LuaString t() {
        h("string or number");
        return null;
    }

    public LuaValue ac() {
        return this;
    }

    public static LuaBoolean b(boolean z2) {
        return z2 ? v : w;
    }

    public static LuaLong d(long j) {
        return LuaLong.b(j);
    }

    public static LuaNumber c(double d) {
        return LuaDouble.a(d);
    }

    public static LuaNumber l(String str) {
        if (str.length() <= 20 && str.indexOf(46) == -1 && str.indexOf(101) == -1 && str.indexOf(69) == -1) {
            try {
                return LuaLong.b(Long.parseLong(str));
            } catch (NumberFormatException e) {
            }
        }
        return LuaDouble.a(Double.parseDouble(str));
    }

    public static LuaString m(String str) {
        return LuaString.c(str);
    }

    public static LuaString c(byte[] bArr) {
        return LuaString.a(bArr);
    }

    public static LuaString e(byte[] bArr, int i, int i2) {
        return LuaString.a(bArr, i, i2);
    }

    public static LuaTable ad() {
        return new LuaTable();
    }

    public static LuaTable a(ap apVar, int i) {
        return new LuaTable(apVar, i);
    }

    public static LuaTable b(LuaValue[] luaValueArr) {
        return new LuaTable(luaValueArr, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static LuaValue i(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue I2;
        LuaValue x2;
        int i = 0;
        while (true) {
            if (luaValue.N()) {
                x2 = luaValue.x(luaValue2);
                if (!x2.F()) {
                    break;
                }
                I2 = luaValue.I(D);
                if (I2.F()) {
                    break;
                }
            } else {
                I2 = luaValue.I(D);
                if (I2.F()) {
                    luaValue.c(luaValue2.d_());
                }
            }
            if (I2.B()) {
                return I2.a(luaValue, luaValue2);
            }
            i++;
            if (i >= 100) {
                f("loop in gettable");
                return u;
            }
            luaValue = I2;
        }
        return x2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean d(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
        LuaValue I2;
        int i = 0;
        while (true) {
            if (luaValue.N()) {
                if (!luaValue.x(luaValue2).F()) {
                    break;
                }
                I2 = luaValue.I(E);
                if (I2.F()) {
                    break;
                }
            } else {
                I2 = luaValue.I(E);
                if (I2.F()) {
                    throw new o("table expected for set index ('" + luaValue2 + "') value, got " + luaValue.f_());
                }
            }
            if (I2.B()) {
                I2.a(luaValue, luaValue2, luaValue3);
                return true;
            }
            i++;
            if (i >= 100) {
                f("loop in settable");
                return false;
            }
            luaValue = I2;
        }
        luaValue.c(luaValue2, luaValue3);
        return true;
    }

    public LuaValue I(LuaValue luaValue) {
        LuaValue i = i();
        return i == null ? u : i.x(luaValue);
    }

    protected LuaValue a(LuaValue luaValue, String str) {
        LuaValue I2 = I(luaValue);
        if (I2.F()) {
            if (luaValue == W && I()) {
                throw new o("number has no integer representation (for bitwise operation '~" + d_() + "')");
            }
            throw new o(String.valueOf(str) + "a " + aa() + " value");
        }
        return I2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ah J(LuaValue luaValue) {
        if (luaValue != null && luaValue.N()) {
            LuaValue x2 = luaValue.x(G);
            if (x2.J()) {
                String d_ = x2.d_();
                boolean z2 = d_.indexOf(107) >= 0;
                boolean z3 = d_.indexOf(118) >= 0;
                if (z2 || z3) {
                    return new WeakTable(z2, z3, luaValue);
                }
            }
            return (LuaTable) luaValue;
        } else if (luaValue != null) {
            return new ai(luaValue);
        } else {
            return null;
        }
    }

    private void c(String str) {
        f("attempt to index ? (a " + f_() + " value) with key '" + str + '\'');
    }

    public static ap c(LuaValue[] luaValueArr) {
        switch (luaValueArr.length) {
            case 0:
                return x;
            case 1:
                return luaValueArr[0];
            case 2:
                return new as(luaValueArr[0], luaValueArr[1]);
            default:
                return new ar(luaValueArr, x);
        }
    }

    public static ap a(LuaValue[] luaValueArr, int i, int i2) {
        switch (i2) {
            case 0:
                return x;
            case 1:
                return luaValueArr[i];
            case 2:
                return new as(luaValueArr[i + 0], luaValueArr[i + 1]);
            default:
                return new aq(luaValueArr, i, i2, x);
        }
    }

    public static ap a(LuaValue[] luaValueArr, int i, int i2, ap apVar) {
        switch (i2) {
            case 0:
                return apVar;
            case 1:
                if (apVar.j_() > 0) {
                    return new as(luaValueArr[i], apVar);
                }
                return luaValueArr[i];
            case 2:
                if (apVar.j_() > 0) {
                    return new aq(luaValueArr, i, i2, apVar);
                }
                return new as(luaValueArr[i], luaValueArr[i + 1]);
            default:
                return new aq(luaValueArr, i, i2, apVar);
        }
    }

    public static ap b(LuaValue luaValue, ap apVar) {
        switch (apVar.j_()) {
            case 0:
                return luaValue;
            default:
                return new as(luaValue, apVar);
        }
    }

    public static ap a(LuaValue luaValue, LuaValue luaValue2, ap apVar) {
        switch (apVar.j_()) {
            case 0:
                return new as(luaValue, luaValue2);
            default:
                return new aq(new LuaValue[]{luaValue, luaValue2}, 0, 2, apVar);
        }
    }

    public ap a(ap apVar, boolean z2) {
        return a_(apVar);
    }

    public void K(LuaValue luaValue) {
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class None extends LuaNil {
        private None() {
        }

        /* synthetic */ None(None none) {
            this();
        }

        @Override // luaj.LuaValue, luaj.ap
        public LuaValue c(int i) {
            return u;
        }

        @Override // luaj.LuaValue, luaj.ap
        public int j_() {
            return 0;
        }

        @Override // luaj.LuaValue, luaj.ap
        public LuaValue g() {
            return u;
        }

        @Override // luaj.LuaNil, luaj.LuaValue, luaj.ap
        public String d_() {
            return "none";
        }

        @Override // luaj.LuaValue, luaj.ap
        public ap e_(int i) {
            return i > 0 ? this : a(1, "start must be > 0");
        }

        @Override // luaj.ap
        void b(LuaValue[] luaValueArr, int i, int i2) {
            while (i2 > 0) {
                luaValueArr[i] = u;
                i2--;
                i++;
            }
        }
    }

    @Override // luaj.ap
    public ap e_(int i) {
        if (i != 1) {
            if (i > 1) {
                return x;
            }
            return a(1, "start must be > 0");
        }
        return this;
    }

    public static LuaValue a(CharSequence charSequence) {
        double d;
        int i;
        double d2;
        int i2;
        int i3;
        char charAt;
        char charAt2;
        char charAt3;
        int i4;
        int i5;
        char charAt4;
        int length = charSequence.length();
        int i6 = 0;
        while (i6 < length && luaj.a.h.t(charSequence.charAt(i6))) {
            i6++;
        }
        if (i6 >= length || ((charAt4 = charSequence.charAt(i6)) != '-' && charAt4 != '+')) {
            d = 1.0d;
        } else {
            i6++;
            d = charAt4 == '-' ? -1.0d : 1.0d;
        }
        if (i6 + 2 >= length) {
            return null;
        }
        int i7 = i6 + 1;
        if (charSequence.charAt(i6) != '0') {
            return null;
        }
        char charAt5 = charSequence.charAt(i7);
        if (charAt5 != 'x' && charAt5 != 'X') {
            return null;
        }
        int i8 = i7 + 1;
        double d3 = 0.0d;
        long j = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < length) {
            char charAt6 = charSequence.charAt(i8);
            if (!luaj.a.h.s(charAt6)) {
                break;
            }
            int x2 = luaj.a.h.x(charAt6);
            if (i10 != 0 || x2 != 0) {
                if (i10 < 30) {
                    d3 = (d3 * 16.0d) + x2;
                } else {
                    i9 += 4;
                }
                j = (j * 16) + x2;
                i10++;
            }
            i8++;
        }
        if (i8 >= length || charSequence.charAt(i8) != '.') {
            i = i9;
            d2 = d3;
        } else {
            i10 += 8388608;
            i8++;
            int i11 = Integer.MAX_VALUE;
            i = i9;
            double d4 = d3;
            while (i8 < length) {
                if (!luaj.a.h.s(charSequence.charAt(i8))) {
                    break;
                }
                int i12 = (i11 != Integer.MAX_VALUE || d4 == 0.0d) ? i11 : i8 + 30;
                if (i8 < i12) {
                    d4 = (d4 * 16.0d) + luaj.a.h.x(charAt3);
                    i5 = i - 4;
                    i4 = i10 + 1;
                } else {
                    i4 = i10;
                    i5 = i;
                }
                i8++;
                i11 = i12;
                i10 = i4;
                i = i5;
            }
            d2 = d4;
        }
        if ((8388607 & i10) == 0) {
            return null;
        }
        if (i8 >= length || !((charAt = charSequence.charAt(i8)) == 'p' || charAt == 'P')) {
            i2 = i10;
            i3 = i;
        } else {
            int i13 = i10 + 16777216;
            int i14 = i8 + 1;
            int i15 = 0;
            if (i14 < length && ((charAt2 = charSequence.charAt(i14)) == '-' || charAt2 == '+')) {
                r2 = charAt2 == '-';
                i14++;
            }
            boolean z2 = false;
            i8 = i14;
            while (i8 < length) {
                char charAt7 = charSequence.charAt(i8);
                if (!luaj.a.h.r(charAt7)) {
                    break;
                }
                i15 = (charAt7 + (i15 * 10)) - 48;
                i8++;
                z2 = true;
            }
            if (!z2) {
                return null;
            }
            int i16 = i + (r2 ? -i15 : i15);
            i2 = i13;
            i3 = i16;
        }
        while (i8 < length && luaj.a.h.t(charSequence.charAt(i8))) {
            i8++;
        }
        if (i8 != length) {
            return null;
        }
        if (i2 < 8388608) {
            if (d <= 0.0d) {
                j = -j;
            }
            return LuaLong.b(j);
        }
        return c(d * d2 * Math.pow(2.0d, i3));
    }

    public static LuaValue c(String str, LuaValue luaValue) {
        LuaValue luaValue2 = null;
        try {
            luaValue2 = n(str);
        } catch (NumberFormatException e) {
        }
        return luaValue2 == null ? luaValue : luaValue2;
    }

    public static LuaValue n(String str) {
        return (str.indexOf(120) >= 0 || str.indexOf(88) >= 0) ? a(str) : l(str.trim());
    }

    public boolean Q() {
        return false;
    }
}
