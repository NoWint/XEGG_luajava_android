package luaj;

/* compiled from: src */
/* loaded from: classes.dex */
public class LuaDouble extends LuaNumber {
    public static final LuaDouble a = new LuaDouble(Double.NaN);
    public static final LuaDouble b = new LuaDouble(Double.POSITIVE_INFINITY);
    public static final LuaDouble c = new LuaDouble(Double.NEGATIVE_INFINITY);
    final double d;

    public static LuaNumber a(double d) {
        return new LuaDouble(d);
    }

    private LuaDouble(double d) {
        this.d = d;
    }

    public int hashCode() {
        int i = (int) this.d;
        long doubleToRawLongBits = ((double) i) == this.d ? i : Double.doubleToRawLongBits(this.d);
        return (int) (doubleToRawLongBits ^ (doubleToRawLongBits >>> 32));
    }

    @Override // luaj.LuaValue
    public boolean q_() {
        return ((double) ((int) this.d)) == this.d;
    }

    @Override // luaj.LuaValue
    public boolean n() {
        return -9.007199254740992E15d <= this.d && this.d <= 9.007199254740992E15d && ((double) ((long) this.d)) == this.d;
    }

    @Override // luaj.LuaValue
    public double o() {
        return this.d;
    }

    @Override // luaj.LuaValue
    public int p() {
        return (int) this.d;
    }

    @Override // luaj.LuaValue
    public long q() {
        return (long) this.d;
    }

    @Override // luaj.LuaValue
    public double b(double d) {
        return this.d;
    }

    @Override // luaj.LuaValue
    public int b_(int i) {
        return (int) this.d;
    }

    @Override // luaj.LuaValue
    public long a_(long j) {
        return (long) this.d;
    }

    @Override // luaj.LuaValue
    public LuaValue r() {
        return a(-this.d);
    }

    @Override // luaj.LuaValue
    public LuaValue s() {
        return !n() ? super.s() : d(q() ^ (-1));
    }

    @Override // luaj.LuaValue
    public boolean equals(Object obj) {
        return (obj instanceof LuaDouble) && Double.doubleToRawLongBits(((LuaDouble) obj).d) == Double.doubleToRawLongBits(this.d);
    }

    @Override // luaj.LuaValue
    public boolean b(LuaValue luaValue) {
        return !luaValue.I() ? super.b(luaValue) : this.d == luaValue.o();
    }

    @Override // luaj.LuaValue
    public boolean c(LuaValue luaValue) {
        return luaValue.I() && this.d == luaValue.o();
    }

    @Override // luaj.LuaValue
    public LuaValue d(LuaValue luaValue) {
        return !luaValue.I() ? super.d(luaValue) : a(this.d + luaValue.o());
    }

    @Override // luaj.LuaValue
    public LuaValue e(LuaValue luaValue) {
        return !luaValue.I() ? super.e(luaValue) : a(this.d - luaValue.o());
    }

    @Override // luaj.LuaValue
    public LuaValue f(LuaValue luaValue) {
        return !luaValue.I() ? super.f(luaValue) : a(this.d * luaValue.o());
    }

    @Override // luaj.LuaValue
    public LuaValue g(LuaValue luaValue) {
        return !luaValue.I() ? super.g(luaValue) : a(Math.pow(this.d, luaValue.o()));
    }

    @Override // luaj.LuaValue
    public LuaValue h(LuaValue luaValue) {
        return !luaValue.I() ? super.h(luaValue) : a(this.d, luaValue.o());
    }

    @Override // luaj.LuaValue
    public LuaValue i(LuaValue luaValue) {
        return !luaValue.I() ? super.i(luaValue) : b(this.d, luaValue.o());
    }

    @Override // luaj.LuaValue
    public LuaValue j(LuaValue luaValue) {
        return !luaValue.I() ? super.j(luaValue) : c(this.d, luaValue.o());
    }

    @Override // luaj.LuaValue
    public LuaValue k(LuaValue luaValue) {
        return d("&", luaValue) ? super.k(luaValue) : d(q() & luaValue.q());
    }

    @Override // luaj.LuaValue
    public LuaValue l(LuaValue luaValue) {
        return d("|", luaValue) ? super.l(luaValue) : d(q() | luaValue.q());
    }

    @Override // luaj.LuaValue
    public LuaValue m(LuaValue luaValue) {
        return d("~", luaValue) ? super.m(luaValue) : d(q() ^ luaValue.q());
    }

