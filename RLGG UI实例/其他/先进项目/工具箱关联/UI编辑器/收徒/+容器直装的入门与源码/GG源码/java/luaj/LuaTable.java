package luaj;

import android.ext.la;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: src */
/* loaded from: classes.dex */
public class LuaTable extends LuaValue implements ah {
    private static final LuaString a = m("n");
    private static final ad[] d = new ad[0];
    private static volatile Set e = null;
    private static volatile int f = 0;
    private LuaValue[] b;
    private ad[] c;
    protected int o;
    protected ah p;

    public LuaTable() {
        this.b = B;
        this.c = d;
    }

    public LuaTable(int i, int i2) {
        a(i, i2);
    }

    public LuaTable(LuaValue[] luaValueArr, LuaValue[] luaValueArr2, ap apVar) {
        int length = luaValueArr != null ? luaValueArr.length : 0;
        int length2 = luaValueArr2 != null ? luaValueArr2.length : 0;
        a((apVar != null ? apVar.j_() : 0) + length2, length >> 1);
        for (int i = 0; i < length2; i++) {
            b(i + 1, luaValueArr2[i]);
        }
        if (apVar != null) {
            int j_ = apVar.j_();
            for (int i2 = 1; i2 <= j_; i2++) {
                b(length2 + i2, apVar.c(i2));
            }
        }
        for (int i3 = 0; i3 < length; i3 += 2) {
            if (!luaValueArr[i3 + 1].F()) {
                c(luaValueArr[i3], luaValueArr[i3 + 1]);
            }
        }
    }

    public LuaTable(ap apVar, int i) {
        int i2 = i - 1;
        int max = Math.max(apVar.j_() - i2, 0);
        a(max, 1);
        b((LuaValue) a, (LuaValue) d(max));
        for (int i3 = 1; i3 <= max; i3++) {
            a(i3, apVar.c(i3 + i2));
        }
    }

    @Override // luaj.LuaValue
    public int e_() {
        return 5;
    }

    @Override // luaj.LuaValue
    public String f_() {
        return "table";
    }

    @Override // luaj.LuaValue
    public boolean N() {
        return true;
    }

    @Override // luaj.LuaValue
    public LuaTable O() {
        return this;
    }

    @Override // luaj.LuaValue
    public LuaTable a(LuaTable luaTable) {
        return this;
    }

    @Override // luaj.LuaValue
    public void d_(int i) {
        if (i > this.b.length) {
            this.b = b(this.b, 1 << e(i));
        }
    }

    public void a(int i, int i2) {
        if (i2 > 0 && i2 < 2) {
            i2 = 2;
        }
        this.b = i > 0 ? new LuaValue[1 << e(i)] : B;
        this.c = i2 > 0 ? new ad[1 << e(i2)] : d;
        this.o = 0;
    }

    private static LuaValue[] b(LuaValue[] luaValueArr, int i) {
        LuaValue[] luaValueArr2 = new LuaValue[i];
        System.arraycopy(luaValueArr, 0, luaValueArr2, 0, luaValueArr.length);
        return luaValueArr2;
    }

    public int P() {
        return this.b.length;
    }

    public int o_() {
        return this.c.length;
    }

