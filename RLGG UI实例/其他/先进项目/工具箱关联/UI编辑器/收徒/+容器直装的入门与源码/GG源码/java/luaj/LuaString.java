package luaj;

import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.InputStream;

/* compiled from: src */
/* loaded from: classes.dex */
public class LuaString extends LuaValue {
    public static LuaValue a;
    private static final boolean[] g = new boolean[128];
    public final byte[] b;
    public final int c;
    public final int d;
    public final int e;
    private LuaValue f;

    public static LuaString c(String str) {
        LuaString e = e(str);
        if (e == null) {
            byte[] bytes = str.getBytes();
            return b(bytes, 0, bytes.length);
        }
        return e;
    }

    private static LuaString e(String str) {
        int length = str.length();
        if (length == 0) {
            return ad;
        }
        if (length == 1) {
            char charAt = str.charAt(0);
            if (charAt == '0') {
                return ae;
            }
            if (charAt == '1') {
                return af;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LuaString d(String str) {
        byte[] bytes = str.getBytes();
        return new LuaString(bytes, 0, bytes.length);
    }

    public static LuaString a(byte[] bArr, int i, int i2) {
        LuaString g2 = g(bArr, i, i2);
        if (g2 == null) {
            if (i2 > 32) {
                return f(bArr, i, i2);
            }
            int c = c(bArr, i, i2);
            int i3 = c & 127;
            LuaString luaString = r.a[i3];
            if (luaString == null || luaString.e != c || !luaString.h(bArr, i, i2)) {
                LuaString f = f(bArr, i, i2);
                r.a[i3] = f;
                return f;
            }
            return luaString;
        }
        return g2;
    }

    private static LuaString f(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new LuaString(bArr2, 0, i2);
    }

    private static LuaString g(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return ad;
        }
        if (i2 == 1) {
            if (bArr[i] == 48) {
                return ae;
            }
            if (bArr[i] == 49) {
                return af;
            }
        }
        return null;
    }

    public static LuaString b(byte[] bArr, int i, int i2) {
        LuaString g2 = g(bArr, i, i2);
        if (g2 == null) {
            if (bArr.length > 32) {
                return new LuaString(bArr, i, i2);
            }
            int c = c(bArr, i, i2);
            int i3 = c & 127;
            LuaString luaString = r.a[i3];
            if (luaString == null || luaString.e != c || !luaString.h(bArr, i, i2)) {
                LuaString luaString2 = new LuaString(bArr, i, i2);
                r.a[i3] = luaString2;
                return luaString2;
            }
            return luaString;
        }
        return g2;
    }

    public static LuaString a(char[] cArr, int i, int i2) {
        byte[] bArr = new byte[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            bArr[i3] = (byte) cArr[i3 + i];
        }
        return b(bArr, 0, i2);
    }

    public static LuaString a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static LuaString b(byte[] bArr) {
        return b(bArr, 0, bArr.length);
    }

    private LuaString(byte[] bArr, int i, int i2) {
        this.f = null;
        this.b = bArr;
        this.c = i;
        this.d = i2;
        this.e = c(bArr, i, i2);
    }

    /* synthetic */ LuaString(byte[] bArr, int i, int i2, LuaString luaString) {
        this(bArr, i, i2);
    }

    @Override // luaj.LuaValue
    public boolean J() {
        return true;
    }

    @Override // luaj.LuaValue
    public LuaValue i() {
        return a;
    }

    @Override // luaj.LuaValue
    public int e_() {
        return 4;
    }

    @Override // luaj.LuaValue
    public String f_() {
        return "string";
    }

    @Override // luaj.LuaValue, luaj.ap
    public String d_() {
        return d(this.b, this.c, this.d);
    }

    private LuaValue S() {
        LuaValue luaValue = this.f;
        if (luaValue == null) {
            LuaValue H = H();
            this.f = H;
            return H;
        }
        return luaValue;
    }

    @Override // luaj.LuaValue
    public LuaValue r() {
        LuaValue S = S();
        return S.F() ? super.r() : S.r();
    }

    @Override // luaj.LuaValue
    public LuaValue s() {
        LuaValue S = S();
        return S.F() ? super.s() : S.s();
    }

    @Override // luaj.LuaValue
    public LuaValue d(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.d(luaValue) : S.d(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue e(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.e(luaValue) : S.e(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue f(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.f(luaValue) : S.f(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue g(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.g(luaValue) : S.g(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue h(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.h(luaValue) : S.h(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue i(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.i(luaValue) : S.i(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue j(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.j(luaValue) : S.j(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue k(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.k(luaValue) : S.k(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue l(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.l(luaValue) : S.l(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue m(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.m(luaValue) : S.m(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue n(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.n(luaValue) : S.n(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue o(LuaValue luaValue) {
        LuaValue S = S();
        return S.F() ? super.o(luaValue) : S.o(luaValue);
    }

    @Override // luaj.LuaValue
    public boolean p(LuaValue luaValue) {
        return luaValue.J() ? luaValue.c(this) > 0 : super.p(luaValue);
    }

    @Override // luaj.LuaValue
    public boolean q(LuaValue luaValue) {
        return luaValue.J() ? luaValue.c(this) >= 0 : super.q(luaValue);
    }

    @Override // luaj.LuaValue
    public boolean r(LuaValue luaValue) {
        return luaValue.J() ? luaValue.c(this) < 0 : super.r(luaValue);
    }

    @Override // luaj.LuaValue
    public boolean s(LuaValue luaValue) {
        return luaValue.J() ? luaValue.c(this) <= 0 : super.s(luaValue);
    }

    @Override // luaj.LuaValue
    public LuaValue u(LuaValue luaValue) {
        return luaValue.b(this);
    }

    @Override // luaj.LuaValue
    public LuaValue a(LuaNumber luaNumber) {
        return b(luaNumber.t());
    }

    @Override // luaj.LuaValue
    public LuaValue b(LuaString luaString) {
        byte[] bArr = new byte[luaString.d + this.d];
        System.arraycopy(luaString.b, luaString.c, bArr, 0, luaString.d);
        System.arraycopy(this.b, this.c, bArr, luaString.d, this.d);
        return b(bArr, 0, bArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0010, code lost:
        return r5.d - r6.d;
     */
    @Override // luaj.LuaValue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int c(luaj.LuaString r6) {
        /*
            r5 = this;
            r1 = 0
            r0 = r1
            r2 = r1
        L3:
            int r1 = r5.d
            if (r2 >= r1) goto Lb
            int r1 = r6.d
            if (r0 < r1) goto L11
        Lb:
            int r0 = r5.d
            int r1 = r6.d
            int r0 = r0 - r1
        L10:
            return r0
        L11:
            byte[] r1 = r5.b
            int r3 = r5.c
            int r3 = r3 + r2
            r1 = r1[r3]
            byte[] r3 = r6.b
            int r4 = r6.c
            int r4 = r4 + r0
            r3 = r3[r4]
            if (r1 == r3) goto L32
            byte[] r1 = r5.b
            int r3 = r5.c
            int r2 = r2 + r3
            r1 = r1[r2]
            byte[] r2 = r6.b
            int r3 = r6.c
            int r0 = r0 + r3
            r0 = r2[r0]
            int r0 = r1 - r0
            goto L10
        L32:
            int r1 = r2 + 1
            int r0 = r0 + 1
            r2 = r1
            goto L3
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.LuaString.c(luaj.LuaString):int");
    }

    @Override // luaj.LuaValue
    public int v() {
        LuaValue S = S();
        return S.F() ? super.v() : S.v();
    }

    @Override // luaj.LuaValue
    public long w() {
        LuaValue S = S();
        return S.F() ? super.w() : S.w();
    }

    @Override // luaj.LuaValue
    public double x() {
        LuaValue S = S();
        return S.F() ? super.x() : S.x();
    }

    @Override // luaj.LuaValue
    public LuaNumber G() {
        LuaValue S = S();
        return S.F() ? super.G() : S.G();
    }

    @Override // luaj.LuaValue
    public LuaNumber b(String str) {
        LuaValue S = S();
        return S.F() ? super.b(str) : S.b(str);
    }

    @Override // luaj.LuaValue
    public boolean I() {
        return S().I();
    }

    @Override // luaj.LuaValue
    public boolean h_() {
        return S().h_();
    }

    @Override // luaj.LuaValue
    public boolean E() {
        return S().E();
    }

    @Override // luaj.LuaValue
    public boolean n() {
        return S().n();
    }

    @Override // luaj.LuaValue
    public double o() {
        return S().o();
    }

    @Override // luaj.LuaValue
    public int p() {
        return S().p();
    }

    @Override // luaj.LuaValue
    public long q() {
        return S().q();
    }

    @Override // luaj.LuaValue
    public double b(double d) {
        return x();
    }

    @Override // luaj.LuaValue
    public int b_(int i) {
        return v();
    }

    @Override // luaj.LuaValue
    public long a_(long j) {
        return w();
    }

    @Override // luaj.LuaValue
    public LuaString a(LuaString luaString) {
        return this;
    }

    @Override // luaj.LuaValue
    public LuaValue u() {
        return this;
    }

    @Override // luaj.LuaValue
    public String b_(String str) {
        return d_();
    }

    @Override // luaj.LuaValue
    public LuaString t() {
        return this;
    }

    public LuaString a(int i, int i2) {
        int i3 = this.c + i;
        int i4 = i2 - i;
        if (i4 >= this.d / 2) {
            return b(this.b, i3, i4);
        }
        return a(this.b, i3, i4);
    }

    public int hashCode() {
        return this.e;
    }

    public static int c(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 5) + 1;
        int i4 = i2;
        for (int i5 = i2; i5 >= i3; i5 -= i3) {
            i4 ^= ((i4 << 5) + (i4 >> 2)) + (bArr[(i + i5) - 1] & 255);
        }
        return (i4 >>> 6) | (i4 << 26);
    }

    @Override // luaj.LuaValue
    public boolean equals(Object obj) {
        if (obj instanceof LuaString) {
            return d((LuaString) obj);
        }
        return false;
    }

    @Override // luaj.LuaValue
    public boolean b(LuaValue luaValue) {
        return luaValue.d(this);
    }

    @Override // luaj.LuaValue
    public boolean c(LuaValue luaValue) {
        return luaValue.d(this);
    }

    @Override // luaj.LuaValue
    public boolean d(LuaString luaString) {
        if (this == luaString) {
            return true;
        }
        if (luaString.d == this.d) {
            if (luaString.b == this.b && luaString.c == this.c) {
                return true;
            }
            if (luaString.hashCode() == hashCode()) {
                for (int i = 0; i < this.d; i++) {
                    if (luaString.b[luaString.c + i] != this.b[this.c + i]) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public static boolean a(LuaString luaString, int i, LuaString luaString2, int i2, int i3) {
        return a(luaString.b, luaString.c + i, luaString2.b, luaString2.c + i2, i3);
    }

    private boolean h(byte[] bArr, int i, int i2) {
        return this.d == i2 && a(this.b, this.c, bArr, i, i2);
    }

    public static boolean a(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        if (bArr.length < i + i3 || bArr2.length < i2 + i3) {
            return false;
        }
        while (true) {
            i3--;
            if (i3 >= 0) {
                int i4 = i + 1;
                int i5 = i2 + 1;
                if (bArr[i] != bArr2[i2]) {
                    return false;
                }
                i2 = i5;
                i = i4;
            } else {
                return true;
            }
        }
    }

    public void a(DataOutputStream dataOutputStream, int i, int i2) {
        dataOutputStream.write(this.b, this.c + i, i2);
    }

    @Override // luaj.LuaValue
    public LuaValue K() {
        return LuaLong.b(this.d);
    }

    @Override // luaj.LuaValue
    public int L() {
        return this.d;
    }

    @Override // luaj.LuaValue
    public int M() {
        return this.d;
    }

    public int b(int i) {
        return this.b[this.c + i] & 255;
    }

    public int f_(int i) {
        if (i < 0 || i >= this.d) {
            throw new IndexOutOfBoundsException();
        }
        return b(i);
    }

    @Override // luaj.LuaValue
    public String y() {
        return d_();
    }

    @Override // luaj.LuaValue
    public LuaString z() {
        return this;
    }

    public InputStream r_() {
        return new ByteArrayInputStream(this.b, this.c, this.d);
    }

    public void a(int i, byte[] bArr, int i2, int i3) {
        System.arraycopy(this.b, this.c + i, bArr, i2, i3);
    }

    public int e(LuaString luaString) {
        int i = this.c + this.d;
        int i2 = luaString.c + luaString.d;
        for (int i3 = this.c; i3 < i; i3++) {
            for (int i4 = luaString.c; i4 < i2; i4++) {
                if (this.b[i3] == luaString.b[i4]) {
                    return i3 - this.c;
                }
            }
        }
        return -1;
    }

    public int a(byte b, int i) {
        while (i < this.d) {
            if (this.b[this.c + i] == b) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public int a(LuaString luaString, int i) {
        int L = luaString.L();
        int i2 = this.d - L;
        for (int i3 = i; i3 <= i2; i3++) {
            if (a(this.b, this.c + i3, luaString.b, luaString.c, L)) {
                return i3;
            }
        }
        return -1;
    }

    public static String d(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2);
    }

    public boolean s_() {
        byte[] bArr = this.b;
        int i = this.c;
        int i2 = this.d + this.c;
        while (i < i2) {
            int i3 = i + 1;
            byte b = bArr[i];
            if (b < 0) {
                if ((b & 224) != 192 || i3 >= i2) {
                    i = i3;
                } else {
                    i = i3 + 1;
                    if ((bArr[i3] & 192) == 128) {
                        continue;
                    }
                }
                if ((b & 240) == 224 && i + 1 < i2) {
                    int i4 = i + 1;
                    if ((bArr[i] & 192) == 128) {
                        i = i4 + 1;
                        if ((bArr[i4] & 192) == 128) {
                            continue;
                        }
                    } else {
                        i = i4;
                    }
                }
                if ((b & 248) == 240 && i + 2 < i2) {
                    int i5 = i + 1;
                    if ((bArr[i] & 192) == 128) {
                        int i6 = i5 + 1;
                        if ((bArr[i5] & 192) == 128) {
                            i = i6 + 1;
                            if ((bArr[i6] & 192) != 128) {
                            }
                        }
                    }
                }
                return false;
            }
            i = i3;
        }
        return true;
    }

    static {
        for (byte b = 48; b <= 57; b = (byte) (b + 1)) {
            g[b] = true;
        }
        for (byte b2 = 65; b2 <= 70; b2 = (byte) (b2 + 1)) {
            g[b2] = true;
        }
        for (byte b3 = 97; b3 <= 102; b3 = (byte) (b3 + 1)) {
            g[b3] = true;
        }
        g[13] = true;
        g[10] = true;
        g[9] = true;
        g[32] = true;
        g[43] = true;
        g[45] = true;
        g[46] = true;
        g[80] = true;
        g[112] = true;
        g[88] = true;
        g[120] = true;
    }

    @Override // luaj.LuaValue
    public LuaValue H() {
        byte[] bArr = this.b;
        int i = this.c;
        int i2 = this.d;
        boolean[] zArr = g;
        for (int i3 = 0; i3 < i2; i3++) {
            byte b = bArr[i + i3];
            if (b < 9 || !zArr[b]) {
                return u;
            }
        }
        try {
            return LuaValue.c(new String(bArr, i, i2), u);
        } catch (Throwable th) {
            return u;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0028, code lost:
        return luaj.LuaString.u;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public luaj.LuaValue g_(int r15) {
        /*
            r14 = this;
            byte[] r7 = r14.b
            int r2 = r14.c
            int r0 = r14.d
            int r0 = r0 + r2
        L7:
            if (r2 >= r0) goto L9d
            r1 = r7[r2]
            r3 = 32
            if (r1 > r3) goto L9d
            r1 = r7[r2]
            if (r1 > 0) goto L29
            r6 = r0
        L14:
            if (r2 >= r6) goto L24
            int r0 = r6 + (-1)
            r0 = r7[r0]
            r1 = 32
            if (r0 > r1) goto L24
            int r0 = r6 + (-1)
            r0 = r7[r0]
            if (r0 > 0) goto L2c
        L24:
            if (r2 != r6) goto L30
            luaj.LuaValue r0 = luaj.LuaString.u
        L28:
            return r0
        L29:
            int r2 = r2 + 1
            goto L7
        L2c:
            int r0 = r6 + (-1)
            r6 = r0
            goto L14
        L30:
            r8 = r7[r2]
            r0 = 45
            if (r8 == r0) goto L3a
            r0 = 43
            if (r8 != r0) goto L3c
        L3a:
            int r2 = r2 + 1
        L3c:
            if (r2 != r6) goto L41
            luaj.LuaValue r0 = luaj.LuaString.u
            goto L28
        L41:
            r0 = -9223372036854775808
            long r4 = (long) r15
            long r10 = r0 / r4
            r0 = 0
            r4 = r2
        L49:
            if (r4 < r6) goto L59
            r2 = 45
            if (r8 == r2) goto L98
            long r0 = -r0
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 >= 0) goto L98
            luaj.LuaValue r0 = luaj.LuaString.u
            goto L28
        L59:
            int r5 = r4 + 1
            r3 = r7[r4]
            r2 = 10
            if (r15 <= r2) goto L69
            r2 = 48
            if (r3 < r2) goto L74
            r2 = 57
            if (r3 > r2) goto L74
        L69:
            r2 = 48
        L6b:
            int r2 = r3 - r2
            if (r2 < 0) goto L71
            if (r2 < r15) goto L82
        L71:
            luaj.LuaValue r0 = luaj.LuaString.u
            goto L28
        L74:
            r2 = 65
            if (r3 < r2) goto L7f
            r2 = 90
            if (r3 > r2) goto L7f
            r2 = 55
            goto L6b
        L7f:
            r2 = 87
            goto L6b
        L82:
            int r3 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r3 <= 0) goto L89
            luaj.LuaValue r0 = luaj.LuaString.u
            goto L28
        L89:
            long r12 = (long) r15
            long r12 = r12 * r0
            long r2 = (long) r2
            long r2 = r12 - r2
            int r0 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r0 <= 0) goto L95
            luaj.LuaValue r0 = luaj.LuaString.u
            goto L28
        L95:
            r0 = r2
            r4 = r5
            goto L49
        L98:
            luaj.LuaLong r0 = luaj.LuaLong.b(r0)
            goto L28
        L9d:
            r6 = r0
            goto L14
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.LuaString.g_(int):luaj.LuaValue");
    }

    public LuaString P() {
        return new DeprecatedLuaString(this.b, this.c, this.d);
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class DeprecatedLuaString extends LuaString {
        public DeprecatedLuaString(byte[] bArr, int i, int i2) {
            super(bArr, i, i2, null);
        }

        @Override // luaj.LuaValue
        public boolean Q() {
            return true;
        }
    }
}
