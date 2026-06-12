package luaj.a;

import java.io.IOException;
import java.io.InputStream;
import java.util.Hashtable;
import luaj.LuaDouble;
import luaj.LuaLong;
import luaj.LuaString;
import luaj.LuaValue;
import luaj.al;

/* compiled from: src */
/* loaded from: classes.dex */
public class h extends a {
    static final String[] q;
    static final Hashtable r;
    static n[] s;
    int c;
    int d;
    int e;
    c h;
    u i;
    InputStream j;
    int l;
    LuaString n;
    LuaString o;
    byte p;
    protected static final String[] b = {"(for control)", "(for generator)", "(for index)", "(for limit)", "(for state)", "(for step)", "break"};
    private static final Hashtable t = new Hashtable();
    final p f = new p(null);
    final p g = new p(null);
    k m = new k();
    private i u = new i();
    private final int[] v = new int[24];
    char[] k = new char[32];

    static {
        for (int i = 0; i < b.length; i++) {
            t.put(b[i], Boolean.TRUE);
        }
        q = new String[]{"and", "break", "do", "else", "elseif", "end", "false", "for", "function", "goto", "if", "in", "local", "nil", "not", "or", "repeat", "return", "then", "true", "until", "while", "//", "..", "...", "==", ">=", "<=", "~=", "<<", ">>", "::", "<eof>", "<number>", "<integer>", "<name>", "<string>"};
        r = new Hashtable();
        for (int i2 = 0; i2 < 22; i2++) {
            r.put(LuaValue.m(q[i2]), Integer.valueOf(i2 + 257));
        }
        s = new n[]{new n(60, 60), new n(60, 60), new n(70, 70), new n(70, 70), new n(70, 70), new n(100, 90), new n(50, 40), new n(30, 30), new n(30, 30), new n(30, 30), new n(30, 30), new n(30, 30), new n(30, 30), new n(20, 20), new n(10, 10), new n(70, 70), new n(36, 36), new n(32, 32), new n(34, 34), new n(38, 38), new n(38, 38)};
    }

    private static final String h(String str) {
        return String.valueOf('\'') + str + '\'';
    }

    private static final String a(Object obj) {
        return h(String.valueOf(obj));
    }

    public static boolean b(String str) {
        return t.containsKey(str);
    }

    public static boolean p(int i) {
        return (i >= 48 && i <= 57) || (i >= 97 && i <= 122) || ((i >= 65 && i <= 90) || i == 95);
    }

    public static boolean q(int i) {
        return (i >= 97 && i <= 122) || (i >= 65 && i <= 90);
    }

    public static boolean r(int i) {
        return i >= 48 && i <= 57;
    }

    public static boolean s(int i) {
        return (i >= 48 && i <= 57) || (i >= 97 && i <= 102) || (i >= 65 && i <= 70);
    }

    public static boolean t(int i) {
        return i >= 0 && i <= 32;
    }

    public h(u uVar, InputStream inputStream) {
        this.j = inputStream;
        this.i = uVar;
    }

    void a() {
        try {
            this.c = this.j.read();
        } catch (IOException e) {
            e.printStackTrace();
            this.c = -1;
        }
    }

    boolean b() {
        return this.c == 10 || this.c == 13;
    }

    void c() {
        u(this.c);
        a();
    }

    void u(int i) {
        char[] cArr = this.k;
        int i2 = this.l;
        if (cArr == null || i2 + 1 > cArr.length) {
            cArr = a(cArr, (i2 * 2) + 1);
            this.k = cArr;
        }
        cArr[i2] = (char) i;
        this.l = i2 + 1;
    }

    String v(int i) {
        if (i < 257) {
            if (O(i)) {
                return this.i.b("'<\\" + i + ">' (symbol with decimal code " + i + " or 0x" + Integer.toHexString(i) + ")");
            }
            return this.i.b(String.valueOf((char) i));
        }
        String str = q[i - 257];
        switch (i) {
            case 289:
            case 290:
            case 291:
            case 292:
            case 293:
                return str;
            default:
                return String.valueOf('\'') + str + '\'';
        }
    }

    private static boolean O(int i) {
        return i < 32 || i == 255;
    }

