package luaj.lib;

import java.util.Random;
import luaj.LuaDouble;
import luaj.LuaLong;
import luaj.LuaTable;
import luaj.LuaValue;
import luaj.ap;
import luaj.o;

/* compiled from: src */
/* loaded from: classes.dex */
public class MathLib extends TwoArgFunction {
    @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        LuaValue luaTable = new LuaTable(0, 64);
        luaTable.a("abs", new abs());
        luaTable.a("acos", new acos());
        luaTable.a("asin", new asin());
        LuaValue atan2Var = new atan2();
        luaTable.a("atan", atan2Var);
        luaTable.a("atan2", atan2Var);
        luaTable.a("ceil", new ceil());
        luaTable.a("cos", new cos());
        luaTable.a("cosh", new cosh());
        luaTable.a("deg", new deg());
        luaTable.a("exp", new exp());
        luaTable.a("floor", new floor());
        luaTable.a("fmod", new fmod());
        luaTable.a("frexp", new frexp());
        luaTable.a("huge", LuaDouble.b);
        luaTable.a("ldexp", new ldexp());
        luaTable.a("log", new log());
        luaTable.a("max", new max());
        luaTable.a("maxinteger", LuaLong.a);
        luaTable.a("min", new min());
        luaTable.a("mininteger", LuaLong.b);
        luaTable.a("modf", new modf());
        luaTable.a("pi", 3.141592653589793d);
        luaTable.a("pow", new pow());
        random randomVar = new random();
        luaTable.a("random", randomVar);
        luaTable.a("randomseed", new randomseed(randomVar));
        luaTable.a("rad", new rad());
        luaTable.a("sin", new sin());
        luaTable.a("sinh", new sinh());
        luaTable.a("sqrt", new sqrt());
        luaTable.a("tan", new tan());
        luaTable.a("tanh", new tanh());
        luaTable.a("tointeger", new tointeger());
        luaTable.a("type", new type());
        luaTable.a("ult", new ult());
        luaValue2.a("math", luaTable);
        if (!luaValue2.j("package").F()) {
            luaValue2.j("package").j("loaded").a("math", luaTable);
        }
        return luaTable;
    }

    static String a(LibFunction libFunction) {
        return libFunction.getClass().getName().replace(String.valueOf(MathLib.class.getName()) + '$', "math.");
    }

    static double a(LibFunction libFunction, int i, LuaValue luaValue) {
        try {
            return luaValue.x();
        } catch (o e) {
            a(i, a(libFunction), e.getMessage());
            return 0.0d;
        }
    }

    static double a(LibFunction libFunction, int i, LuaValue luaValue, double d) {
        try {
            return luaValue.b(d);
        } catch (o e) {
            a(i, a(libFunction), e.getMessage());
            return 0.0d;
        }
    }

    static long b(LibFunction libFunction, int i, LuaValue luaValue) {
        try {
            return luaValue.w();
        } catch (o e) {
            a(i, a(libFunction), e.getMessage());
            return 0L;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public abstract class UnaryOp extends OneArgFunction {
        protected abstract double a(double d);

        protected UnaryOp() {
        }

        @Override // luaj.lib.OneArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return c(a(MathLib.a(this, 1, luaValue)));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    public abstract class BinaryOp extends TwoArgFunction {
        protected abstract double a(double d, double d2);

        protected BinaryOp() {
        }

        @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            return c(a(MathLib.a(this, 1, luaValue), MathLib.a(this, 2, luaValue2)));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class abs extends OneArgFunction {
        abs() {
        }

        @Override // luaj.lib.OneArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return luaValue.E() ? d(Math.abs(luaValue.q())) : c(Math.abs(MathLib.a(this, 1, luaValue)));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class ceil extends UnaryOp {
        ceil() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.ceil(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class cos extends UnaryOp {
        cos() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.cos(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class deg extends UnaryOp {
        deg() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.toDegrees(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class floor extends UnaryOp {
        floor() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.floor(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class rad extends UnaryOp {
        rad() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.toRadians(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class sin extends UnaryOp {
        sin() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.sin(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class sqrt extends UnaryOp {
        sqrt() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.sqrt(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class tan extends UnaryOp {
        tan() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.tan(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class tointeger extends OneArgFunction {
        tointeger() {
        }

        @Override // luaj.lib.OneArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return luaValue.n() ? d(luaValue.q()) : u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class type extends OneArgFunction {
        type() {
        }

        @Override // luaj.lib.OneArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            if (luaValue instanceof LuaLong) {
                return m("integer");
            }
            if (luaValue instanceof LuaDouble) {
                return m("float");
            }
            return u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class ult extends TwoArgFunction {
        ult() {
        }

        @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            long b = MathLib.b(this, 1, luaValue);
            long b2 = MathLib.b(this, 2, luaValue2);
            return (b2 < 0) ^ (((b > 0L ? 1 : (b == 0L ? 0 : -1)) < 0) ^ ((b > b2 ? 1 : (b == b2 ? 0 : -1)) < 0)) ? v : w;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class fmod extends TwoArgFunction {
        fmod() {
        }

        @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            return (luaValue.E() && luaValue2.E()) ? d(luaValue.q() % luaValue2.q()) : c(MathLib.a(this, 1, luaValue) % MathLib.a(this, 2, luaValue2));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class ldexp extends BinaryOp {
        ldexp() {
        }

        @Override // luaj.lib.MathLib.BinaryOp
        protected double a(double d, double d2) {
            return Double.longBitsToDouble((((long) d2) + 1023) << 52) * d;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class frexp extends VarArgFunction {
        frexp() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            double m = apVar.m(1);
            if (m == 0.0d) {
                return b((LuaValue) y, (ap) y);
            }
            long doubleToLongBits = Double.doubleToLongBits(m);
            return b((LuaValue) c((doubleToLongBits >= 0 ? 1.1102230246251565E-16d : -1.1102230246251565E-16d) * ((4503599627370495L & doubleToLongBits) + 4503599627370496L)), (ap) c((((int) (doubleToLongBits >> 52)) & 2047) - 1022));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class max extends VarArgFunction {
        max() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaValue v = apVar.v(1);
            int j_ = apVar.j_();
            int i = 2;
            while (i <= j_) {
                LuaValue v2 = apVar.v(i);
                if (!v.p(v2)) {
                    v2 = v;
                }
                i++;
                v = v2;
            }
            return v;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class min extends VarArgFunction {
        min() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaValue v = apVar.v(1);
            int j_ = apVar.j_();
            int i = 2;
            while (i <= j_) {
                LuaValue v2 = apVar.v(i);
                if (!v2.p(v)) {
                    v2 = v;
                }
                i++;
                v = v2;
            }
            return v;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class modf extends VarArgFunction {
        modf() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaValue g = apVar.g();
            if (g.n()) {
                return b(g, (ap) c(0.0d));
            }
            double x = g.x();
            double floor = x > 0.0d ? Math.floor(x) : Math.ceil(x);
            return b((LuaValue) c(floor), (ap) c(x != floor ? x - floor : 0.0d));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class random extends LibFunction {
        Random a = new Random();

        random() {
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue l() {
            return c(this.a.nextDouble());
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            long w = luaValue.w();
            if (w < 1) {
                a(1, "interval is empty");
            }
            return d((S() % w) + 1);
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            long w = luaValue.w();
            long w2 = luaValue2.w();
            if (w2 < w) {
                a(2, "interval is empty");
            }
            long j = w2 - w;
            if (j < 0) {
                a(2, "interval too large");
            }
            long S = S();
            if (j != Long.MAX_VALUE) {
                S %= j + 1;
            }
            return d(S + w);
        }

        @Override // luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2, LuaValue luaValue3) {
            return a(3, "too many arguments");
        }

        private long S() {
            long nextLong = this.a.nextLong();
            return nextLong < 0 ? nextLong + Long.MAX_VALUE + 1 : nextLong;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class randomseed extends OneArgFunction {
        final random a;

        randomseed(random randomVar) {
            this.a = randomVar;
        }

        @Override // luaj.lib.OneArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            long b = MathLib.b(this, 1, luaValue);
            this.a.a = new Random(b);
            return x;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class acos extends UnaryOp {
        acos() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.acos(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class asin extends UnaryOp {
        asin() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.asin(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class atan2 extends TwoArgFunction {
        atan2() {
        }

        @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            return c(Math.atan2(MathLib.a(this, 1, luaValue), MathLib.a(this, 2, luaValue2, 1.0d)));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class cosh extends UnaryOp {
        cosh() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.cosh(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class exp extends UnaryOp {
        exp() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.exp(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class log extends TwoArgFunction {
        log() {
        }

        @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
            double log = Math.log(MathLib.a(this, 1, luaValue));
            double a = MathLib.a(this, 2, luaValue2, 2.718281828459045d);
            if (a != 2.718281828459045d) {
                log /= Math.log(a);
            }
            return c(log);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class pow extends BinaryOp {
        pow() {
        }

        @Override // luaj.lib.MathLib.BinaryOp
        protected double a(double d, double d2) {
            return Math.pow(d, d2);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class sinh extends UnaryOp {
        sinh() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.sinh(d);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class tanh extends UnaryOp {
        tanh() {
        }

        @Override // luaj.lib.MathLib.UnaryOp
        protected double a(double d) {
            return Math.tanh(d);
        }
    }
}
