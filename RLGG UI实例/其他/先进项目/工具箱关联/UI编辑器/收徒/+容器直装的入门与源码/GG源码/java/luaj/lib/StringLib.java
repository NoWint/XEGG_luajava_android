package luaj.lib;

import android.ext.ts;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Locale;
import luaj.LuaClosure;
import luaj.LuaDouble;
import luaj.LuaFunction;
import luaj.LuaLong;
import luaj.LuaNumber;
import luaj.LuaString;
import luaj.LuaTable;
import luaj.LuaValue;
import luaj.ap;
import luaj.o;

/* compiled from: src */
/* loaded from: classes.dex */
public class StringLib extends TwoArgFunction {
    private static final LuaString b = m("^$*+?.([%-");
    static final byte[] a = new byte[256];

    @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        luaTable.a("byte", new _byte());
        luaTable.a("char", new _char());
        luaTable.a("dump", new dump());
        luaTable.a("find", new find());
        luaTable.a("format", new format());
        luaTable.a("gmatch", new gmatch());
        luaTable.a("gsub", new gsub());
        luaTable.a("len", new len());
        luaTable.a("lower", new lower());
        luaTable.a("match", new match());
        luaTable.a("pack", new pack());
        luaTable.a("packsize", new packsize());
        luaTable.a("rep", new rep());
        luaTable.a("reverse", new reverse());
        luaTable.a("sub", new sub());
        luaTable.a("unpack", new unpack());
        luaTable.a("upper", new upper());
        luaValue2.a("string", luaTable);
        if (!luaValue2.j("package").F()) {
            luaValue2.j("package").j("loaded").a("string", luaTable);
        }
        if (LuaString.a == null) {
            LuaString.a = LuaValue.b(new LuaValue[]{D, luaTable});
        }
        return luaTable;
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class _byte extends VarArgFunction {
        _byte() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaString s = apVar.s(1);
            int i = s.d;
            int a = StringLib.a(apVar.d(2, 1), i);
            int a2 = StringLib.a(apVar.d(3, a), i);
            int i2 = a > 0 ? a : 1;
            if (a2 <= i) {
                i = a2;
            }
            if (i2 > i) {
                return x;
            }
            int i3 = (i - i2) + 1;
            if (i2 + i3 <= i) {
                f("string slice too long");
            }
            LuaValue[] luaValueArr = new LuaValue[i3];
            for (int i4 = 0; i4 < i3; i4++) {
                luaValueArr[i4] = d(s.b((i2 + i4) - 1));
            }
            return c(luaValueArr);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class _char extends VarArgFunction {
        _char() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            int j_ = apVar.j_();
            byte[] bArr = new byte[j_];
            int i = 0;
            int i2 = 1;
            while (i < j_) {
                int o = apVar.o(i2);
                if (o < 0 || o >= 256) {
                    a(i2, "invalid value for string.char [0; 255]: " + o);
                }
                bArr[i] = (byte) o;
                i++;
                i2++;
            }
            return LuaString.b(bArr);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class dump extends VarArgFunction {
        dump() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaFunction n = apVar.n(1);
            if (n instanceof LuaClosure) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    luaj.a.b.a(((LuaClosure) n).a, byteArrayOutputStream, apVar.a(2, false), apVar.a(3, false));
                    return LuaString.b(byteArrayOutputStream.toByteArray());
                } catch (IOException e) {
                    return f(e.getMessage());
                }
            }
            throw new o("unable to dump given function");
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class find extends VarArgFunction {
        find() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            return StringLib.b(apVar, true);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class format extends VarArgFunction {
        format() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaString s = apVar.s(1);
            int L = s.L();
            luaj.a aVar = new luaj.a(L);
            k kVar = null;
            int i = 0;
            int i2 = 1;
            while (i < L) {
                int i3 = i + 1;
                int b = s.b(i);
                switch (b) {
                    case 10:
                        aVar.a("\n");
                        i = i3;
                        break;
                    case 37:
                        if (i3 >= L) {
                            i = i3;
                            break;
                        } else if (s.b(i3) == 37) {
                            i = i3 + 1;
                            aVar.a((byte) 37);
                            break;
                        } else {
                            i2++;
                            k kVar2 = new k(apVar, s, i3);
                            i = kVar2.c + i3;
                            switch (kVar2.b) {
                                case 65:
                                case 69:
                                case 71:
                                case 97:
                                case 101:
                                case 102:
                                case 103:
                                    kVar2.a(aVar, apVar.m(i2));
                                    continue;
                                case 88:
                                case 100:
                                case 105:
                                case 111:
                                case 117:
                                case 120:
                                    kVar2.a(aVar, apVar.p(i2));
                                    continue;
                                case 99:
                                    kVar2.a(aVar, (byte) apVar.o(i2));
                                    continue;
                                case 113:
                                    LuaValue c = apVar.c(i2);
                                    switch (c.e_()) {
                                        case 0:
                                        case 1:
                                            aVar.a(c.d_());
                                            continue;
                                            continue;
                                        case 2:
                                        default:
                                            a(i2, "string.format", "'" + c + "': value has no literal form");
                                            continue;
                                        case 3:
                                            if (c instanceof LuaDouble) {
                                                if (kVar == null) {
                                                    kVar = new k(apVar, LuaString.c("%a"), 1);
                                                }
                                                kVar.a(aVar, c.x());
                                                break;
                                            } else if (c instanceof LuaLong) {
                                                if (c.q() == Long.MIN_VALUE) {
                                                    aVar.a("0x8000000000000000");
                                                    break;
                                                } else {
                                                    aVar.b(c);
                                                    break;
                                                }
                                            } else {
                                                aVar.b(c);
                                                continue;
                                            }
                                        case 4:
                                            StringLib.a(aVar, apVar.s(i2));
                                            continue;
                                    }
                                case 115:
                                    LuaString y = BaseLib.y(apVar.c(i2));
                                    if (kVar2.a == -1 && y.L() >= 100) {
                                        aVar.a(y);
                                        break;
                                    } else {
                                        kVar2.a(aVar, y.z());
                                        continue;
                                    }
                                default:
                                    f("invalid option '%" + ((char) kVar2.b) + "' to 'string.format'");
                                    continue;
                            }
                        }
                    default:
                        aVar.a((byte) b);
                        i = i3;
                        break;
                }
            }
            return aVar.b();
        }
    }

    static void a(luaj.a aVar, LuaString luaString) {
        aVar.a((byte) 34);
        int L = luaString.L();
        for (int i = 0; i < L; i++) {
            int b2 = luaString.b(i);
            switch (b2) {
                case 10:
                case 34:
                case 92:
                    aVar.a((byte) 92);
                    aVar.a((byte) b2);
                    break;
                default:
                    if (b2 <= 31 || b2 == 127) {
                        aVar.a((byte) 92);
                        if (i + 1 == L || luaString.b(i + 1) < 48 || luaString.b(i + 1) > 57) {
                            aVar.a(Integer.toString(b2));
                            break;
                        } else {
                            aVar.a((byte) 48);
                            aVar.a((byte) ((char) ((b2 / 10) + 48)));
                            aVar.a((byte) ((char) ((b2 % 10) + 48)));
                            break;
                        }
                    } else {
                        aVar.a((byte) b2);
                        break;
                    }
            }
        }
        aVar.a((byte) 34);
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class gmatch extends VarArgFunction {
        gmatch() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            return new GMatchAux(apVar, apVar.s(1), apVar.s(2));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class GMatchAux extends VarArgFunction {
        private final int a;
        private final l b;
        private int c = 0;
        private int d = -1;

        public GMatchAux(ap apVar, LuaString luaString, LuaString luaString2) {
            this.a = luaString.L();
            this.b = new l(apVar, luaString, luaString2);
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            while (this.c <= this.a) {
                this.b.a();
                int b = this.b.b(this.c, 0);
                if (b < 0 || b == this.d) {
                    this.c++;
                } else {
                    int i = this.c;
                    this.c = b;
                    this.d = b;
                    return this.b.a(true, i, b);
                }
            }
            return u;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class gsub extends VarArgFunction {
        gsub() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            int i;
            int i2;
            LuaString s = apVar.s(1);
            int L = s.L();
            LuaString s2 = apVar.s(2);
            int i3 = -1;
            LuaValue c = apVar.c(3);
            int d = apVar.d(4, L + 1);
            boolean z = s2.L() > 0 && s2.f_(0) == 94;
            luaj.a aVar = new luaj.a(L);
            l lVar = new l(apVar, s, s2);
            int i4 = 0;
            int i5 = 0;
            while (i5 < d) {
                lVar.a();
                int b = lVar.b(i4, z ? 1 : 0);
                if (b != -1 && b != i3) {
                    i2 = i5 + 1;
                    lVar.a(aVar, i4, b, c);
                    i4 = b;
                    i3 = b;
                } else if (i4 >= L) {
                    break;
                } else {
                    aVar.a((byte) s.b(i4));
                    i2 = i5;
                    i4++;
                }
                if (z) {
                    i = i2;
                    break;
                }
                i5 = i2;
            }
            i = i5;
            aVar.a(s.a(i4, L));
            return b((LuaValue) aVar.b(), (ap) d(i));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class len extends OneArgFunction {
        len() {
        }

        @Override // luaj.lib.OneArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return luaValue.z().K();
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class lower extends OneArgFunction {
        lower() {
        }

        @Override // luaj.lib.OneArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return m(luaValue.y().toLowerCase(Locale.US));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class match extends VarArgFunction {
        match() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            return StringLib.b(apVar, false);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class rep extends VarArgFunction {
        rep() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaString s = apVar.s(1);
            int o = apVar.o(2);
            if (o <= 0) {
                return ad;
            }
            LuaString a = apVar.a(3, ad);
            int L = s.L();
            int L2 = a.L();
            if (L + L2 < L || L + L2 > Integer.MAX_VALUE / o) {
                throw new o("resulting string too large");
            }
            byte[] bArr = new byte[((L + L2) * (o - 1)) + L];
            byte[] bArr2 = s.b;
            int i = s.c;
            byte[] bArr3 = a.b;
            int i2 = a.c;
            int i3 = 0;
            while (true) {
                int i4 = o - 1;
                if (o > 1) {
                    System.arraycopy(bArr2, i, bArr, i3, L);
                    i3 += L;
                    if (L2 > 0) {
                        System.arraycopy(bArr3, i2, bArr, i3, L2);
                        i3 += L2;
                        o = i4;
                    } else {
                        o = i4;
                    }
                } else {
                    System.arraycopy(bArr2, i, bArr, i3, L);
                    return LuaString.b(bArr);
                }
            }
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class reverse extends OneArgFunction {
        reverse() {
        }

        @Override // luaj.lib.OneArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            LuaString z = luaValue.z();
            int L = z.L();
            if (L == 0) {
                return ad;
            }
            byte[] bArr = new byte[L];
            byte[] bArr2 = z.b;
            int i = L - 1;
            int i2 = z.c + L;
            int i3 = z.c;
            while (i3 < i2) {
                bArr[i] = bArr2[i3];
                i3++;
                i--;
            }
            return LuaString.b(bArr);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class sub extends VarArgFunction {
        sub() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaString s = apVar.s(1);
            int L = s.L();
            int a = StringLib.a(apVar.o(2), L);
            int a2 = StringLib.a(apVar.d(3, -1), L);
            int i = a >= 1 ? a : 1;
            if (a2 <= L) {
                L = a2;
            }
            return i <= L ? s.a(i - 1, L) : ad;
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class upper extends OneArgFunction {
        upper() {
        }

        @Override // luaj.lib.OneArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public LuaValue a(LuaValue luaValue) {
            return m(luaValue.y().toUpperCase(Locale.US));
        }
    }

    static ap b(ap apVar, boolean z) {
        int i;
        boolean z2;
        int a2;
        LuaString s = apVar.s(1);
        LuaString s2 = apVar.s(2);
        int L = s.L();
        int a3 = a(apVar.d(3, 1), L);
        if (a3 < 1) {
            a3 = 1;
        } else if (a3 > L + 1) {
            return u;
        }
        int i2 = a3 - 1;
        if (z && (apVar.c(4).i_() || s2.e(b) == -1)) {
            if (s.a(s2, i2) != -1) {
                return b((LuaValue) d(a2 + 1), (ap) d(a2 + s2.L()));
            }
        } else {
            l lVar = new l(apVar, s, s2);
            if (s2.L() <= 0 || s2.b(0) != 94) {
                i = 0;
                z2 = false;
            } else {
                i = 1;
                z2 = true;
            }
            while (true) {
                lVar.a();
                int b2 = lVar.b(i2, i);
                if (b2 != -1) {
                    if (z) {
                        return a(d(i2 + 1), d(b2), lVar.a(false, i2, b2));
                    }
                    return lVar.a(true, i2, b2);
                }
                int i3 = i2 + 1;
                if (i2 >= L || z2) {
                    break;
                }
                i2 = i3;
            }
        }
        return u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, int i2) {
        return i >= 0 ? i : i2 + i + 1;
    }

    static {
        for (int i = 0; i < 128; i++) {
            char c = (char) i;
            a[i] = (byte) (((c < ' ' || c == 127) ? 64 : 0) | (Character.isLowerCase(c) ? 2 : 0) | (Character.isDigit(c) ? 8 : 0) | (Character.isUpperCase(c) ? 4 : 0));
            if ((c >= 'a' && c <= 'f') || ((c >= 'A' && c <= 'F') || (c >= '0' && c <= '9'))) {
                byte[] bArr = a;
                bArr[i] = (byte) (bArr[i] | Byte.MIN_VALUE);
            }
            if ((c >= '!' && c <= '/') || ((c >= ':' && c <= '@') || ((c >= '[' && c <= '`') || (c >= '{' && c <= '~')))) {
                byte[] bArr2 = a;
                bArr2[i] = (byte) (bArr2[i] | 16);
            }
            if ((a[i] & 6) != 0) {
                byte[] bArr3 = a;
                bArr3[i] = (byte) (bArr3[i] | 1);
            }
        }
        a[32] = 32;
        byte[] bArr4 = a;
        bArr4[13] = (byte) (bArr4[13] | 32);
        byte[] bArr5 = a;
        bArr5[10] = (byte) (bArr5[10] | 32);
        byte[] bArr6 = a;
        bArr6[9] = (byte) (bArr6[9] | 32);
        byte[] bArr7 = a;
        bArr7[11] = (byte) (bArr7[11] | 32);
        byte[] bArr8 = a;
        bArr8[12] = (byte) (bArr8[12] | 32);
    }

    static int a(m mVar, int i, boolean z) {
        char charAt;
        String str = mVar.d;
        int length = str.length();
        int i2 = mVar.e;
        if (i2 < length && (charAt = str.charAt(i2)) <= '9' && charAt >= '0') {
            i = 0;
            do {
                i = (i * 10) + (charAt - '0');
                i2++;
                if (i2 >= length || (charAt = str.charAt(i2)) > '9' || charAt < '0') {
                    break;
                }
            } while (i <= 214748363);
            mVar.e = i2;
        }
        if (z && (i > 8 || i <= 0)) {
            f(ts.a("integral size (%d) out of limits [1,%d] at pos %d", Integer.valueOf(i), 8, Integer.valueOf(mVar.e)));
        }
        return i;
    }

    static byte a(m mVar) {
        int i;
        String str = mVar.d;
        int i2 = mVar.e;
        mVar.e = i2 + 1;
        char charAt = str.charAt(i2);
        mVar.f = charAt;
        try {
            switch (charAt) {
                case ' ':
                    break;
                case '!':
                    mVar.c = a(mVar, (int) mVar.a, true);
                    break;
                case '<':
                case '=':
                    mVar.b = true;
                    break;
                case '>':
                    mVar.b = false;
                    break;
                case 'B':
                    mVar.i = 1;
                    if (charAt == 'c') {
                    }
                    mVar.g = 1;
                    return (byte) 2;
                case 'H':
                    mVar.i = 2;
                    mVar.g = charAt != 'c' ? (byte) 2 : 1;
                    return (byte) 2;
                case 'I':
                    int a2 = a(mVar, 4, true);
                    mVar.i = a2;
                    mVar.g = charAt != 'c' ? a2 >= 8 ? 4 : a2 : 1;
                    return (byte) 2;
                case 'J':
                    mVar.i = 8;
                    mVar.g = charAt != 'c' ? (byte) 4 : 1;
                    return (byte) 2;
                case 'L':
                    mVar.i = 8;
                    mVar.g = charAt != 'c' ? (byte) 4 : 1;
                    return (byte) 2;
                case 'T':
                    byte b2 = mVar.a;
                    mVar.i = b2;
                    mVar.g = charAt != 'c' ? b2 >= 8 ? 4 : b2 : 1;
                    return (byte) 2;
                case 'X':
                    mVar.i = 0;
                    mVar.g = charAt != 'c' ? 0 : 1;
                    return (byte) 8;
                case 'b':
                    mVar.i = 1;
                    if (charAt == 'c') {
                    }
                    mVar.g = 1;
                    return (byte) 1;
                case 'c':
                    i = a(mVar, -1, false);
                    if (i == -1) {
                        try {
                            f("missing size for format option 'c' at pos " + mVar.e);
                        } catch (Throwable th) {
                            th = th;
                            mVar.i = i;
                            mVar.g = charAt != 'c' ? i >= 8 ? 4 : i : 1;
                            throw th;
                        }
                    }
                    mVar.i = i;
                    mVar.g = charAt != 'c' ? i >= 8 ? 4 : i : 1;
                    return (byte) 4;
                case 'd':
                    mVar.i = 8;
                    mVar.g = charAt != 'c' ? (byte) 4 : 1;
                    return (byte) 9;
                case 'f':
                    mVar.i = 4;
                    mVar.g = charAt != 'c' ? (byte) 4 : 1;
                    return (byte) 3;
                case 'h':
                    mVar.i = 2;
                    mVar.g = charAt == 'c' ? 1 : 2;
                    return (byte) 1;
                case 'i':
                    int a3 = a(mVar, 4, true);
                    mVar.i = a3;
                    if (charAt == 'c') {
                        r2 = 1;
                    } else if (a3 < 8) {
                        r2 = a3;
                    }
                    mVar.g = r2;
                    return (byte) 1;
                case 'j':
                    mVar.i = 8;
                    mVar.g = charAt == 'c' ? 1 : 4;
                    return (byte) 1;
                case 'l':
                    mVar.i = 8;
                    mVar.g = charAt == 'c' ? 1 : 4;
                    return (byte) 1;
                case 'n':
                    mVar.i = 9;
                    mVar.g = charAt != 'c' ? (byte) 4 : 1;
                    return (byte) 10;
                case 's':
                    int a4 = a(mVar, (int) mVar.a, true);
                    mVar.i = a4;
                    mVar.g = charAt != 'c' ? a4 >= 8 ? 4 : a4 : 1;
                    return (byte) 5;
                case 'x':
                    mVar.i = 1;
                    if (charAt == 'c') {
                    }
                    mVar.g = 1;
                    return (byte) 7;
                case 'z':
                    mVar.i = 0;
                    mVar.g = charAt != 'c' ? 0 : 1;
                    return (byte) 6;
                default:
                    f(ts.a("invalid format option '%c' at pos %d", Character.valueOf(charAt), Integer.valueOf(mVar.e)));
                    break;
            }
            mVar.i = 0;
            mVar.g = charAt != 'c' ? (byte) 0 : 1;
            return (byte) 0;
        } catch (Throwable th2) {
            th = th2;
            i = 0;
        }
    }

    static byte a(m mVar, int i) {
        byte a2 = a(mVar);
        int i2 = mVar.g;
        if (a2 == 8) {
            if (mVar.d.length() <= mVar.e) {
                a(1, "no next option for option 'X' at pos " + mVar.e);
            }
            if (a(mVar) == 4 || (i2 = mVar.g) == 0) {
                a(1, ts.a("invalid next option '%c' for option 'X' at pos %d", Character.valueOf(mVar.f), Integer.valueOf(mVar.e)));
            }
            mVar.i = 0;
        }
        if (i2 <= 1 || a2 == 4) {
            mVar.h = 0;
        } else {
            if (i2 > mVar.c) {
                i2 = mVar.c;
                mVar.g = i2;
            }
            if (((i2 - 1) & i2) != 0) {
                a(1, ts.a("format option '%c' asks for alignment not power of 2 at pos %d", Character.valueOf(mVar.f), Integer.valueOf(mVar.e)));
            }
            mVar.h = (i2 - 1) & (i2 - ((i2 - 1) & i));
        }
        return a2;
    }

    static void a(m mVar, luaj.a aVar, long j) {
        mVar.k.order(mVar.b ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN).putLong(0, j);
        aVar.a(mVar.j, mVar.b ? 0 : 8 - mVar.i, mVar.i);
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class pack extends VarArgFunction {
        pack() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            String r = apVar.r(1);
            m mVar = new m(r);
            luaj.a aVar = new luaj.a();
            int i = 1;
            int i2 = 0;
            int length = r.length();
            while (mVar.e < length) {
                byte a = StringLib.a(mVar, i2);
                int i3 = mVar.h;
                int i4 = mVar.i;
                i2 += i3 + i4;
                if (i3 > 0) {
                    aVar.a(new byte[i3], 0, i3);
                }
                i++;
                switch (a) {
                    case 1:
                    case 2:
                        long p = apVar.p(i);
                        if (i4 < 8) {
                            if (a == 1) {
                                long j = 1 << ((i4 * 8) - 1);
                                a((-j) <= p && p < j, i, "integer overflow");
                            } else {
                                a(((((1 << (i4 * 8)) - 1) ^ (-1)) & p) == 0, i, "unsigned overflow");
                            }
                        }
                        StringLib.a(mVar, aVar, p);
                        continue;
                        break;
                    case 3:
                        StringLib.a(mVar, aVar, Float.floatToRawIntBits((float) apVar.m(i)));
                        continue;
                    case 4:
                        LuaString s = apVar.s(i);
                        int L = s.L();
                        a(L <= i4, i, "string longer (" + L + ") than given size (" + i4 + ")");
                        aVar.a(s);
                        int i5 = i4 - L;
                        if (i5 > 0) {
                            aVar.a(new byte[i5], 0, i5);
                        } else {
                            continue;
                        }
                    case 5:
                        LuaString s2 = apVar.s(i);
                        int L2 = s2.L();
                        a(i4 >= mVar.a || ((long) L2) < (1 << (i4 * 8)), i, "string length (" + L2 + ") does not fit in given size (" + i4 + " bytes)");
                        StringLib.a(mVar, aVar, L2);
                        aVar.a(s2);
                        i2 += L2;
                        continue;
                        break;
                    case 6:
                        LuaString s3 = apVar.s(i);
                        int L3 = s3.L();
                        a(s3.d_().indexOf(0) == -1, i, "string contains zeros");
                        aVar.a(s3);
                        aVar.a((byte) 0);
                        i2 += L3 + 1;
                        continue;
                    case 7:
                        aVar.a((byte) 0);
                        break;
                    case 9:
                        StringLib.a(mVar, aVar, Double.doubleToRawLongBits(apVar.m(i)));
                        continue;
                    case 10:
                        LuaNumber q = apVar.q(i);
                        mVar.i = 8;
                        if (q instanceof LuaLong) {
                            StringLib.a(mVar, aVar, q.q());
                        } else {
                            StringLib.a(mVar, aVar, Double.doubleToRawLongBits(q.o()));
                        }
                        mVar.i = 1;
                        StringLib.a(mVar, aVar, q instanceof LuaLong ? 1 : 0);
                        continue;
                }
                i--;
            }
            return aVar.b();
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class packsize extends VarArgFunction {
        packsize() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            String r = apVar.r(1);
            m mVar = new m(r);
            int length = r.length();
            int i = 0;
            while (mVar.e < length) {
                byte a = StringLib.a(mVar, i);
                int i2 = mVar.h + mVar.i;
                a(i <= Integer.MAX_VALUE - i2, 1, "format result too large at pos " + mVar.e);
                i += i2;
                switch (a) {
                    case 5:
                    case 6:
                        a(1, ts.a("variable-length format option '%c' at pos %d", Character.valueOf(mVar.f), Integer.valueOf(mVar.e)));
                        break;
                }
            }
            return LuaValue.d(i);
        }
    }

    static long a(m mVar, LuaString luaString, int i, boolean z) {
        int i2;
        int i3 = mVar.i;
        if (i3 == 1) {
            long j = luaString.b[luaString.c + i];
            return !z ? j & 255 : j;
        }
        byte[] bArr = mVar.j;
        if (i3 >= 8) {
            i2 = 0;
        } else if (mVar.b) {
            int i4 = i3 - 1;
            while (true) {
                i4++;
                if (i4 >= 8) {
                    break;
                }
                bArr[i4] = 0;
            }
            i2 = 0;
        } else {
            i2 = 8 - i3;
            int i5 = i2;
            while (true) {
                i5--;
                if (i5 < 0) {
                    break;
                }
                bArr[i5] = 0;
            }
        }
        luaString.a(i, bArr, i2, i3);
        long j2 = mVar.k.order(mVar.b ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN).getLong(0);
        if (i3 < 8 && z) {
            long j3 = 1 << ((i3 * 8) - 1);
            return (j2 ^ j3) - j3;
        }
        return j2;
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class unpack extends VarArgFunction {
        unpack() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            int i;
            String r = apVar.r(1);
            LuaString s = apVar.s(2);
            int L = s.L();
            int a = StringLib.a(apVar.d(3, 1), L) - 1;
            a(a >= 0 && a <= L, 3, "initial position (" + (a + 1) + ") out of string (length = " + L + ")");
            m mVar = new m(r);
            int length = r.length();
            ArrayList arrayList = new ArrayList();
            int i2 = a;
            while (mVar.e < length) {
                byte a2 = StringLib.a(mVar, i2);
                int i3 = mVar.h;
                int i4 = mVar.i;
                if (i2 + i3 + i4 > L) {
                    a(2, ts.a("data string too short (%d) for option '%c' (need %d) at pos %d", Integer.valueOf(L), Character.valueOf(mVar.f), Integer.valueOf(i2 + i3 + i4), Integer.valueOf(mVar.e)));
                }
                int i5 = i3 + i2;
                switch (a2) {
                    case 1:
                    case 2:
                        arrayList.add(LuaLong.b(StringLib.a(mVar, s, i5, a2 == 1)));
                        i = i5;
                        break;
                    case 3:
                        arrayList.add(LuaDouble.a(Float.intBitsToFloat((int) StringLib.a(mVar, s, i5, false))));
                        i = i5;
                        break;
                    case 4:
                        arrayList.add(s.a(i5, i5 + i4));
                        i = i5;
                        break;
                    case 5:
                        int a3 = (int) StringLib.a(mVar, s, i5, false);
                        a((i5 + a3) + i4 <= L, 2, "data string too short (" + L + " but need " + (i5 + a3 + i4) + ") at pos " + mVar.e);
                        arrayList.add(s.a(i5 + i4, i5 + i4 + a3));
                        i = i5 + a3;
                        break;
                    case 6:
                        int a4 = s.a((byte) 0, i5);
                        a(a4 != -1, 2, ts.a("zero char not found for option '%c' at pos %d", Character.valueOf(mVar.f), Integer.valueOf(mVar.e)));
                        arrayList.add(s.a(i5, a4));
                        i = a4 + 1;
                        break;
                    case 7:
                    case 8:
                    default:
                        i = i5;
                        break;
                    case 9:
                        arrayList.add(LuaDouble.a(Double.longBitsToDouble(StringLib.a(mVar, s, i5, false))));
                        i = i5;
                        break;
                    case 10:
                        mVar.i = 8;
                        long a5 = StringLib.a(mVar, s, i5, false);
                        mVar.i = 1;
                        if (StringLib.a(mVar, s, i5 + 8, false) == 1) {
                            arrayList.add(LuaLong.b(a5));
                            i = i5;
                            break;
                        } else {
                            arrayList.add(LuaDouble.a(Double.longBitsToDouble(a5)));
                            i = i5;
                            break;
                        }
                }
                i2 = i + i4;
            }
            arrayList.add(LuaValue.d(i2 + 1));
            return c((LuaValue[]) arrayList.toArray(new LuaValue[arrayList.size()]));
        }
    }
}