    String w(int i) {
        switch (i) {
            case 290:
            case 291:
            case 292:
            case 293:
                return String.valueOf('\'') + new String(this.k, 0, this.l) + '\'';
            default:
                return v(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, int i) {
        String a = luaj.m.a(this.n.d_());
        this.i.b(String.valueOf(a) + ':' + this.d + ": " + str);
        if (i != 0) {
            str = String.valueOf(str) + " near " + w(i);
            this.i.b("syntax error: " + str);
        }
        throw new luaj.o(a, this.d, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(String str) {
        a(str, this.f.a);
    }

    LuaString d(String str) {
        return this.i.a(str);
    }

    LuaString a(char[] cArr, int i, int i2) {
        return this.i.a(new String(cArr, i, i2));
    }

    void d() {
        int i = this.c;
        a(b());
        a();
        if (b() && this.c != i) {
            a();
        }
        int i2 = this.d + 1;
        this.d = i2;
        if (i2 >= 2147483645) {
            c("chunk has too many lines (> 2147483645)");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(u uVar, int i, InputStream inputStream, LuaString luaString) {
        this.p = (byte) 46;
        this.i = uVar;
        this.g.a = 289;
        this.j = inputStream;
        this.h = null;
        this.d = 1;
        this.e = 1;
        this.n = luaString;
        this.o = LuaValue.C;
        this.l = 0;
        this.c = i;
        B();
    }

    private void B() {
        if (this.c == 35) {
            while (!b() && this.c != -1) {
                a();
            }
        }
    }

    boolean e(String str) {
        if (str.indexOf(this.c) < 0) {
            return false;
        }
        c();
        return true;
    }

    void a(o oVar, boolean z) {
        LuaValue a;
        int i = 0;
        int i2 = this.c;
        c();
        boolean z2 = i2 == 48 && e("Xx");
        String str = z2 ? "Pp" : "Ee";
        while (true) {
            if (e(str)) {
                e("+-");
                z = false;
            }
            int i3 = this.c;
            if ((i3 >= 48 && i3 <= 57) || (z2 && ((i3 >= 97 && i3 <= 102) || (i3 >= 65 && i3 <= 70)))) {
                c();
            } else if (i3 != 46) {
                break;
            } else {
                c();
                z = false;
            }
        }
        if (!z2 && z && this.l > 19) {
            z = false;
        }
        try {
            if (z2) {
                i iVar = this.u;
                iVar.a = this.k;
                iVar.b = this.l;
                a = LuaValue.a(iVar);
            } else if (z) {
                long j = 0;
                char[] cArr = this.k;
                int i4 = this.l;
                if (i4 != 19) {
                    while (i < i4) {
                        j = (j * 10) + (cArr[i] - '0');
                        i++;
                    }
                    a = LuaLong.b(j);
                } else {
                    while (i < 18) {
                        j = (j * 10) + (cArr[i] - '0');
                        i++;
                    }
                    long j2 = (j * 10) + (cArr[18] - '0');
                    if (j2 < j) {
                        a = LuaDouble.a(Double.parseDouble(new String(cArr, 0, i4)));
                    } else {
                        a = LuaLong.b(j2);
                    }
                }
            } else {
                a = LuaDouble.a(Double.parseDouble(new String(this.k, 0, this.l)));
            }
            oVar.a = a;
        } catch (NumberFormatException e) {
            a("malformed number (" + e.getMessage() + ")", 290);
        }
    }

    int e() {
        int i = 0;
        int i2 = this.c;
        c();
        while (this.c == 61) {
            c();
            i++;
        }
        return this.c == i2 ? i : (-i) - 1;
    }

    void a(o oVar, int i) {
        c();
        if (b()) {
            d();
        }
        boolean z = false;
        int i2 = 0;
        while (!z) {
            switch (this.c) {
                case -1:
                    a(oVar != null ? "unfinished long string" : "unfinished long comment", 289);
                    break;
                case 10:
                case 13:
                    u(10);
                    d();
                    if (oVar != null) {
                        break;
                    } else {
                        this.l = 0;
                        break;
                    }
                case 91:
                    if (e() != i) {
                        break;
                    } else {
                        c();
                        int i3 = i2 + 1;
                        if (i != 0) {
                            i2 = i3;
                            break;
                        } else {
                            a("nesting of [[...]] is deprecated", 91);
                            i2 = i3;
                            break;
                        }
                    }
                case 93:
                    if (e() != i) {
                        break;
                    } else {
                        c();
                        z = true;
                        break;
                    }
                default:
                    if (oVar != null) {
                        c();
                        break;
                    } else {
                        a();
                        break;
                    }
            }
        }
        if (oVar != null) {
            oVar.b = this.i.a(LuaString.a(this.k, i + 2, this.l - ((i + 2) * 2)));
        }
    }

    public static int x(int i) {
        return i <= 57 ? i - 48 : i <= 70 ? (i + 10) - 65 : (i + 10) - 97;
    }

    void a(int i, String str) {
        u(92);
        for (int i2 = 0; i2 < i && this.v[i2] != -1; i2++) {
            u(this.v[i2]);
        }
        a(str, 293);
    }

    int f() {
        int i = 0;
        for (int i2 = 1; i2 < 3; i2++) {
            a();
            int[] iArr = this.v;
            int i3 = this.c;
            iArr[i2] = i3;
            if (!s(i3)) {
                this.v[0] = 120;
                a(i2 + 1, "hexadecimal digit expected");
            }
            i = (i << 4) + x(i3);
        }
        return i;
    }

    int g() {
        int i;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i2;
            if (i3 >= 3 || !r(this.c)) {
                break;
            }
            int[] iArr = this.v;
            int i4 = this.c;
            iArr[i3] = i4;
            i2 = ((i * 10) + i4) - 48;
            a();
            i3++;
        }
        if (i > 255) {
            this.v[i3] = this.c;
            a(i3 + 1, "decimal escape too large");
        }
        return i;
    }

    void a(int i, int i2, String str) {
        this.v[0] = 117;
        this.v[1] = i;
        a(i2, str);
    }

    void b(int i, String str) {
        a(123, i, str);
    }

    void h() {
        int i;
        a();
        int i2 = this.c;
        if (i2 != 123) {
            a(i2, 2, "missing '{', got '" + ((char) i2) + "'");
        }
        int i3 = 2;
        int i4 = 0;
        while (true) {
            a();
            if (i3 == 23) {
                b(i3, "unicode escape too long");
            }
            int[] iArr = this.v;
            i = this.c;
            iArr[i3] = i;
            if (!s(i)) {
                break;
            }
            i4 = (i4 << 4) + x(i);
            if (i4 > 1114111) {
                b(i3 + 1, "UTF-8 value too large: 0x" + Integer.toHexString(i4) + " (max allowed = 0x" + Integer.toHexString(1114111) + ")");
            }
            i3++;
        }
        if (i3 == 2) {
            b(3, "hexadecimal digit expected, got '" + ((char) i) + "'");
        }
        if (i != 125) {
            b(i3 + 1, "missing '}', got '" + ((char) i) + "'");
        }
        for (byte b2 : new String(Character.toChars(i4)).getBytes()) {
            u(b2);
        }
        a();
    }

    void a(int i, o oVar) {
        int f;
        c();
        while (this.c != i) {
            switch (this.c) {
                case -1:
                    a("unfinished string", 289);
                    break;
                case 10:
                case 13:
                    a("unfinished string", 293);
                    break;
                case 92:
                    a();
                    switch (this.c) {
                        case -1:
                            break;
                        case 10:
                        case 13:
                            u(10);
                            d();
                            break;
                        case 34:
                        case 39:
                        case 92:
                            c();
                            break;
                        case 97:
                            f = 7;
                            u(f);
                            a();
                            break;
                        case 98:
                            f = 8;
                            u(f);
                            a();
                            break;
                        case 102:
                            f = 12;
                            u(f);
                            a();
                            break;
                        case 110:
                            f = 10;
                            u(f);
                            a();
                            break;
                        case 114:
                            f = 13;
                            u(f);
                            a();
                            break;
                        case 116:
                            f = 9;
                            u(f);
                            a();
                            break;
                        case 117:
                            h();
                            break;
                        case 118:
                            f = 11;
                            u(f);
                            a();
                            break;
                        case 120:
                            f = f();
                            u(f);
                            a();
                            break;
                        case 122:
                            a();
                            while (t(this.c)) {
                                if (b()) {
                                    d();
                                } else {
                                    a();
                                }
                            }
                            break;
                        default:
                            if (!r(this.c)) {
                                this.v[0] = this.c;
                                a(1, "invalid escape sequence");
                                break;
                            } else {
                                u(g());
                                break;
                            }
                    }
                default:
                    c();
                    break;
            }
        }
        c();
        oVar.b = this.i.a(LuaString.a(this.k, 1, this.l - 2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:?, code lost:
        return 61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:?, code lost:
        return 282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0089, code lost:
        a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008e, code lost:
        if (r7.c == 61) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0092, code lost:
        a();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    int a(luaj.a.o r8) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.a.h.a(luaj.a.o):int");
    }

    void i() {
        this.e = this.d;
        if (this.g.a != 289) {
            this.f.a(this.g);
            this.g.a = 289;
            return;
        }
        this.f.a = a(this.f.b);
    }

    void j() {
        a(this.g.a == 289);
        this.g.a = a(this.g.b);
    }

    boolean y(int i) {
        return i == 12 || i == 13;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f(String str) {
        this.f.a = 0;
        c(str);
    }

    void z(int i) {
        c(this.i.b(String.valueOf(h(v(i))) + " expected"));
    }

    boolean A(int i) {
        if (this.f.a == i) {
            i();
            return true;
        }
        return false;
    }

    void B(int i) {
        if (this.f.a != i) {
            z(i);
        }
    }

    void C(int i) {
        B(i);
        i();
    }

    void a(boolean z, String str) {
        if (!z) {
            c(str);
        }
    }

    void b(int i, int i2, int i3) {
        if (!A(i)) {
            if (i3 == this.d) {
                z(i);
            } else {
                c(this.i.b(String.valueOf(h(v(i))) + " expected (to close " + h(v(i2)) + " at line " + i3 + ')'));
            }
        }
    }

    LuaString k() {
        B(292);
        LuaString luaString = this.f.b.b;
        i();
        return luaString;
    }

    void a(r rVar, LuaString luaString) {
        rVar.a(4, this.h.c(luaString));
    }

    void a(r rVar) {
        a(rVar, k());
    }

    int a(LuaString luaString) {
        c cVar = this.h;
        al alVar = cVar.b;
        if (alVar.u == null || cVar.m + 1 > alVar.u.length) {
            alVar.u = a(alVar.u, (cVar.m * 2) + 1);
        }
        alVar.u[cVar.m] = new luaj.l(luaString, 0, 0);
        short s2 = cVar.m;
        cVar.m = (short) (s2 + 1);
        return s2;
    }

    void b(LuaString luaString) {
        int a = a(luaString);
        this.h.a(this.m.b + 1, 200, "local variables");
        if (this.m.a == null || this.m.b + 1 > this.m.a.length) {
            this.m.a = a(this.m.a, Math.max(1, this.m.b * 2));
        }
        q[] qVarArr = this.m.a;
        k kVar = this.m;
        int i = kVar.b;
        kVar.b = i + 1;
        qVarArr[i] = new q(a);
    }

    void g(String str) {
        b(d(str));
    }

    void D(int i) {
        c cVar = this.h;
        cVar.n = (short) (cVar.n + i);
        while (i > 0) {
            cVar.p(cVar.n - i).b = cVar.g;
            i--;
        }
    }

    void b(r rVar) {
        boolean z = true;
        LuaString k = k();
        c cVar = this.h;
        if (c.a(cVar, k, rVar, 1) == 0) {
            r rVar2 = new r();
            c.a(cVar, this.o, rVar, 1);
            if (rVar.a != 7 && rVar.a != 8) {
                z = false;
            }
            a(z);
            a(rVar2, k);
            cVar.c(rVar, rVar2);
        }
    }

    void a(int i, int i2, r rVar) {
        c cVar = this.h;
        int i3 = i - i2;
        if (y(rVar.a)) {
            int i4 = i3 + 1;
            if (i4 < 0) {
                i4 = 0;
            }
            cVar.a(rVar, i4);
            if (i4 > 1) {
                cVar.z(i4 - 1);
                return;
            }
            return;
        }
        if (rVar.a != 0) {
            cVar.h(rVar);
        }
        if (i3 > 0) {
            short s2 = cVar.p;
            cVar.z(i3);
            cVar.b(s2, i3);
        }
    }

    void l() {
        u uVar = this.i;
        int i = uVar.a + 1;
        uVar.a = i;
        if (i > 200) {
            a("chunk has too many syntax levels", 0);
        }
    }

    void m() {
        u uVar = this.i;
        uVar.a--;
    }

    void a(int i, m mVar) {
        c cVar = this.h;
        m[] mVarArr = this.m.c;
        m mVar2 = mVarArr[i];
        a(mVar2.a.b((LuaValue) mVar.a));
        if (mVar2.d < mVar.d) {
            f(this.i.b("<goto " + mVar2.a + "> at line " + mVar2.c + " jumps into the scope of local '" + cVar.p(mVar2.d).a.d_() + '\''));
        }
        cVar.f(mVar2.b, mVar.b);
        System.arraycopy(mVarArr, i + 1, mVarArr, i, (this.m.d - i) - 1);
        k kVar = this.m;
        int i2 = kVar.d - 1;
        kVar.d = i2;
        mVarArr[i2] = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean E(int i) {
        d dVar = this.h.f;
        k kVar = this.m;
        m mVar = kVar.c[i];
        for (int i2 = dVar.b; i2 < kVar.f; i2++) {
            m mVar2 = kVar.e[i2];
            if (mVar2.a.b((LuaValue) mVar.a)) {
                if (mVar.d > mVar2.d && (dVar.e || kVar.f > dVar.b)) {
                    this.h.g(mVar.b, mVar2.d);
                }
                a(i, mVar2);
                return true;
            }
        }
        return false;
    }

    int a(m[] mVarArr, int i, LuaString luaString, int i2, int i3) {
        mVarArr[i] = new m(luaString, i3, i2, this.h.n);
        return i;
    }

    void a(m mVar) {
        m[] mVarArr = this.m.c;
        int i = this.h.f.c;
        while (i < this.m.d) {
            if (mVarArr[i].a.b((LuaValue) mVar.a)) {
                a(i, mVar);
            } else {
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        LuaString c = LuaString.c("break");
        k kVar = this.m;
        m[] a = a(this.m.e, this.m.f + 1);
        kVar.e = a;
        k kVar2 = this.m;
        int i = kVar2.f;
        kVar2.f = i + 1;
        a(this.m.e[a(a, i, c, 0, this.h.g)]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(m mVar, c cVar, d dVar) {
        String str;
        this.d = mVar.c;
        String d_ = mVar.a.d_();
        boolean b2 = b(d_);
        u uVar = this.i;
        if (b2) {
            str = "<" + mVar.a + "> at line " + mVar.c + " not inside a loop";
        } else {
            str = "no visible label '" + mVar.a + "' for <goto> at line " + mVar.c;
        }
        String b3 = uVar.b(str);
        if (!b2) {
            k kVar = this.m;
            for (int i = dVar.b; i < kVar.f; i++) {
                m mVar2 = kVar.e[i];
                if (mVar2 != null && mVar2.a != null) {
                    String d_2 = mVar2.a.d_();
                    if (d_2.equalsIgnoreCase(d_)) {
                        b3 = String.valueOf(b3) + "\ndid you mean label '" + d_2 + "' at line " + mVar2.c + '?';
                    }
                }
            }
        }
        f(b3);
    }

    al o() {
        al alVar = this.h.b;
        if (alVar.s == null || this.h.k >= alVar.s.length) {
            alVar.s = a(alVar.s, Math.max(1, this.h.k * 2));
        }
        al[] alVarArr = alVar.s;
        c cVar = this.h;
        int i = cVar.k;
        cVar.k = i + 1;
        al alVar2 = new al();
        alVarArr[i] = alVar2;
        return alVar2;
    }

    void c(r rVar) {
        c cVar = this.h.d;
        rVar.a(11, cVar.d(37, 0, cVar.k - 1));
        cVar.h(rVar);
    }

    void a(c cVar, d dVar) {
        cVar.d = this.h;
        cVar.e = this;
        this.h = cVar;
        cVar.g = 0;
        cVar.h = -1;
        cVar.i = new f(-1);
        cVar.p = (short) 0;
        cVar.j = 0;
        cVar.k = 0;
        cVar.o = (short) 0;
        cVar.m = (short) 0;
        cVar.n = (short) 0;
        cVar.l = this.m.b;
        cVar.f = null;
        cVar.b.w = this.n;
        cVar.b.B = 2;
        cVar.a(dVar, false);
    }

    void p() {
        c cVar = this.h;
        al alVar = cVar.b;
        cVar.c(0, 0);
        cVar.a();
        alVar.r = a(alVar.r, cVar.g);
        alVar.t = a(alVar.t, cVar.g);
        alVar.q = a(alVar.q, cVar.j);
        alVar.s = a(alVar.s, cVar.k);
        alVar.u = a(alVar.u, cVar.m);
        alVar.v = a(alVar.v, cVar.o);
        a(cVar.f == null);
        this.h = cVar.d;
    }

    void d(r rVar) {
        c cVar = this.h;
        r rVar2 = new r();
        cVar.j(rVar);
        i();
        a(rVar2);
        cVar.c(rVar, rVar2);
    }

    void e(r rVar) {
        i();
        k(rVar);
        this.h.k(rVar);
        C(93);
    }

    void a(j jVar) {
        c cVar = this.h;
        short s2 = this.h.p;
        r rVar = new r();
        r rVar2 = new r();
        if (this.f.a == 292) {
            cVar.a(jVar.c, 2147483645, "items in a constructor");
            a(rVar);
        } else {
            e(rVar);
        }
        jVar.c++;
        C(61);
        int l = cVar.l(rVar);
        k(rVar2);
        cVar.d(10, jVar.b.b.e, l, cVar.l(rVar2));
        cVar.p = s2;
    }

    void b(j jVar) {
        k(jVar.a);
        this.h.a(jVar.d, 2147483645, "items in a constructor");
        jVar.d++;
        jVar.e++;
    }

    void f(r rVar) {
        c cVar = this.h;
        int i = this.d;
        int d = cVar.d(11, 0, 0, 0);
        j jVar = new j();
        jVar.e = 0;
        jVar.c = 0;
        jVar.d = 0;
        jVar.b = rVar;
        rVar.a(11, d);
        jVar.a.a(0, 0);
        cVar.h(rVar);
        C(123);
        while (true) {
            a(jVar.a.a == 0 || jVar.e > 0);
            if (this.f.a != 125) {
                cVar.a(jVar);
                switch (this.f.a) {
                    case 91:
                        a(jVar);
                        break;
                    case 292:
                        j();
                        if (this.g.a != 61) {
                            b(jVar);
                            break;
                        } else {
                            a(jVar);
                            break;
                        }
                    default:
                        b(jVar);
                        break;
                }
                if (A(44) || A(59)) {
                }
            }
        }
        b(125, 123, i);
        cVar.b(jVar);
        e eVar = new e(cVar.b.r, d);
        c(eVar, F(jVar.d));
        d(eVar, F(jVar.c));
    }

    static int F(int i) {
        int i2 = 0;
        int i3 = i;
        while (i3 >= 16) {
            i3 = (i3 + 1) >> 1;
            i2++;
        }
        if (i3 < 8) {
            return i3;
        }
        return (i3 - 8) | ((i2 + 1) << 3);
    }

    void q() {
        int i = 0;
        c cVar = this.h;
        al alVar = cVar.b;
        alVar.A = 0;
        if (this.f.a != 41) {
            do {
                switch (this.f.a) {
                    case 281:
                        i();
                        alVar.A = 1;
                        break;
                    case 292:
                        b(k());
                        i++;
                        break;
                    default:
                        c("<name> or " + a((Object) "...") + " expected");
                        break;
                }
                if (alVar.A == 0) {
                }
            } while (A(44));
        }
        D(i);
        alVar.z = cVar.n;
        cVar.z(cVar.n);
    }

    void a(r rVar, boolean z, int i) {
        c cVar = new c();
        d dVar = new d();
        cVar.b = o();
        cVar.b.x = i;
        a(cVar, dVar);
        C(40);
        if (z) {
            g("self");
            D(1);
        }
        q();
        C(41);
        A();
        cVar.b.y = this.d;
        b(262, 265, i);
        c(rVar);
        p();
    }

    int g(r rVar) {
        int i = 1;
        k(rVar);
        while (A(44)) {
            this.h.h(rVar);
            k(rVar);
            i++;
        }
        return i;
    }

    void a(r rVar, int i) {
        int i2;
        c cVar = this.h;
        r rVar2 = new r();
        switch (this.f.a) {
            case 40:
                i();
                if (this.f.a == 41) {
                    rVar2.a = 0;
                } else {
                    g(rVar2);
                    cVar.c(rVar2);
                }
                b(41, 40, i);
                break;
            case 123:
                f(rVar2);
                break;
            case 293:
                a(rVar2, this.f.b.b);
                i();
                break;
            default:
                c("function arguments expected");
                return;
        }
        a(rVar.a == 6);
        int i3 = rVar.b.e;
        if (y(rVar2.a)) {
            i2 = -1;
        } else {
            if (rVar2.a != 0) {
                cVar.h(rVar2);
            }
            i2 = cVar.p - (i3 + 1);
        }
        rVar.a(12, cVar.d(29, i3, i2 + 1, 2));
        cVar.C(i);
        cVar.p = (short) (i3 + 1);
    }

    void h(r rVar) {
        switch (this.f.a) {
            case 40:
                int i = this.d;
                i();
                k(rVar);
                b(41, 40, i);
                this.h.f(rVar);
                return;
            case 292:
                b(rVar);
                return;
            default:
                c("unexpected symbol");
                return;
        }
    }

    void i(r rVar) {
        int i = this.d;
        h(rVar);
        while (true) {
            switch (this.f.a) {
                case 40:
                case 123:
                case 293:
                    this.h.h(rVar);
                    a(rVar, i);
                    break;
                case 46:
                    d(rVar);
                    break;
                case 58:
                    r rVar2 = new r();
                    i();
                    a(rVar2);
                    this.h.b(rVar, rVar2);
                    a(rVar, i);
                    break;
                case 91:
                    r rVar3 = new r();
                    this.h.j(rVar);
                    e(rVar3);
                    this.h.c(rVar, rVar3);
                    break;
                default:
                    return;
            }
        }
    }

    void j(r rVar) {
        switch (this.f.a) {
            case 123:
                f(rVar);
                return;
            case 263:
                rVar.a(3, 0);
                break;
            case 265:
                i();
                a(rVar, false, this.d);
                return;
            case 270:
                rVar.a(1, 0);
                break;
            case 276:
                rVar.a(2, 0);
                break;
            case 281:
                c cVar = this.h;
                a(cVar.b.A != 0, "cannot use " + a((Object) "...") + " outside a vararg function");
                rVar.a(13, cVar.d(38, 0, 1, 0));
                break;
            case 290:
                rVar.a(5, 0);
                rVar.b.a(this.f.b.a);
                break;
            case 293:
                a(rVar, this.f.b.b);
                break;
            default:
                i(rVar);
                return;
        }
        i();
    }

    int G(int i) {
        switch (i) {
            case 35:
                return 2;
            case 45:
                return 0;
            case 126:
                return 4;
            case 271:
                return 1;
            default:
                return 3;
        }
    }

    int H(int i) {
        switch (i) {
            case 37:
                return 4;
            case 38:
                return 16;
            case 42:
                return 2;
            case 43:
                return 0;
            case 45:
                return 1;
            case 47:
                return 3;
            case 60:
                return 9;
            case 62:
                return 11;
            case 94:
                return 5;
            case 124:
                return 17;
            case 126:
                return 18;
            case 257:
                return 13;
            case 272:
                return 14;
            case 279:
                return 15;
            case 280:
                return 6;
            case 282:
                return 8;
            case 283:
                return 12;
            case 284:
                return 10;
            case 285:
                return 7;
            case 286:
                return 19;
            case 287:
                return 20;
            default:
                return 21;
        }
    }

    int b(r rVar, int i) {
        l();
        int G = G(this.f.a);
        if (G != 3) {
            int i2 = this.d;
            i();
            b(rVar, 80);
            this.h.a(G, rVar, i2);
        } else {
            j(rVar);
        }
        int H = H(this.f.a);
        while (H != 21 && s[H].a > i) {
            r rVar2 = new r();
            int i3 = this.d;
            i();
            this.h.a(H, rVar);
            int b2 = b(rVar2, s[H].b);
            this.h.b(H, rVar, rVar2, i3);
            H = b2;
        }
        m();
        return H;
    }

    void k(r rVar) {
        b(rVar, 0);
    }

    boolean b(boolean z) {
        switch (this.f.a) {
            case 260:
            case 261:
            case 262:
            case 289:
                return true;
            case 277:
                return z;
            default:
                return false;
        }
    }

    void r() {
        c cVar = this.h;
        cVar.a(new d(), false);
        A();
        cVar.a();
    }

    void a(l lVar, r rVar) {
        c cVar = this.h;
        short s2 = cVar.p;
        boolean z = false;
        while (lVar != null) {
            if (lVar.b.a == 9) {
                if (lVar.b.b.c == rVar.a && lVar.b.b.b == rVar.b.e) {
                    lVar.b.b.c = (short) 7;
                    lVar.b.b.b = s2;
                    z = true;
                }
                if (rVar.a == 7 && lVar.b.b.a == rVar.b.e) {
                    lVar.b.b.a = s2;
                    z = true;
                }
            }
            lVar = lVar.a;
        }
        if (z) {
            cVar.d(rVar.a == 7 ? 0 : 5, s2, rVar.b.e, 0);
            cVar.z(1);
        }
    }

    void a(l lVar, int i) {
        r rVar = new r();
        a(7 <= lVar.b.a && lVar.b.a <= 9, "syntax error");
        if (A(44)) {
            l lVar2 = new l();
            lVar2.a = lVar;
            i(lVar2.b);
            if (lVar2.b.a != 9) {
                a(lVar, lVar2.b);
            }
            a(lVar2, i + 1);
        } else {
            C(61);
            int g = g(rVar);
            if (g != i) {
                a(i, g, rVar);
                if (g > i) {
                    c cVar = this.h;
                    cVar.p = (short) (cVar.p - (g - i));
                }
            } else {
                this.h.e(rVar);
                this.h.a(lVar.b, rVar);
                return;
            }
        }
        rVar.a(6, this.h.p - 1);
        this.h.a(lVar.b, rVar);
    }

    int s() {
        r rVar = new r();
        k(rVar);
        if (rVar.a == 1) {
            rVar.a = 3;
        }
        this.h.n(rVar);
        return rVar.d.a;
    }

    void I(int i) {
        LuaString c;
        int i2 = this.d;
        if (A(266)) {
            c = k();
        } else {
            i();
            c = LuaString.c("break");
        }
        k kVar = this.m;
        m[] a = a(this.m.c, this.m.d + 1);
        kVar.c = a;
        k kVar2 = this.m;
        int i3 = kVar2.d;
        kVar2.d = i3 + 1;
        E(a(a, i3, c, i2, i));
    }

    void t() {
        while (true) {
            if (this.f.a == 59 || this.f.a == 288) {
                z();
            } else {
                return;
            }
        }
    }

    void a(LuaString luaString, int i) {
        this.h.a(this.m.e, this.m.f, luaString);
        C(288);
        k kVar = this.m;
        m[] a = a(this.m.e, this.m.f + 1);
        kVar.e = a;
        k kVar2 = this.m;
        int i2 = kVar2.f;
        kVar2.f = i2 + 1;
        int a2 = a(a, i2, luaString, i, this.h.c());
        t();
        if (b(false)) {
            this.m.e[a2].d = this.h.f.d;
        }
        a(this.m.e[a2]);
    }

    void J(int i) {
        c cVar = this.h;
        d dVar = new d();
        i();
        int c = cVar.c();
        int s2 = s();
        cVar.a(dVar, true);
        C(259);
        r();
        cVar.f(cVar.b(), c);
        b(262, 278, i);
        cVar.a();
        cVar.x(s2);
    }

    void K(int i) {
        c cVar = this.h;
        int c = cVar.c();
        d dVar = new d();
        d dVar2 = new d();
        cVar.a(dVar, true);
        cVar.a(dVar2, false);
        i();
        A();
        b(277, 273, i);
        int s2 = s();
        if (dVar2.e) {
            cVar.g(s2, dVar2.d);
        }
        cVar.a();
        cVar.f(s2, c);
        cVar.a();
    }

    int u() {
        r rVar = new r();
        k(rVar);
        int i = rVar.a;
        this.h.h(rVar);
        return i;
    }

    void a(int i, int i2, int i3, boolean z) {
        int b2;
        d dVar = new d();
        c cVar = this.h;
        D(3);
        C(259);
        int b3 = z ? cVar.b(33, i, -1) : cVar.b();
        cVar.a(dVar, false);
        D(i3);
        cVar.z(i3);
        r();
        cVar.a();
        cVar.x(b3);
        if (z) {
            b2 = cVar.b(32, i, -1);
        } else {
            cVar.d(34, i, 0, i3);
            cVar.C(i2);
            b2 = cVar.b(35, i + 2, -1);
        }
        cVar.f(b2, b3 + 1);
        cVar.C(i2);
    }

    void b(LuaString luaString, int i) {
        c cVar = this.h;
        short s2 = cVar.p;
        g("(for index)");
        g("(for limit)");
        g("(for step)");
        b(luaString);
        C(61);
        u();
        C(44);
        u();
        if (A(44)) {
            u();
        } else {
            cVar.i(cVar.p, cVar.b(LuaLong.b(1L)));
            cVar.z(1);
        }
        a((int) s2, i, 1, true);
    }

    void c(LuaString luaString) {
        c cVar = this.h;
        r rVar = new r();
        int i = 4;
        short s2 = cVar.p;
        g("(for generator)");
        g("(for state)");
        g("(for control)");
        b(luaString);
        while (A(44)) {
            b(k());
            i++;
        }
        C(268);
        int i2 = this.d;
        a(3, g(rVar), rVar);
        cVar.y(3);
        a((int) s2, i2, i - 3, false);
    }

    void L(int i) {
        c cVar = this.h;
        cVar.a(new d(), true);
        i();
        LuaString k = k();
        switch (this.f.a) {
            case 44:
            case 268:
                c(k);
                break;
            case 61:
                b(k, i);
                break;
            default:
                c(String.valueOf(a((Object) "=")) + " or " + a((Object) "in") + " expected");
                break;
        }
        b(262, 264, i);
        cVar.a();
    }

    void a(f fVar) {
        int b2;
        r rVar = new r();
        d dVar = new d();
        i();
        k(rVar);
        C(275);
        if (this.f.a == 266 || this.f.a == 258) {
            this.h.o(rVar);
            this.h.a(dVar, false);
            I(rVar.c.a);
            t();
            if (b(false)) {
                this.h.a();
                return;
            }
            b2 = this.h.b();
        } else {
            this.h.n(rVar);
            this.h.a(dVar, false);
            b2 = rVar.d.a;
        }
        A();
        this.h.a();
        if (this.f.a == 260 || this.f.a == 261) {
            this.h.a(fVar, this.h.b());
        }
        this.h.x(b2);
    }

    void M(int i) {
        f fVar = new f(-1);
        a(fVar);
        while (this.f.a == 261) {
            a(fVar);
        }
        if (A(260)) {
            r();
        }
        b(262, 267, i);
        this.h.x(fVar.a);
    }

    void v() {
        r rVar = new r();
        c cVar = this.h;
        b(k());
        D(1);
        a(rVar, false, this.d);
        cVar.p(cVar.n - 1).b = cVar.g;
    }

    void w() {
        int i = 0;
        r rVar = new r();
        int i2 = 0;
        do {
            b(k());
            i2++;
        } while (A(44));
        if (A(61)) {
            i = g(rVar);
        } else {
            rVar.a = 0;
        }
        a(i2, i, rVar);
        D(i2);
    }

    boolean l(r rVar) {
        b(rVar);
        while (this.f.a == 46) {
            d(rVar);
        }
        if (this.f.a != 58) {
            return false;
        }
        d(rVar);
        return true;
    }

    void N(int i) {
        r rVar = new r();
        r rVar2 = new r();
        i();
        a(rVar2, l(rVar), i);
        this.h.a(rVar, rVar2);
        this.h.C(i);
    }

    void x() {
        c cVar = this.h;
        l lVar = new l();
        i(lVar.b);
        if (this.f.a == 61 || this.f.a == 44) {
            lVar.a = null;
            a(lVar, 1);
            return;
        }
        a(lVar.b.a == 12, "syntax error");
        d(cVar.a(lVar.b), 1);
    }

    void y() {
        int i;
        short s2;
        c cVar = this.h;
        r rVar = new r();
        if (b(true) || this.f.a == 59) {
            i = 0;
            s2 = 0;
        } else {
            int g = g(rVar);
            if (y(rVar.a)) {
                cVar.c(rVar);
                if (rVar.a == 12 && g == 1) {
                    a(cVar.a(rVar), 30);
                    a(luaj.m.b(cVar.b(rVar)) == cVar.n);
                }
                i = -1;
                s2 = cVar.n;
            } else if (g == 1) {
                i = g;
                s2 = cVar.i(rVar);
            } else {
                cVar.h(rVar);
                s2 = cVar.n;
                a(g == cVar.p - s2);
                i = g;
            }
        }
        cVar.c(s2, i);
        A(59);
    }

    void z() {
        int i = this.d;
        l();
        switch (this.f.a) {
            case 59:
                i();
                break;
            case 258:
            case 266:
                I(this.h.b());
                break;
            case 259:
                i();
                r();
                b(262, 259, i);
                break;
            case 264:
                L(i);
                break;
            case 265:
                N(i);
                break;
            case 267:
                M(i);
                break;
            case 269:
                i();
                if (A(265)) {
                    v();
                    break;
                } else {
                    w();
                    break;
                }
            case 273:
                K(i);
                break;
            case 274:
                i();
                y();
                break;
            case 278:
                J(i);
                break;
            case 288:
                i();
                a(k(), i);
                break;
            default:
                x();
                break;
        }
        a(this.h.b.B >= this.h.p && this.h.p >= this.h.n);
        this.h.p = this.h.n;
        m();
    }

    void A() {
        while (!b(true)) {
            if (this.f.a == 274) {
                z();
                return;
            }
            z();
        }
    }

    public void a(c cVar) {
        a(cVar, new d());
        this.h.b.A = 1;
        r rVar = new r();
        rVar.a(7, 0);
        this.h.a(this.o, rVar);
        i();
        A();
        B(289);
        p();
    }
}