    @Override // luaj.LuaValue
    public LuaValue n(LuaValue luaValue) {
        return d("<<", luaValue) ? super.n(luaValue) : LuaLong.a(q(), luaValue.q());
    }

    @Override // luaj.LuaValue
    public LuaValue o(LuaValue luaValue) {
        return d(">>", luaValue) ? super.o(luaValue) : LuaLong.b(q(), luaValue.q());
    }

    private boolean d(String str, LuaValue luaValue) {
        if (luaValue.I()) {
            if (!n()) {
                throw new o("number '" + d_() + "' has no integer representation (for bitwise operation '" + d_() + " " + str + " " + luaValue.d_() + "')");
            }
            if (!luaValue.n()) {
                throw new o("number '" + luaValue.d_() + "' has no integer representation (for bitwise operation '" + d_() + " " + str + " " + luaValue.d_() + "')");
            }
            return false;
        }
        return true;
    }

    public static LuaValue a(double d, double d2) {
        return d2 != 0.0d ? a(d / d2) : d > 0.0d ? b : d == 0.0d ? a : c;
    }

    public static LuaValue b(double d, double d2) {
        return d2 != 0.0d ? a(Math.floor(d / d2)) : d > 0.0d ? b : d == 0.0d ? a : c;
    }

    public static LuaValue c(double d, double d2) {
        if (d2 == 0.0d || d == Double.POSITIVE_INFINITY || d == Double.NEGATIVE_INFINITY) {
            return a;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            return d < 0.0d ? b : a(d);
        } else if (d2 == Double.NEGATIVE_INFINITY) {
            return d > 0.0d ? c : a(d);
        } else {
            return a(d - (Math.floor(d / d2) * d2));
        }
    }

    @Override // luaj.LuaValue
    public boolean p(LuaValue luaValue) {
        return !(luaValue instanceof LuaNumber) ? super.p(luaValue) : this.d < luaValue.o();
    }

    @Override // luaj.LuaValue
    public boolean q(LuaValue luaValue) {
        return !(luaValue instanceof LuaNumber) ? super.q(luaValue) : this.d <= luaValue.o();
    }

    @Override // luaj.LuaValue
    public boolean r(LuaValue luaValue) {
        return !(luaValue instanceof LuaNumber) ? super.r(luaValue) : this.d > luaValue.o();
    }

    @Override // luaj.LuaValue
    public boolean s(LuaValue luaValue) {
        return !(luaValue instanceof LuaNumber) ? super.s(luaValue) : this.d >= luaValue.o();
    }

    @Override // luaj.LuaValue, luaj.ap
    public String d_() {
        if (this.d == 0.0d) {
            return (Double.doubleToLongBits(this.d) >> 63) == 0 ? "0.0" : "-0.0";
        } else if (Double.isNaN(this.d)) {
            return "nan";
        } else {
            if (Double.isInfinite(this.d)) {
                return this.d < 0.0d ? "-inf" : "inf";
            }
            long j = (long) this.d;
            String l = ((double) j) == this.d ? Long.toString(j) : Double.toString(this.d);
            return (l.indexOf(46) == -1 && l.indexOf(101) == -1 && l.indexOf(69) == -1) ? String.valueOf(l) + ".0" : l;
        }
    }

    @Override // luaj.LuaValue
    public LuaString t() {
        return LuaString.c(d_());
    }

    @Override // luaj.LuaValue
    public LuaString a(LuaString luaString) {
        return LuaString.c(d_());
    }

    @Override // luaj.LuaValue
    public LuaValue u() {
        return LuaString.c(d_());
    }

    @Override // luaj.LuaValue
    public String b_(String str) {
        return d_();
    }

    @Override // luaj.LuaValue
    public int v() {
        int i = (int) this.d;
        if (i == this.d) {
            return i;
        }
        throw new o("number '" + d_() + "' has no integer representation");
    }

    @Override // luaj.LuaValue
    public long w() {
        long j = (long) this.d;
        if (j == this.d) {
            return j;
        }
        throw new o("number '" + d_() + "' has no integer representation");
    }

    @Override // luaj.LuaValue
    public double x() {
        return this.d;
    }

    @Override // luaj.LuaValue
    public String y() {
        return d_();
    }

    @Override // luaj.LuaValue
    public LuaString z() {
        return LuaString.c(d_());
    }

    @Override // luaj.LuaValue
    public boolean A() {
        return !Double.isNaN(this.d);
    }
}