    @Override // luaj.LuaValue
    public LuaValue i() {
        if (this.p != null) {
            return this.p.W();
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
        if (r3 != r1) goto L25;
     */
    @Override // luaj.LuaValue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public luaj.LuaValue v(luaj.LuaValue r6) {
        /*
            r5 = this;
            r1 = 1
            r2 = 0
            luaj.ah r0 = r5.p
            if (r0 == 0) goto L43
            luaj.ah r0 = r5.p
            boolean r0 = r0.U()
            if (r0 == 0) goto L43
            r0 = r1
        Lf:
            luaj.ah r3 = r5.p
            if (r3 == 0) goto L45
            luaj.ah r3 = r5.p
            boolean r3 = r3.V()
            if (r3 == 0) goto L45
            r3 = r1
        L1c:
            luaj.ah r4 = J(r6)
            r5.p = r4
            luaj.ah r4 = r5.p
            if (r4 == 0) goto L47
            luaj.ah r4 = r5.p
            boolean r4 = r4.U()
            if (r4 == 0) goto L47
            r4 = r1
        L2f:
            if (r0 != r4) goto L3f
            luaj.ah r0 = r5.p
            if (r0 == 0) goto L49
            luaj.ah r0 = r5.p
            boolean r0 = r0.V()
            if (r0 == 0) goto L49
        L3d:
            if (r3 == r1) goto L42
        L3f:
            r5.z(r2)
        L42:
            return r5
        L43:
            r0 = r2
            goto Lf
        L45:
            r3 = r2
            goto L1c
        L47:
            r4 = r2
            goto L2f
        L49:
            r1 = r2
            goto L3d
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.LuaTable.v(luaj.LuaValue):luaj.LuaValue");
    }

    @Override // luaj.LuaValue
    public LuaValue c_(int i) {
        LuaValue d2 = d(i);
        return (!d2.F() || this.p == null) ? d2 : i(this, d(i));
    }

    @Override // luaj.LuaValue
    public LuaValue w(LuaValue luaValue) {
        LuaValue x = x(luaValue);
        return (!x.F() || this.p == null) ? x : i(this, luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue d(int i) {
        if (i > 0 && i <= this.b.length) {
            LuaValue a2 = this.p == null ? this.b[i - 1] : this.p.a(this.b, i - 1);
            if (a2 == null) {
                return u;
            }
            return a2;
        }
        return y(LuaLong.b(i));
    }

    @Override // luaj.LuaValue
    public LuaValue x(LuaValue luaValue) {
        int p;
        if (luaValue.q_() && (p = luaValue.p()) > 0 && p <= this.b.length) {
            LuaValue a2 = this.p == null ? this.b[p - 1] : this.p.a(this.b, p - 1);
            if (a2 == null) {
                return u;
            }
            return a2;
        }
        return y(luaValue);
    }

    protected LuaValue y(LuaValue luaValue) {
        ae L = L(luaValue);
        return L == null ? u : L.t_();
    }

    private ae L(LuaValue luaValue) {
        if (this.o > 0) {
            for (ad adVar = this.c[M(luaValue)]; adVar != null; adVar = adVar.u_()) {
                ae a2 = adVar.a(luaValue);
                if (a2 != null) {
                    return a2;
                }
            }
        }
        return null;
    }

    public long z(LuaValue luaValue) {
        ae L = L(luaValue);
        if (L == null) {
            return (this.p != null ? i(this, luaValue) : u).w();
        } else if (L instanceof y) {
            return ((y) L).h();
        } else {
            if (L instanceof ab) {
                return ((ab) L).h();
            }
            return L.t_().w();
        }
    }

    @Override // luaj.LuaValue
    public void a(int i, LuaValue luaValue) {
        if (this.p == null || !d(i).F() || !d(this, LuaLong.b(i), luaValue)) {
            b(i, luaValue);
        }
    }

    @Override // luaj.LuaValue
    public void b(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue == null || (!luaValue.A() && !I(E).B())) {
            throw new o("value ('" + luaValue + "') can not be used as a table index");
        }
        if (this.p == null || !x(luaValue).F() || !d(this, luaValue, luaValue2)) {
            c(luaValue, luaValue2);
        }
    }

    @Override // luaj.LuaValue
    public void b(int i, LuaValue luaValue) {
        if (luaValue != null && !e(i, luaValue)) {
            d(LuaLong.b(i), luaValue);
        }
    }

    @Override // luaj.LuaValue
    public void c(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue != null && luaValue2 != null) {
            if (!luaValue.q_() || !e(luaValue.p(), luaValue2)) {
                d(luaValue, luaValue2);
            }
        }
    }

    private boolean e(int i, LuaValue luaValue) {
        if (i > 0 && i <= this.b.length) {
            LuaValue[] luaValueArr = this.b;
            int i2 = i - 1;
            if (luaValue.F()) {
                luaValue = null;
            } else if (this.p != null) {
                luaValue = this.p.E(luaValue);
            }
            luaValueArr[i2] = luaValue;
            return true;
        }
        return false;
    }

    public LuaValue b(int i, int i2) {
        if (i != 0) {
            if (i > i2) {
                return x;
            }
            i2 = i;
        }
        LuaValue c_ = c_(i2);
        LuaValue luaValue = c_;
        while (!luaValue.F()) {
            luaValue = c_(i2 + 1);
            a(i2, luaValue);
            i2++;
        }
        return c_.F() ? x : c_;
    }

    public void c(int i, LuaValue luaValue) {
        while (!luaValue.F()) {
            LuaValue c_ = c_(i);
            a(i, luaValue);
            luaValue = c_;
            i++;
        }
    }

    public LuaValue a(LuaString luaString, int i, int i2) {
        a aVar = new a();
        if (i <= i2) {
            aVar.a(c_(i).z());
            while (i < Integer.MAX_VALUE && (i = i + 1) <= i2) {
                aVar.a(luaString);
                aVar.a(c_(i).z());
            }
        }
        return aVar.b();
    }

    @Override // luaj.LuaValue
    public int L() {
        if (this.p != null) {
            LuaValue K = K();
            if (K.q_()) {
                return K.p();
            }
            throw new o("table length is not an integer: " + K);
        }
        return M();
    }

    @Override // luaj.LuaValue
    public LuaValue K() {
        LuaValue I = I(P);
        return I.i_() ? I.a((LuaValue) this) : LuaLong.b(M());
    }

    @Override // luaj.LuaValue
    public int M() {
        int i;
        int P = P();
        int i2 = 0;
        if (P == 0 || !d(P).F()) {
            i = P + 1;
            i2 = P;
            while (!d(i).F()) {
                i2 = i;
                i += o_() + P + 1;
            }
        } else {
            i = P;
        }
        while (i > i2 + 1) {
            int i3 = (i2 + i) / 2;
            if (d(i3).F()) {
                i = i3;
            } else {
                i2 = i3;
            }
        }
        return i2;
    }

    @Override // luaj.LuaValue
    public ap A(LuaValue luaValue) {
        int i;
        if (luaValue.F()) {
            i = 0;
        } else if (!luaValue.q_() || (i = luaValue.p()) <= 0 || i > this.b.length) {
            if (this.c.length == 0) {
                f("invalid key to 'next' 1: " + luaValue);
            }
            int M = M(luaValue);
            boolean z = false;
            for (ad adVar = this.c[M]; adVar != null; adVar = adVar.u_()) {
                if (z) {
                    ae a2 = adVar.a();
                    if (a2 != null) {
                        return a2.f();
                    }
                } else if (adVar.b(luaValue)) {
                    z = true;
                }
            }
            if (!z) {
                f("invalid key to 'next' 2: " + luaValue);
            }
            i = this.b.length + 1 + M;
        }
        while (i < this.b.length) {
            if (this.b[i] != null) {
                LuaValue a3 = this.p == null ? this.b[i] : this.p.a(this.b, i);
                if (a3 != null) {
                    return b((LuaValue) LuaLong.b(i + 1), (ap) a3);
                }
            }
            i++;
        }
        for (int length = i - this.b.length; length < this.c.length; length++) {
            for (ad adVar2 = this.c[length]; adVar2 != null; adVar2 = adVar2.u_()) {
                ae a4 = adVar2.a();
                if (a4 != null) {
                    return a4.f();
                }
            }
        }
        return u;
    }

    public z S() {
        return new z(this);
    }

    @Override // luaj.LuaValue
    public ap B(LuaValue luaValue) {
        int v = luaValue.v() + 1;
        LuaValue c_ = c_(v);
        return c_.F() ? x : b((LuaValue) LuaLong.b(v), (ap) c_);
    }

    public void d(LuaValue luaValue, LuaValue luaValue2) {
        ad f2;
        if (luaValue2.F()) {
            N(luaValue);
            return;
        }
        int i = 0;
        if (this.c.length > 0) {
            i = M(luaValue);
            for (ad adVar = this.c[i]; adVar != null; adVar = adVar.u_()) {
                ae a2 = adVar.a(luaValue);
                if (a2 != null) {
                    this.c[i] = this.c[i].a(a2, luaValue2);
                    return;
                }
            }
        }
        if (this.o >= this.c.length) {
            if ((this.p == null || !this.p.V()) && luaValue.q_() && luaValue.p() > 0) {
                z(luaValue.p());
                if (e(luaValue.p(), luaValue2)) {
                    return;
                }
            } else {
                z(-1);
            }
            i = M(luaValue);
        }
        if (this.p != null) {
            f2 = this.p.e(luaValue, luaValue2);
        } else {
            f2 = f(luaValue, luaValue2);
        }
        ad[] adVarArr = this.c;
        if (this.c[i] != null) {
            f2 = this.c[i].a(f2);
        }
        adVarArr[i] = f2;
        this.o++;
    }

    public static int c(int i, int i2) {
        return i & i2;
    }

    public static int a(LuaValue luaValue, int i) {
        return luaValue.hashCode() & i;
    }

    private int M(LuaValue luaValue) {
        return luaValue.hashCode() & (this.c.length - 1);
    }

    private void N(LuaValue luaValue) {
        if (this.c.length > 0) {
            int M = M(luaValue);
            for (ad adVar = this.c[M]; adVar != null; adVar = adVar.u_()) {
                ae a2 = adVar.a(luaValue);
                if (a2 != null) {
                    this.c[M] = this.c[M].a(a2);
                    this.o--;
                    return;
                }
            }
        }
    }

    private int af() {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < this.c.length) {
                i = i3;
                for (ad adVar = this.c[i2]; adVar != null; adVar = adVar.u_()) {
                    if (adVar.a() != null) {
                        i++;
                    }
                }
                i2++;
            } else {
                return i3;
            }
        }
    }

    private void ag() {
        for (int i = 0; i < this.b.length; i++) {
            this.p.a(this.b, i);
        }
    }

    private int a(int[] iArr) {
        int i = 1;
        int i2 = 0;
        for (int i3 = 0; i3 < 31 && i <= this.b.length; i3++) {
            int min = Math.min(this.b.length, 1 << i3);
            int i4 = 0;
            while (i <= min) {
                int i5 = i + 1;
                if (this.b[i - 1] != null) {
                    i4++;
                    i = i5;
                } else {
                    i = i5;
                }
            }
            iArr[i3] = i4;
            i2 += i4;
        }
        int i6 = 0;
        while (i6 < this.c.length) {
            int i7 = i2;
            for (ad adVar = this.c[i6]; adVar != null; adVar = adVar.u_()) {
                int b = adVar.b(Integer.MAX_VALUE);
                if (b > 0) {
                    int e2 = e(b);
                    iArr[e2] = iArr[e2] + 1;
                    i7++;
                }
            }
            i6++;
            i2 = i7;
        }
        return i2;
    }

    static int e(int i) {
        int i2;
        int i3 = i - 1;
        if (i3 < 0) {
            return Integer.MIN_VALUE;
        }
        if (((-65536) & i3) != 0) {
            i2 = 16;
            i3 >>>= 16;
        } else {
            i2 = 0;
        }
        if ((65280 & i3) != 0) {
            i2 += 8;
            i3 >>>= 8;
        }
        if ((i3 & 240) != 0) {
            i2 += 4;
            i3 >>>= 4;
        }
        switch (i3) {
            case 0:
                return 0;
            case 1:
                return i2 + 1;
            case 2:
            case 3:
                return i2 + 2;
            case 4:
            case 5:
            case 6:
            case 7:
                return i2 + 3;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return i2 + 4;
            default:
                return i2;
        }
    }

    private void z(int i) {
        LuaValue[] luaValueArr;
        int i2;
        ad[] adVarArr;
        ad f2;
        if (this.p != null && (this.p.U() || this.p.V())) {
            this.o = af();
            if (this.p.V()) {
                ag();
            }
        }
        int[] iArr = new int[32];
        int a2 = a(iArr);
        if (i > 0) {
            a2++;
            int e2 = e(i);
            iArr[e2] = iArr[e2] + 1;
        }
        int i3 = iArr[0];
        int i4 = 0;
        for (int i5 = 1; i5 < 32; i5++) {
            i3 += iArr[i5];
            if (a2 * 2 < (1 << i5)) {
                break;
            }
            if (i3 >= (1 << (i5 - 1))) {
                i4 = 1 << i5;
            }
        }
        LuaValue[] luaValueArr2 = this.b;
        ad[] adVarArr2 = this.c;
        int i6 = (i <= 0 || i > i4) ? 0 : -1;
        if (i4 != luaValueArr2.length) {
            luaValueArr = new LuaValue[i4];
            if (i4 > luaValueArr2.length) {
                int e3 = e(i4) + 1;
                for (int e4 = e(luaValueArr2.length + 1); e4 < e3; e4++) {
                    i6 += iArr[e4];
                }
            } else if (luaValueArr2.length > i4) {
                int e5 = e(luaValueArr2.length) + 1;
                for (int e6 = e(i4 + 1); e6 < e5; e6++) {
                    i6 -= iArr[e6];
                }
            }
            System.arraycopy(luaValueArr2, 0, luaValueArr, 0, Math.min(luaValueArr2.length, i4));
        } else {
            luaValueArr = this.b;
        }
        int i7 = ((i < 0 || i > i4) ? 1 : 0) + (this.o - i6);
        if (i7 > 0) {
            int e7 = i7 < 2 ? 2 : 1 << e(i7);
            adVarArr = new ad[e7];
            i2 = e7 - 1;
        } else {
            i2 = 0;
            adVarArr = d;
        }
        for (ad adVar : adVarArr2) {
            for (; adVar != null; adVar = adVar.u_()) {
                int b = adVar.b(i4);
                if (b > 0) {
                    ae a3 = adVar.a();
                    if (a3 != null) {
                        luaValueArr[b - 1] = a3.t_();
                    }
                } else if (!(adVar instanceof t)) {
                    int a4 = adVar.a(i2);
                    adVarArr[a4] = adVar.b(adVarArr[a4]);
                }
            }
        }
        while (i4 < luaValueArr2.length) {
            int i8 = i4 + 1;
            LuaValue luaValue = luaValueArr2[i4];
            if (luaValue != null) {
                int c = c(LuaLong.c(i8), i2);
                if (this.p != null) {
                    f2 = this.p.e(d(i8), luaValue);
                    if (f2 == null) {
                        i4 = i8;
                    }
                } else {
                    f2 = f(d(i8), luaValue);
                }
                if (adVarArr[c] != null) {
                    f2 = adVarArr[c].a(f2);
                }
                adVarArr[c] = f2;
            }
            i4 = i8;
        }
        this.c = adVarArr;
        this.b = luaValueArr;
        this.o -= i6;
    }

    @Override // luaj.ah
    public ad e(LuaValue luaValue, LuaValue luaValue2) {
        return f(luaValue, luaValue2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean C(LuaValue luaValue) {
        switch (luaValue.e_()) {
            case 1:
            case 3:
                return false;
            case 2:
            default:
                return true;
            case 4:
                return luaValue.M() > 32;
        }
    }

    public void D(LuaValue luaValue) {
        int L = L();
        if (L >= 16777215) {
            throw new o("array too big: " + L + " >= 16777215");
        }
        if (this.p != null && this.p.V()) {
            ag();
        }
        if (L > 1) {
            if (luaValue.F()) {
                luaValue = null;
            }
            f(L, luaValue);
        }
    }

    private void f(int i, LuaValue luaValue) {
        g(i, luaValue);
        while (i > 1) {
            LuaValue c_ = c_(i);
            a(i, c_(1));
            a(1, c_);
            i--;
            a(1, i, luaValue);
        }
    }

    private void g(int i, LuaValue luaValue) {
        for (int i2 = i / 2; i2 > 0; i2--) {
            a(i2, i, luaValue);
        }
    }

    private void a(int i, int i2, LuaValue luaValue) {
        while (i * 2 <= i2) {
            int i3 = i * 2;
            if (i3 < i2 && b(i3, i3 + 1, luaValue)) {
                i3++;
            }
            if (b(i, i3, luaValue)) {
                LuaValue c_ = c_(i);
                a(i, c_(i3));
                a(i3, c_);
                i = i3;
            } else {
                return;
            }
        }
    }

    private boolean b(int i, int i2, LuaValue luaValue) {
        LuaValue c_ = c_(i);
        LuaValue c_2 = c_(i2);
        if (c_ == null || c_2 == null) {
            return false;
        }
        if (luaValue != null) {
            return luaValue.a(c_, c_2).i_();
        }
        return c_.p(c_2);
    }

    public LuaValue[] T() {
        ArrayList arrayList = new ArrayList();
        z S = S();
        while (S.a()) {
            arrayList.add(S.c());
        }
        LuaValue[] luaValueArr = new LuaValue[arrayList.size()];
        arrayList.toArray(luaValueArr);
        return luaValueArr;
    }

    @Override // luaj.LuaValue
    public boolean b(LuaValue luaValue) {
        if (this == luaValue) {
            return true;
        }
        if (luaValue.N()) {
            return g(this, luaValue);
        }
        return false;
    }

    public ap a(long j, long j2) {
        if (j2 < j) {
            return x;
        }
        long j3 = j2 - j;
        if (j3 < 0) {
            throw new o("too many results to unpack: greater 9223372036854775807");
        }
        if (j3 >= 16777215) {
            throw new o("too many results to unpack: " + j3 + " (max is 16777215)");
        }
        int i = (int) (j3 + 1);
        boolean z = ((long) ((int) j)) == j && ((long) ((int) j2)) == j2;
        if (i <= 0) {
            return x;
        }
        if (i == 1) {
            return z ? c_((int) j) : w(LuaLong.b(j));
        } else if (i == 2) {
            return b(z ? c_((int) j) : w(LuaLong.b(j)), (ap) (z ? c_((int) (j + 1)) : w(LuaLong.b(j + 1))));
        } else {
            try {
                LuaValue[] luaValueArr = new LuaValue[i];
                while (true) {
                    i--;
                    if (i >= 0) {
                        luaValueArr[i] = z ? c_((int) (i + j)) : w(LuaLong.b(i + j));
                    } else {
                        return c(luaValueArr);
                    }
                }
            } catch (OutOfMemoryError e2) {
                la.c("OOM on unpack: " + i, e2);
                throw new o("too many results to unpack [out of memory]: " + i);
            }
        }
    }

    public void a(int i, LuaString luaString, boolean z) {
        ad[] adVarArr = this.c;
        ad sVar = new s(luaString, z);
        if (adVarArr[i] != null) {
            sVar = adVarArr[i].a(sVar);
        }
        adVarArr[i] = sVar;
        this.o++;
    }

    public void a(int i, LuaString luaString, int i2) {
        ad[] adVarArr = this.c;
        ad yVar = new y(luaString, i2);
        if (adVarArr[i] != null) {
            yVar = adVarArr[i].a(yVar);
        }
        adVarArr[i] = yVar;
        this.o++;
    }

    public void a(int i, LuaString luaString, long j) {
        ad[] adVarArr = this.c;
        int i2 = (int) j;
        ad yVar = ((long) i2) == j ? new y(luaString, i2) : new ab(luaString, j);
        if (adVarArr[i] != null) {
            yVar = adVarArr[i].a(yVar);
        }
        adVarArr[i] = yVar;
        this.o++;
    }

    public void a(int i, LuaString luaString, float f2) {
        ad[] adVarArr = this.c;
        ad wVar = new w(luaString, f2);
        if (adVarArr[i] != null) {
            wVar = adVarArr[i].a(wVar);
        }
        adVarArr[i] = wVar;
        this.o++;
    }

    public void a(int i, LuaString luaString, double d2) {
        ad[] adVarArr = this.c;
        float f2 = (float) d2;
        ad wVar = ((double) f2) == d2 ? new w(luaString, f2) : new u(luaString, d2);
        if (adVarArr[i] != null) {
            wVar = adVarArr[i].a(wVar);
        }
        adVarArr[i] = wVar;
        this.o++;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static v f(LuaValue luaValue, LuaValue luaValue2) {
        if (luaValue.q_()) {
            return new x(luaValue.p(), luaValue2);
        }
        if (luaValue2 instanceof LuaBoolean) {
            return new s(luaValue, luaValue2.i_());
        }
        if (luaValue2 instanceof LuaLong) {
            long q = luaValue2.q();
            int i = (int) q;
            return ((long) i) == q ? new y(luaValue, i) : new ab(luaValue, q);
        } else if (luaValue2 instanceof LuaDouble) {
            double o = luaValue2.o();
            float f2 = (float) o;
            return ((double) f2) == o ? new w(luaValue, f2) : new u(luaValue, o);
        } else {
            return new ac(luaValue, luaValue2);
        }
    }

    @Override // luaj.ah
    public boolean U() {
        return false;
    }

    @Override // luaj.ah
    public boolean V() {
        return false;
    }

    @Override // luaj.ah
    public LuaValue W() {
        return this;
    }

    @Override // luaj.ah
    public LuaValue E(LuaValue luaValue) {
        return luaValue;
    }

    @Override // luaj.ah
    public LuaValue a(LuaValue[] luaValueArr, int i) {
        return luaValueArr[i];
    }

    @Override // luaj.LuaValue, luaj.ap
    public String d_() {
        try {
            return a(new StringBuilder(), (Map) null);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    public String a(Appendable appendable, Map map) {
        if (e == null) {
            e = new HashSet();
            f = 0;
            String obj = a("", appendable, map).toString();
            f = 0;
            e = null;
            return obj;
        }
        return a("", appendable, map).toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:160:0x031a, code lost:
        r9 = r4;
        r10 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00bf, code lost:
        if (r4 == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c5, code lost:
        if (r3.q_() == false) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c7, code lost:
        r2 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00cd, code lost:
        if (r3.p() == r10) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00cf, code lost:
        r10 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00d0, code lost:
        r9 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.Appendable a(java.lang.String r20, java.lang.Appendable r21, java.util.Map r22) {
        /*
            Method dump skipped, instructions count: 844
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.LuaTable.a(java.lang.String, java.lang.Appendable, java.util.Map):java.lang.Appendable");
    }

    public int X() {
        return this.o;
    }
}
