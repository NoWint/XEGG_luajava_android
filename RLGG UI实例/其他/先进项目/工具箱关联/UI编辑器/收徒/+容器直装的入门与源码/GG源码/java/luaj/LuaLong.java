package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public class LuaLong extends LuaNumber {
    public static final LuaLong a = new LuaLong(Long.MAX_VALUE);
    public static final LuaLong b = new LuaLong(Long.MIN_VALUE);
    private static final LuaLong[] d = new LuaLong[512];
    private static final LuaString[] f = new LuaString[512];
    private static final String[] g = new String[512];
    public final long c;

    public static LuaLong b(long j) {
        if (j > 255 || j < -256) {
            return j == Long.MAX_VALUE ? a : j == Long.MIN_VALUE ? b : new LuaLong(j);
        }
        LuaLong luaLong = d[(int) (j + 256)];
        if (luaLong == null) {
            LuaLong luaLong2 = new LuaLong(j);
            d[(int) (j + 256)] = luaLong2;
            return luaLong2;
        }
        return luaLong;
    }

    LuaLong(long j) {
        this.c = j;
    }

    @Override // luaj.LuaValue
    public boolean h_() {
        return true;
    }

    @Override // luaj.LuaValue
    public boolean E() {
        return true;
    }

    @Override // luaj.LuaValue
    public boolean q_() {
        return ((long) ((int) this.c)) == this.c;
    }

    @Override // luaj.LuaValue
    public boolean n() {
        return true;
    }

    @Override // luaj.LuaValue
    public double o() {
        return this.c;
    }

    @Override // luaj.LuaValue
    public int p() {
        return (int) this.c;
    }

    @Override // luaj.LuaValue
    public long q() {
        return this.c;
    }

    @Override // luaj.LuaValue
    public double b(double d2) {
        return this.c;
    }

    @Override // luaj.LuaValue
    public int b_(int i) {
        return (int) this.c;
    }

    @Override // luaj.LuaValue
    public long a_(long j) {
        return this.c;
    }

    @Override // luaj.LuaValue, luaj.ap
    public String d_() {
        return S();
    }

    private String S() {
        if (this.c > 255 || this.c < -256) {
            return Long.toString(this.c);
        }
        String str = g[(int) (this.c + 256)];
        if (str == null) {
            String l = Long.toString(this.c);
            g[(int) (this.c + 256)] = l;
            return l;
        }
        return str;
    }

    private LuaString T() {
        if (this.c > 255 || this.c < -256) {
            return LuaString.c(S());
        }
        LuaString luaString = f[(int) (this.c + 256)];
        if (luaString == null) {
            LuaString c = LuaString.c(S());
            f[(int) (this.c + 256)] = c;
            return c;
        }
        return luaString;
    }

    @Override // luaj.LuaValue
    public LuaString t() {
        return T();
    }

    @Override // luaj.LuaValue
    public LuaString a(LuaString luaString) {
        return T();
    }

    @Override // luaj.LuaValue
    public LuaValue u() {
        return T();
    }

    @Override // luaj.LuaValue
    public String b_(String str) {
        return S();
    }

    public int hashCode() {
        return c(this.c);
    }

    public static int c(long j) {
        return (int) ((j >>> 32) ^ j);
    }

    @Override // luaj.LuaValue
    public LuaValue r() {
        return b(-this.c);
    }

    @Override // luaj.LuaValue
    public LuaValue s() {
        return b(this.c ^ (-1));
    }

    @Override // luaj.LuaValue
    public boolean equals(Object obj) {
        return (obj instanceof LuaLong) && ((LuaLong) obj).c == this.c;
    }

    @Override // luaj.LuaValue
    public boolean b(LuaValue luaValue) {
        return !luaValue.I() ? super.b(luaValue) : luaValue.n() ? this.c == luaValue.q() : ((double) this.c) == luaValue.o();
    }

    @Override // luaj.LuaValue
    public boolean c(LuaValue luaValue) {
        if (luaValue.I()) {
            return luaValue.n() ? this.c == luaValue.q() : ((double) this.c) == luaValue.o();
        }
        return false;
    }

    @Override // luaj.LuaValue
    public LuaValue d(LuaValue luaValue) {
        return !luaValue.I() ? super.d(luaValue) : luaValue.n() ? b(this.c + luaValue.q()) : c(this.c + luaValue.o());
    }

    @Override // luaj.LuaValue
    public LuaValue e(LuaValue luaValue) {
        return !luaValue.I() ? super.e(luaValue) : luaValue.n() ? b(this.c - luaValue.q()) : c(this.c - luaValue.o());
    }

    @Override // luaj.LuaValue
    public LuaValue f(LuaValue luaValue) {
        return !luaValue.I() ? super.f(luaValue) : luaValue.n() ? b(this.c * luaValue.q()) : c(this.c * luaValue.o());
    }

    @Override // luaj.LuaValue
    public LuaValue g(LuaValue luaValue) {
        return !luaValue.I() ? super.g(luaValue) : c(Math.pow(this.c, luaValue.o()));
    }

    @Override // luaj.LuaValue
    public LuaValue h(LuaValue luaValue) {
        return !luaValue.I() ? super.h(luaValue) : (!luaValue.n() || luaValue.q() == 0) ? LuaDouble.a(this.c, luaValue.o()) : b(this.c / luaValue.q());
    }

    @Override // luaj.LuaValue
    public LuaValue i(LuaValue luaValue) {
        return !luaValue.I() ? super.i(luaValue) : luaValue.E() ? b(c(this.c, luaValue.q())) : LuaDouble.b(this.c, luaValue.o());
    }

    @Override // luaj.LuaValue
    public LuaValue j(LuaValue luaValue) {
        return !luaValue.I() ? super.j(luaValue) : luaValue.E() ? b(d(this.c, luaValue.q())) : LuaDouble.c(this.c, luaValue.o());
    }

    @Override // luaj.LuaValue
    public LuaValue k(LuaValue luaValue) {
        return !luaValue.n() ? super.k(luaValue) : b(this.c & luaValue.q());
    }

    @Override // luaj.LuaValue
    public LuaValue l(LuaValue luaValue) {
        return !luaValue.n() ? super.l(luaValue) : b(this.c | luaValue.q());
    }

    @Override // luaj.LuaValue
    public LuaValue m(LuaValue luaValue) {
        return !luaValue.n() ? super.m(luaValue) : b(this.c ^ luaValue.q());
    }

    @Override // luaj.LuaValue
    public LuaValue n(LuaValue luaValue) {
        return !luaValue.n() ? super.n(luaValue) : a(this.c, luaValue.q());
    }

    @Override // luaj.LuaValue
    public LuaValue o(LuaValue luaValue) {
        return !luaValue.n() ? super.o(luaValue) : b(this.c, luaValue.q());
    }

    @Override // luaj.LuaValue
    public boolean p(LuaValue luaValue) {
        return !(luaValue instanceof LuaNumber) ? super.p(luaValue) : luaValue.n() ? this.c < luaValue.q() : ((double) this.c) < luaValue.o();
    }

    @Override // luaj.LuaValue
    public boolean q(LuaValue luaValue) {
        return !(luaValue instanceof LuaNumber) ? super.q(luaValue) : luaValue.n() ? this.c <= luaValue.q() : ((double) this.c) <= luaValue.o();
    }

    @Override // luaj.LuaValue
    public boolean r(LuaValue luaValue) {
        return !(luaValue instanceof LuaNumber) ? super.r(luaValue) : luaValue.n() ? this.c > luaValue.q() : ((double) this.c) > luaValue.o();
    }

    @Override // luaj.LuaValue
    public boolean s(LuaValue luaValue) {
        return !(luaValue instanceof LuaNumber) ? super.s(luaValue) : luaValue.n() ? this.c >= luaValue.q() : ((double) this.c) >= luaValue.o();
    }

    @Override // luaj.LuaValue
    public int v() {
        return (int) this.c;
    }

    @Override // luaj.LuaValue
    public long w() {
        return this.c;
    }

    @Override // luaj.LuaValue
    public double x() {
        return this.c;
    }

    @Override // luaj.LuaValue
    public String y() {
        return String.valueOf(this.c);
    }

    @Override // luaj.LuaValue
    public LuaString z() {
        return m(String.valueOf(this.c));
    }

    public static LuaValue a(long j, long j2) {
        return j2 < 0 ? b(j, -j2) : j2 > 63 ? y : b(j << ((int) j2));
    }

    public static LuaValue b(long j, long j2) {
        return j2 < 0 ? a(j, -j2) : j2 > 63 ? y : b(j >>> ((int) j2));
    }

    public static long c(long j, long j2) {
        if (j2 == 0) {
            throw new o("attempt to divide by zero (as '" + j + " // " + j2 + "')");
        }
        long j3 = j / j2;
        if ((j ^ j2) < 0 && j3 * j2 != j) {
            return j3 - 1;
        }
        return j3;
    }

    public static long d(long j, long j2) {
        if (j2 == 0) {
            throw new o("attempt to perform 'n%0' (as '" + j + " % " + j2 + "')");
        }
        long j3 = j % j2;
        if (j3 != 0) {
            return (j2 < 0) ^ ((j3 > 0L ? 1 : (j3 == 0L ? 0 : -1)) < 0) ? j3 + j2 : j3;
        }
        return j3;
    }
}
