package luaj.a;

import java.util.Hashtable;
import luaj.LuaString;
import luaj.LuaValue;
import luaj.al;
import luaj.ao;

/* compiled from: src */
/* loaded from: classes.dex */
public class c extends a {
    al b;
    Hashtable c;
    c d;
    h e;
    d f;
    int g;
    int h;
    f i;
    int j;
    int k;
    int l;
    short m;
    short n;
    short o;
    short p;

    public String toString() {
        return "FuncState [pc=" + this.g + ", lasttarget=" + this.h + ", nk=" + this.j + ", np=" + this.k + ", firstlocal=" + this.l + ", nlocvars=" + ((int) this.m) + ", nactvar=" + ((int) this.n) + ", nups=" + ((int) this.o) + ", freereg=" + ((int) this.p) + ']';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e a(r rVar) {
        return new e(this.b.r, rVar.b.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(r rVar) {
        return this.b.r[rVar.b.e];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(int i, int i2, int i3) {
        return d(i, i2, 131071 + i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(r rVar) {
        a(rVar, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(m[] mVarArr, int i, LuaString luaString) {
        for (int i2 = this.f.b; i2 < i; i2++) {
            if (luaString.b((LuaValue) mVarArr[i2].a)) {
                this.e.f(this.e.i.b("label '" + luaString + "' already defined on line " + mVarArr[i2].c));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, int i2, String str) {
        if (i > i2) {
            a(i2, str);
        }
    }

    void a(int i, String str) {
        String b;
        if (this.b.x == 0) {
            b = this.e.i.b("main function has more than " + i + ' ' + str);
        } else {
            b = this.e.i.b("function at line " + this.b.x + " has more than " + i + ' ' + str);
        }
        this.e.a(b, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public luaj.l p(int i) {
        short s = this.e.m.a[this.l + i].a;
        a(s < this.m);
        return this.b.u[s];
    }

    void q(int i) {
        this.e.m.b -= this.n - i;
        while (this.n > i) {
            short s = (short) (this.n - 1);
            this.n = s;
            p(s).c = this.g;
        }
    }

    int a(LuaString luaString) {
        ao[] aoVarArr = this.b.v;
        for (int i = 0; i < this.o; i++) {
            if (aoVarArr[i].a.b((LuaValue) luaString)) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(LuaString luaString, r rVar) {
        a(this.o + 1, 255, "upvalues");
        if (this.b.v == null || this.o + 1 > this.b.v.length) {
            this.b.v = a(this.b.v, this.o > 0 ? this.o * 2 : 1);
        }
        this.b.v[this.o] = new ao(luaString, rVar.a == 7, rVar.b.e);
        short s = this.o;
        this.o = (short) (s + 1);
        return s;
    }

    int b(LuaString luaString) {
        for (int i = this.n - 1; i >= 0; i--) {
            if (luaString.b((LuaValue) p(i).a)) {
                return i;
            }
        }
        return -1;
    }

    void r(int i) {
        d dVar = this.f;
        while (dVar.d > i) {
            dVar = dVar.a;
        }
        dVar.e = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(c cVar, LuaString luaString, r rVar, int i) {
        if (cVar == null) {
            return 0;
        }
        int b = cVar.b(luaString);
        if (b >= 0) {
            rVar.a(7, b);
            if (i == 0) {
                cVar.r(b);
                return 7;
            }
            return 7;
        }
        int a = cVar.a(luaString);
        if (a < 0) {
            if (a(cVar.d, luaString, rVar, 0) == 0) {
                return 0;
            }
            a = cVar.a(luaString, rVar);
        }
        rVar.a(8, a);
        return 8;
    }

    void a(d dVar) {
        int i = dVar.c;
        m[] mVarArr = this.e.m.c;
        while (i < this.e.m.d) {
            m mVar = mVarArr[i];
            if (mVar.d > dVar.d) {
                if (dVar.e) {
                    g(mVar.b, dVar.d);
                }
                mVar.d = dVar.d;
            }
            if (!this.e.E(i)) {
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(d dVar, boolean z) {
        dVar.f = z;
        dVar.d = this.n;
        dVar.b = (short) this.e.m.f;
        dVar.c = (short) this.e.m.d;
        dVar.e = false;
        dVar.a = this.f;
        this.f = dVar;
        a(this.p == this.n);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        d dVar = this.f;
        if (dVar.a != null && dVar.e) {
            int b = b();
            g(b, dVar.d);
            x(b);
        }
        if (dVar.f) {
            this.e.n();
        }
        this.f = dVar.a;
        q(dVar.d);
        a(dVar.d == this.n);
        this.p = this.n;
        this.e.m.f = dVar.b;
        if (dVar.a != null) {
            a(dVar);
        } else if (dVar.c < this.e.m.d) {
            this.e.a(this.e.m.c[dVar.c], this, dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(j jVar) {
        if (jVar.a.a != 0) {
            h(jVar.a);
            jVar.a.a = 0;
            if (jVar.e == 50) {
                e(jVar.b.b.e, jVar.d, jVar.e);
                jVar.e = 0;
            }
        }
    }

    boolean s(int i) {
        return i == 12 || i == 13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(j jVar) {
        if (jVar.e != 0) {
            if (s(jVar.a.a)) {
                c(jVar.a);
                e(jVar.b.b.e, jVar.d, -1);
                jVar.d--;
                return;
            }
            if (jVar.a.a != 0) {
                h(jVar.a);
            }
            e(jVar.b.b.e, jVar.d, jVar.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i, int i2) {
        int i3 = (i + i2) - 1;
        if (this.g > this.h && this.g > 0) {
            int i4 = this.b.r[this.g - 1];
            if (a(i4) == 4) {
                int b = b(i4);
                int d = d(i4) + b;
                if ((b <= i && i <= d + 1) || (i <= b && b <= i3 + 1)) {
                    if (b < i) {
                        i = b;
                    }
                    if (d <= i3) {
                        d = i3;
                    }
                    e eVar = new e(this.b.r, this.g - 1);
                    b(eVar, i);
                    c(eVar, d - i);
                    return;
                }
            }
        }
        d(4, i, i2 - 1, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        int i = this.i.a;
        this.i.a = -1;
        f fVar = new f(b(23, 0, -1));
        a(fVar, i);
        return fVar.a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(int i, int i2) {
        d(31, i, i2 + 1, 0);
    }

    int b(int i, int i2, int i3, int i4) {
        d(i, i2, i3, i4);
        return b();
    }

    void d(int i, int i2) {
        e eVar = new e(this.b.r, i);
        int i3 = i2 - (i + 1);
        a(i2 != -1);
        if (Math.abs(i3) > 131071) {
            this.e.c("control structure too long");
        }
        f(eVar, i3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c() {
        this.h = this.g;
        return this.g;
    }

    int t(int i) {
        int g = g(this.b.r[i]);
        if (g == -1) {
            return -1;
        }
        return i + 1 + g;
    }

    e u(int i) {
        e eVar = new e(this.b.r, i);
        return (i < 1 || !o(a(eVar.a[eVar.b + (-1)]))) ? eVar : new e(eVar.a, eVar.b - 1);
    }

    boolean v(int i) {
        while (i != -1) {
            if (a(u(i).a()) == 28) {
                i = t(i);
            } else {
                return true;
            }
        }
        return false;
    }

    boolean e(int i, int i2) {
        e u = u(i);
        if (a(u.a()) != 28) {
            return false;
        }
        if (i2 != 255 && i2 != d(u.a())) {
            b(u, i2);
        } else {
            u.a(a(27, d(u.a()), 0, luaj.m.e(u.a())));
        }
        return true;
    }

    void w(int i) {
        while (i != -1) {
            e(i, 255);
            i = t(i);
        }
    }

    void c(int i, int i2, int i3, int i4) {
        while (i != -1) {
            int t = t(i);
            if (e(i, i3)) {
                d(i, i2);
            } else {
                d(i, i4);
            }
            i = t;
        }
    }

    void d() {
        c(this.i.a, this.g, 255, this.g);
        this.i.a = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(int i, int i2) {
        if (i2 == this.g) {
            x(i);
            return;
        }
        a(i2 < this.g);
        c(i, i2, 255, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void g(int i, int i2) {
        int i3 = i2 + 1;
        while (i != -1) {
            int t = t(i);
            a(a(this.b.r[i]) == 23 && (b(this.b.r[i]) == 0 || b(this.b.r[i]) >= i3));
            a(this.b.r, i, i3);
            i = t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void x(int i) {
        c();
        a(this.i, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f fVar, int i) {
        if (i != -1) {
            if (fVar.a == -1) {
                fVar.a = i;
                return;
            }
            int i2 = fVar.a;
            while (true) {
                int t = t(i2);
                if (t == -1) {
                    d(i2, i);
                    return;
                }
                i2 = t;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(int i) {
        int i2 = this.p + i;
        if (i2 > this.b.B) {
            if (i2 >= 250) {
                this.e.c("function or expression needs too many registers");
            }
            this.b.B = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void z(int i) {
        y(i);
        this.p = (short) (this.p + i);
    }

    void A(int i) {
        if (!h(i) && i >= this.n) {
            this.p = (short) (this.p - 1);
            a(i == this.p);
        }
    }

    void d(r rVar) {
        if (rVar.a == 6) {
            A(rVar.b.e);
        }
    }

    int a(LuaValue luaValue) {
        Hashtable hashtable;
        Hashtable hashtable2 = this.c;
        if (hashtable2 == null) {
            hashtable = new Hashtable();
            this.c = hashtable;
        } else {
            Integer num = (Integer) hashtable2.get(luaValue);
            if (num != null) {
                return num.intValue();
            }
            hashtable = hashtable2;
        }
        int i = this.j;
        hashtable.put(luaValue, Integer.valueOf(i));
        al alVar = this.b;
        if (alVar.q == null || this.j + 1 >= alVar.q.length) {
            alVar.q = a(alVar.q, (this.j * 2) + 1);
        }
        LuaValue[] luaValueArr = alVar.q;
        int i2 = this.j;
        this.j = i2 + 1;
        luaValueArr[i2] = luaValue;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(LuaString luaString) {
        return a((LuaValue) luaString);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(LuaValue luaValue) {
        return a(luaValue);
    }

    int b(boolean z) {
        return a(z ? LuaValue.v : LuaValue.w);
    }

    int e() {
        return a(LuaValue.u);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(r rVar, int i) {
        if (rVar.a == 12) {
            d(a(rVar), i + 1);
        } else if (rVar.a == 13) {
            c(a(rVar), i + 1);
            b(a(rVar), this.p);
            z(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(r rVar) {
        if (rVar.a == 12) {
            rVar.a = 6;
            rVar.b.e = b(b(rVar));
        } else if (rVar.a == 13) {
            c(a(rVar), 2);
            rVar.a = 11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(r rVar) {
        int i = 7;
        switch (rVar.a) {
            case 7:
                rVar.a = 6;
                return;
            case 8:
                rVar.b.e = d(5, 0, rVar.b.e, 0);
                rVar.a = 11;
                return;
            case 9:
                A(rVar.b.a);
                if (rVar.b.c == 7) {
                    A(rVar.b.b);
                } else {
                    i = 6;
                }
                rVar.b.e = d(i, 0, rVar.b.b, rVar.b.a);
                rVar.a = 11;
                return;
            case 10:
            case 11:
            default:
                return;
            case 12:
            case 13:
                e(rVar);
                return;
        }
    }

    int c(int i, int i2, int i3) {
        c();
        return d(3, i, i2, i3);
    }

    void b(r rVar, int i) {
        boolean z = false;
        f(rVar);
        switch (rVar.a) {
            case 1:
                b(i, 1);
                break;
            case 2:
            case 3:
                d(3, i, rVar.a != 2 ? 0 : 1, 0);
                break;
            case 4:
                i(i, rVar.b.e);
                break;
            case 5:
                i(i, b(rVar.b.a()));
                break;
            case 6:
                if (i != rVar.b.e) {
                    d(0, i, rVar.b.e, 0);
                    break;
                }
                break;
            case 7:
            case 8:
            case 9:
            case 10:
            default:
                if (rVar.a == 0 || rVar.a == 10) {
                    z = true;
                }
                a(z);
                return;
            case 11:
                b(a(rVar), i);
                break;
        }
        rVar.b.e = i;
        rVar.a = 6;
    }

    void g(r rVar) {
        if (rVar.a != 6) {
            z(1);
            b(rVar, this.p - 1);
        }
    }

    void c(r rVar, int i) {
        int c;
        int i2;
        b(rVar, i);
        if (rVar.a == 10) {
            a(rVar.c, rVar.b.e);
        }
        if (rVar.a()) {
            if (v(rVar.c.a) || v(rVar.d.a)) {
                int b = rVar.a == 10 ? -1 : b();
                c = c(i, 0, 1);
                int c2 = c(i, 1, 0);
                x(b);
                i2 = c2;
            } else {
                i2 = -1;
                c = -1;
            }
            int c3 = c();
            c(rVar.d.a, c3, i, c);
            c(rVar.c.a, c3, i, i2);
        }
        f fVar = rVar.d;
        rVar.c.a = -1;
        fVar.a = -1;
        rVar.b.e = i;
        rVar.a = 6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h(r rVar) {
        f(rVar);
        d(rVar);
        z(1);
        c(rVar, this.p - 1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i(r rVar) {
        f(rVar);
        if (rVar.a == 6) {
            if (!rVar.a()) {
                return rVar.b.e;
            }
            if (rVar.b.e >= this.n) {
                c(rVar, rVar.b.e);
                return rVar.b.e;
            }
        }
        h(rVar);
        return rVar.b.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(r rVar) {
        if (rVar.a != 8 || rVar.a()) {
            i(rVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(r rVar) {
        if (rVar.a()) {
            i(rVar);
        } else {
            f(rVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int l(luaj.a.r r6) {
        /*
            r5 = this;
            r2 = 255(0xff, float:3.57E-43)
            r4 = 4
            r0 = 1
            r5.k(r6)
            int r1 = r6.a
            switch(r1) {
                case 1: goto L11;
                case 2: goto L11;
                case 3: goto L11;
                case 4: goto L48;
                case 5: goto L38;
                default: goto Lc;
            }
        Lc:
            int r0 = r5.i(r6)
        L10:
            return r0
        L11:
            int r1 = r5.j
            if (r1 > r2) goto Lc
            luaj.a.s r1 = r6.b
            int r2 = r6.a
            if (r2 != r0) goto L2c
            int r0 = r5.e()
        L1f:
            r1.e = r0
            r6.a = r4
            luaj.a.s r0 = r6.b
            int r0 = r0.e
            int r0 = j(r0)
            goto L10
        L2c:
            int r2 = r6.a
            r3 = 2
            if (r2 != r3) goto L36
        L31:
            int r0 = r5.b(r0)
            goto L1f
        L36:
            r0 = 0
            goto L31
        L38:
            luaj.a.s r0 = r6.b
            luaj.a.s r1 = r6.b
            luaj.LuaValue r1 = r1.a()
            int r1 = r5.b(r1)
            r0.e = r1
            r6.a = r4
        L48:
            luaj.a.s r0 = r6.b
            int r0 = r0.e
            if (r0 > r2) goto Lc
            luaj.a.s r0 = r6.b
            int r0 = r0.e
            int r0 = j(r0)
            goto L10
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.a.c.l(luaj.a.r):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(r rVar, r rVar2) {
        switch (rVar.a) {
            case 7:
                d(rVar2);
                c(rVar2, rVar.b.e);
                return;
            case 8:
                d(9, i(rVar2), rVar.b.e, 0);
                break;
            case 9:
                d(rVar.b.c == 7 ? 10 : 8, rVar.b.b, rVar.b.a, l(rVar2));
                break;
            default:
                a(false);
                break;
        }
        d(rVar2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(r rVar, r rVar2) {
        i(rVar);
        d(rVar);
        short s = this.p;
        z(2);
        d(12, s, rVar.b.e, l(rVar2));
        d(rVar2);
        rVar.b.e = s;
        rVar.a = 6;
    }

    void m(r rVar) {
        e u = u(rVar.b.e);
        a((!o(a(u.a())) || a(u.a()) == 28 || luaj.m.a(u.a()) == 27) ? false : true);
        b(u, b(u.a()) == 0 ? 1 : 0);
    }

    int d(r rVar, int i) {
        if (rVar.a == 11) {
            int b = b(rVar);
            if (a(b) == 20) {
                this.g--;
                return b(27, d(b), 0, i != 0 ? 0 : 1);
            }
        }
        g(rVar);
        d(rVar);
        return b(28, 255, rVar.b.e, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(r rVar) {
        int i;
        f(rVar);
        switch (rVar.a) {
            case 2:
            case 4:
            case 5:
                i = -1;
                break;
            case 3:
            case 6:
            case 7:
            case 8:
            case 9:
            default:
                i = d(rVar, 0);
                break;
            case 10:
                m(rVar);
                i = rVar.b.e;
                break;
        }
        a(rVar.d, i);
        x(rVar.c.a);
        rVar.c.a = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void o(r rVar) {
        int i;
        f(rVar);
        switch (rVar.a) {
            case 1:
            case 3:
                i = -1;
                break;
            case 10:
                i = rVar.b.e;
                break;
            default:
                i = d(rVar, 1);
                break;
        }
        a(rVar.c, i);
        x(rVar.d.a);
        rVar.d.a = -1;
    }

    void p(r rVar) {
        f(rVar);
        switch (rVar.a) {
            case 1:
            case 3:
                rVar.a = 2;
                break;
            case 2:
            case 4:
            case 5:
                rVar.a = 3;
                break;
            case 6:
            case 11:
                g(rVar);
                d(rVar);
                rVar.b.e = d(20, 0, rVar.b.e, 0);
                rVar.a = 11;
                break;
            case 7:
            case 8:
            case 9:
            default:
                a(false);
                break;
            case 10:
                m(rVar);
                break;
        }
        int i = rVar.d.a;
        rVar.d.a = rVar.c.a;
        rVar.c.a = i;
        w(rVar.d.a);
        w(rVar.c.a);
    }

    static boolean B(int i) {
        return i == 6 || i == 7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(r rVar, r rVar2) {
        rVar.b.b = (short) rVar.b.e;
        rVar.b.a = (short) l(rVar2);
        t.a(rVar.a == 8 || B(rVar.a));
        rVar.b.c = (short) (rVar.a == 8 ? 8 : 7);
        rVar.a = 9;
    }

    boolean a(int i, r rVar, r rVar2) {
        LuaValue s;
        if (rVar.b() && rVar2.b()) {
            if ((i == 16 || i == 40 || i == 17) && rVar2.b.a().b(LuaValue.y)) {
                return false;
            }
            LuaValue a = rVar.b.a();
            LuaValue a2 = rVar2.b.a();
            switch (i) {
                case 13:
                    s = a.d(a2);
                    break;
                case 14:
                    s = a.e(a2);
                    break;
                case 15:
                    s = a.f(a2);
                    break;
                case 16:
                    s = a.h(a2);
                    break;
                case 17:
                    s = a.j(a2);
                    break;
                case 18:
                    s = a.g(a2);
                    break;
                case 19:
                    s = a.r();
                    break;
                case 20:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                default:
                    a(false);
                    s = null;
                    break;
                case 21:
                    return false;
                case 40:
                    s = a.i(a2);
                    break;
                case 41:
                    if (a.n()) {
                        s = a.s();
                        break;
                    } else {
                        return false;
                    }
                case 42:
                    if (a.n() && a2.n()) {
                        s = a.k(a2);
                        break;
                    } else {
                        return false;
                    }
                    break;
                case 43:
                    if (a.n() && a2.n()) {
                        s = a.l(a2);
                        break;
                    } else {
                        return false;
                    }
                    break;
                case 44:
                    if (a.n() && a2.n()) {
                        s = a.m(a2);
                        break;
                    } else {
                        return false;
                    }
                    break;
                case 45:
                    if (a.n() && a2.n()) {
                        s = a.n(a2);
                        break;
                    } else {
                        return false;
                    }
                case 46:
                    if (a.n() && a2.n()) {
                        s = a.o(a2);
                        break;
                    } else {
                        return false;
                    }
            }
            if (s == null || Double.isNaN(s.o())) {
                return false;
            }
            rVar.b.a(s);
            return true;
        }
        return false;
    }

    void a(int i, r rVar, r rVar2, int i2) {
        if (!a(i, rVar, rVar2)) {
            int l = (i == 19 || i == 21 || i == 41) ? 0 : l(rVar2);
            int l2 = l(rVar);
            if (l2 > l) {
                d(rVar);
                d(rVar2);
            } else {
                d(rVar2);
                d(rVar);
            }
            rVar.b.e = d(i, 0, l2, l);
            rVar.a = 11;
            C(i2);
        }
    }

    void a(int i, int i2, r rVar, r rVar2) {
        int i3;
        int i4;
        int l = l(rVar);
        int l2 = l(rVar2);
        d(rVar2);
        d(rVar);
        if (i2 != 0 || i == 24) {
            i3 = l2;
            i4 = l;
        } else {
            i2 = 1;
            i3 = l;
            i4 = l2;
        }
        rVar.b.e = b(i, i2, i4, i3);
        rVar.a = 10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, r rVar, int i2) {
        r rVar2 = new r();
        rVar2.a(5, 0);
        switch (i) {
            case 0:
                if (rVar.b()) {
                    rVar.b.a(rVar.b.a().r());
                    return;
                }
                i(rVar);
                a(19, rVar, rVar2, i2);
                return;
            case 1:
                p(rVar);
                return;
            case 2:
                i(rVar);
                a(21, rVar, rVar2, i2);
                return;
            case 3:
            default:
                a(false);
                return;
            case 4:
                if (rVar.b()) {
                    rVar.b.a(rVar.b.a().s());
                    return;
                }
                i(rVar);
                a(41, rVar, rVar2, i2);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, r rVar) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                if (!rVar.b()) {
                    l(rVar);
                    return;
                }
                return;
            case 6:
                h(rVar);
                return;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            default:
                l(rVar);
                return;
            case 13:
                n(rVar);
                return;
            case 14:
                o(rVar);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i, r rVar, r rVar2, int i2) {
        switch (i) {
            case 0:
                a(13, rVar, rVar2, i2);
                return;
            case 1:
                a(14, rVar, rVar2, i2);
                return;
            case 2:
                a(15, rVar, rVar2, i2);
                return;
            case 3:
                a(16, rVar, rVar2, i2);
                return;
            case 4:
                a(17, rVar, rVar2, i2);
                return;
            case 5:
                a(18, rVar, rVar2, i2);
                return;
            case 6:
                k(rVar2);
                if (rVar2.a == 11 && a(b(rVar2)) == 22) {
                    a(rVar.b.e == d(b(rVar2)) + (-1));
                    d(rVar);
                    c(a(rVar2), rVar.b.e);
                    rVar.a = 11;
                    rVar.b.e = rVar2.b.e;
                    return;
                }
                h(rVar2);
                a(22, rVar, rVar2, i2);
                return;
            case 7:
                a(24, 0, rVar, rVar2);
                return;
            case 8:
                a(24, 1, rVar, rVar2);
                return;
            case 9:
                a(25, 1, rVar, rVar2);
                return;
            case 10:
                a(26, 1, rVar, rVar2);
                return;
            case 11:
                a(25, 0, rVar, rVar2);
                return;
            case 12:
                a(26, 0, rVar, rVar2);
                return;
            case 13:
                a(rVar.c.a == -1);
                f(rVar2);
                a(rVar2.d, rVar.d.a);
                rVar.a(rVar2);
                return;
            case 14:
                a(rVar.d.a == -1);
                f(rVar2);
                a(rVar2.c, rVar.c.a);
                rVar.a(rVar2);
                return;
            case 15:
                a(40, rVar, rVar2, i2);
                return;
            case 16:
                a(42, rVar, rVar2, i2);
                return;
            case 17:
                a(43, rVar, rVar2, i2);
                return;
            case 18:
                a(44, rVar, rVar2, i2);
                return;
            case 19:
                a(45, rVar, rVar2, i2);
                return;
            case 20:
                a(46, rVar, rVar2, i2);
                return;
            default:
                a(false);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void C(int i) {
        this.b.t[this.g - 1] = i;
    }

    int h(int i, int i2) {
        al alVar = this.b;
        d();
        if (alVar.r == null || this.g + 1 > alVar.r.length) {
            alVar.r = t.a(alVar.r, (this.g * 2) + 1);
        }
        alVar.r[this.g] = i;
        if (alVar.t == null || this.g + 1 > alVar.t.length) {
            alVar.t = t.a(alVar.t, (this.g * 2) + 1);
        }
        alVar.t[this.g] = i2;
        int i3 = this.g;
        this.g = i3 + 1;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d(int i, int i2, int i3, int i4) {
        boolean z = false;
        a(k(i) == 0);
        a(l(i) != 0 || i3 == 0);
        if (m(i) != 0 || i4 == 0) {
            z = true;
        }
        a(z);
        return h(a(i, i2, i3, i4), this.e.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d(int i, int i2, int i3) {
        boolean z = true;
        a(k(i) == 1 || k(i) == 2);
        a(m(i) == 0);
        if (i3 < 0 || i3 > 262143) {
            z = false;
        }
        a(z);
        return h(a(i, i2, i3), this.e.e);
    }

    int D(int i) {
        a(i <= 67108863);
        return h(a(39, i), this.e.e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int i(int i, int i2) {
        if (i2 <= 262143) {
            return d(1, i, i2);
        }
        int d = d(2, i, 0);
        D(i2);
        return d;
    }

    void e(int i, int i2, int i3) {
        int i4 = ((i2 - 1) / 50) + 1;
        if (i3 == -1) {
            i3 = 0;
        }
        if (i4 <= 511) {
            d(36, i, i3, i4);
        } else {
            d(36, i, i3, 0);
            h(i4, this.e.e);
        }
        this.p = (short) (i + 1);
    }
}
