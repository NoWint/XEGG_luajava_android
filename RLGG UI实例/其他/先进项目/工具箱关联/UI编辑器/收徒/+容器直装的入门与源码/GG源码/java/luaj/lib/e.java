package luaj.lib;

import luaj.LuaClosure;
import luaj.LuaFunction;
import luaj.LuaString;
import luaj.LuaValue;
import luaj.aj;
import luaj.ap;

/* compiled from: src */
/* loaded from: classes.dex */
public class e {
    LuaFunction a;
    int b;
    e c;
    boolean d;
    boolean e;
    private LuaValue[] f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LuaClosure luaClosure, ap apVar, LuaValue[] luaValueArr, boolean z, boolean z2) {
        this.a = luaClosure;
        this.f = luaValueArr;
        this.b = 0;
        this.d = z;
        this.e = z2;
    }

    public String a() {
        return this.a.j() ? this.a.k().a.b() : "[Java]";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(LuaFunction luaFunction, boolean z, boolean z2) {
        this.a = luaFunction;
        this.f = null;
        this.b = 0;
        this.d = z;
        this.e = z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        this.a = null;
        this.f = null;
        this.b = 0;
        this.d = false;
        this.e = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, ap apVar, int i2) {
        this.b = i;
        if (DebugLib.b) {
            aj.a(this.a.k(), i, this.f, i2, apVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap a(int i) {
        if (i < 0) {
            if (this.a.j()) {
                int i2 = -i;
                ap m = this.a.k().m();
                return (m == null || i2 > m.j_()) ? DebugLib.u : DebugLib.b((LuaValue) DebugLib.r, (ap) m.c(i2));
            }
            return DebugLib.u;
        }
        LuaString b = b(i);
        if (this.f != null && i >= 1 && i <= this.f.length && this.f[i - 1] != null) {
            if (b == null) {
                b = DebugLib.q;
            }
            return DebugLib.b((LuaValue) b, (ap) this.f[i - 1]);
        }
        return DebugLib.u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap a(int i, LuaValue luaValue) {
        int i2 = 1;
        if (i < 0) {
            if (this.a.j()) {
                LuaClosure k = this.a.k();
                int i3 = -i;
                ap m = k.m();
                if (m == null || i3 > m.j_()) {
                    return DebugLib.u;
                }
                int j_ = m.j_();
                LuaValue[] luaValueArr = new LuaValue[j_];
                while (i2 <= j_) {
                    luaValueArr[i2 - 1] = i3 == i2 ? luaValue : m.c(i2);
                    i2++;
                }
                k.b(DebugLib.c(luaValueArr));
                return DebugLib.r;
            }
            return DebugLib.u;
        }
        LuaString b = b(i);
        if (this.f != null && i >= 1 && i <= this.f.length && this.f[i - 1] != null) {
            this.f[i - 1] = luaValue;
            return b == null ? DebugLib.q : b;
        }
        return DebugLib.u;
    }

    public int c() {
        int[] iArr;
        if (this.a.j() && (iArr = this.a.k().a.t) != null && this.b >= 0 && this.b < iArr.length) {
            return iArr[this.b];
        }
        return -1;
    }

    LuaString b(int i) {
        if (this.a.j()) {
            return this.a.k().a.a(i, this.b);
        }
        return null;
    }

    public String toString() {
        return "CallFrame [f=" + this.a + ", pc=" + this.b + ", hookcall=" + this.d + "]";
    }
}
