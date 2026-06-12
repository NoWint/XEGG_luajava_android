package luaj;

import luaj.lib.VarArgFunction;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class ap {
    public static final ThreadLocal ah = new ThreadLocal();

    public abstract LuaValue c(int i);

    public abstract ap e_(int i);

    public abstract LuaValue g();

    public abstract int j_();

    public ap b() {
        return this;
    }

    public boolean l_() {
        return false;
    }

    public boolean f(int i) {
        return c(i).F();
    }

    public boolean g(int i) {
        return c(i).B();
    }

    public boolean h(int i) {
        return c(i).I();
    }

    public boolean i(int i) {
        return c(i).J();
    }

    public boolean j(int i) {
        return c(i).p_();
    }

    public boolean a(int i, boolean z) {
        try {
            return c(i).a(z);
        } catch (o e) {
            throw a(i, e);
        }
    }

    public double a(int i, double d) {
        try {
            return c(i).b(d);
        } catch (o e) {
            throw a(i, e);
        }
    }

    public LuaFunction a(int i, LuaFunction luaFunction) {
        try {
            return c(i).a(luaFunction);
        } catch (o e) {
            throw a(i, e);
        }
    }

    public int d(int i, int i2) {
        try {
            return c(i).b_(i2);
        } catch (o e) {
            throw a(i, e);
        }
    }

    public long a(int i, long j) {
        try {
            return c(i).a_(j);
        } catch (o e) {
            throw a(i, e);
        }
    }

    public String c(int i, String str) {
        try {
            return c(i).b_(str);
        } catch (o e) {
            throw a(i, e);
        }
    }

    public LuaString a(int i, LuaString luaString) {
        try {
            return c(i).a(luaString);
        } catch (o e) {
            throw a(i, e);
        }
    }

    public LuaTable a(int i, LuaTable luaTable) {
        try {
            return c(i).a(luaTable);
        } catch (o e) {
            throw a(i, e);
        }
    }

    public LuaValue d(int i, LuaValue luaValue) {
        return (i <= 0 || i > j_()) ? luaValue : c(i);
    }

    private o a(int i, o oVar) {
        String message = oVar.getMessage();
        if (message.startsWith("bad argument: ")) {
            message = message.substring("bad argument: ".length());
        }
        String str = String.valueOf(i <= j_() ? c(i).f_() : "no value") + ": " + message;
        VarArgFunction varArgFunction = (VarArgFunction) ah.get();
        return new n(i, varArgFunction == null ? null : varArgFunction.g_(), str);
    }

    public boolean k(int i) {
        try {
            return c(i).h();
        } catch (o e) {
            throw a(i, e);
        }
    }

    public LuaClosure l(int i) {
        try {
            return c(i).k();
        } catch (o e) {
            throw a(i, e);
        }
    }

    public double m(int i) {
        try {
            return c(i).x();
        } catch (o e) {
            throw a(i, e);
        }
    }

    public LuaFunction n(int i) {
        try {
            return c(i).C();
        } catch (o e) {
            throw a(i, e);
        }
    }

    public int o(int i) {
        try {
            return c(i).v();
        } catch (o e) {
            throw a(i, e);
        }
    }

    public long p(int i) {
        try {
            return c(i).w();
        } catch (o e) {
            throw a(i, e);
        }
    }

    public LuaNumber q(int i) {
        try {
            return c(i).G();
        } catch (o e) {
            throw a(i, e);
        }
    }

    public String r(int i) {
        try {
            return c(i).y();
        } catch (o e) {
            throw a(i, e);
        }
    }

    public LuaString s(int i) {
        try {
            return c(i).z();
        } catch (o e) {
            throw a(i, e);
        }
    }

    public LuaTable t(int i) {
        try {
            return c(i).O();
        } catch (o e) {
            throw a(i, e);
        }
    }

    public LuaThread u(int i) {
        try {
            return c(i).R();
        } catch (o e) {
            throw a(i, e);
        }
    }

    public LuaValue v(int i) {
        return i <= j_() ? c(i) : LuaValue.a(i, "value expected");
    }

    public void a(boolean z, int i, String str) {
        if (z) {
            return;
        }
        LuaValue.a(i, str);
    }

    public boolean w(int i) {
        return c(i).i_();
    }

    public long x(int i) {
        return c(i).q();
    }

    public String y(int i) {
        return c(i).d_();
    }

    public String d_() {
        a aVar = new a();
        aVar.a("(");
        int j_ = j_();
        for (int i = 1; i <= j_; i++) {
            if (i > 1) {
                aVar.a(",");
            }
            aVar.a(c(i).d_());
        }
        aVar.a(")");
        return aVar.c();
    }

    public String toString() {
        return d_();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(LuaValue[] luaValueArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            luaValueArr[i + i3] = c(i3 + 1);
        }
    }

    public ap ae() {
        int j_ = j_();
        switch (j_) {
            case 0:
                return LuaValue.x;
            case 1:
                return g();
            case 2:
                return new as(g(), c(2));
            default:
                LuaValue[] luaValueArr = new LuaValue[j_];
                b(luaValueArr, 0, j_);
                return new ar(luaValueArr, LuaValue.x);
        }
    }
}
