package luaj.lib;

import java.util.Arrays;
import luaj.LuaString;
import luaj.LuaTable;
import luaj.LuaValue;
import luaj.ap;
import luaj.o;

/* compiled from: src */
/* loaded from: classes.dex */
public class Utf8Lib extends TwoArgFunction {
    @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        LuaTable luaTable = new LuaTable();
        luaTable.a("char", new _char());
        luaTable.a("charpattern", LuaString.b(new byte[]{91, 0, 45, Byte.MAX_VALUE, -62, 45, -12, 93, 91, Byte.MIN_VALUE, 45, -65, 93, 42}));
        luaTable.a("codes", new codes());
        luaTable.a("codepoint", new codepoint());
        luaTable.a("len", new len());
        luaTable.a("offset", new offset());
        luaValue2.a("utf8", luaTable);
        if (!luaValue2.j("package").F()) {
            luaValue2.j("package").j("loaded").a("utf8", luaTable);
        }
        return u;
    }

    static int a(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = 127;
        int i5 = bArr[i] & 255;
        if (i5 <= 127) {
            i4 = -1;
            i3 = 1;
        } else if (i5 < 192) {
            return 1342177280 | i;
        } else {
            if (i5 < 224) {
                i3 = 2;
                i5 ^= 192;
            } else if (i5 < 240) {
                i3 = 3;
                i5 ^= 224;
                i4 = 2047;
            } else if (i5 >= 248) {
                return 1342177280 | i;
            } else {
                i3 = 4;
                i5 ^= 240;
                i4 = 65535;
            }
        }
        for (int i6 = 1; i6 < i3; i6++) {
            if (i6 >= i2) {
                return 1342177280 | i;
            }
            int i7 = bArr[i + i6] & 255;
            if ((i7 & 192) != 128) {
                return 1342177280 | i;
            }
            i5 = (i5 << 6) | (i7 & 63);
        }
        return (i5 > 1114111 || i5 <= i4) ? 1342177280 | i : (i3 << 28) | i5;
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class _char extends VarArgFunction {
        _char() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            int i;
            int i2;
            int j_ = apVar.j_();
            if (j_ == 0) {
                return ad;
            }
            byte[] bArr = new byte[j_ * 4];
            int i3 = 1;
            int i4 = 0;
            while (i3 <= j_) {
                int o = apVar.o(i3);
                if (o < 0 || o > 1114111) {
                    a(i3, g_(), "'" + o + "': value out of range [0; 1114111]");
                }
                if (o <= 127) {
                    i2 = 0;
                    i = 1;
                } else if (o <= 2047) {
                    i = 2;
                    i2 = 192;
                } else if (o <= 65535) {
                    i = 3;
                    i2 = 224;
                } else {
                    i = 4;
                    i2 = 240;
                }
                for (int i5 = i - 1; i5 > 0; i5--) {
                    bArr[i4 + i5] = (byte) ((o & 63) | 128);
                    o >>= 6;
                }
                bArr[i4] = (byte) (i2 | o);
                i3++;
                i4 = i + i4;
            }
            return LuaString.b(i4 < bArr.length ? Arrays.copyOf(bArr, i4) : bArr, 0, i4);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class codes extends VarArgFunction {
        codes() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            return new CodesAux(apVar.s(1));
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class CodesAux extends VarArgFunction {
        private int a = 0;
        private final LuaString b;

        public CodesAux(LuaString luaString) {
            this.b = luaString;
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            int i = this.a;
            int i2 = this.b.c + this.b.d;
            if (i >= i2) {
                return u;
            }
            int a = Utf8Lib.a(this.b.b, this.b.c + i, i2);
            int i3 = a >> 28;
            int i4 = a & 268435455;
            if (i3 == 5) {
                throw Utf8Lib.e((i4 - this.b.c) + 1);
            }
            this.a = i3 + i;
            return b((LuaValue) d(i + 1), (ap) d(i4));
        }
    }

    static o e(int i) {
        return new o("invalid UTF-8 code at " + (i + 1) + " byte");
    }

    static void a(String str, int i, int i2, int i3) {
        a(i, str, "'" + i2 + "': position out of range [1; " + i3 + "]");
    }

    static void b(String str, int i, int i2, int i3) {
        a(i, str, "'" + i2 + "': final position out of string length [" + i3 + "]");
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class codepoint extends VarArgFunction {
        codepoint() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            LuaString s = apVar.s(1);
            int i = s.d;
            int a = StringLib.a(apVar.d(2, 1), i);
            int a2 = StringLib.a(apVar.d(3, a), i);
            if (a < 1 || a > i + 1) {
                Utf8Lib.a(g_(), 2, a, i);
            }
            if (a2 > i) {
                Utf8Lib.b(g_(), 3, a2, i);
            }
            if (a > a2) {
                return x;
            }
            LuaValue[] luaValueArr = new LuaValue[(a2 - a) + 1];
            int i2 = 0;
            byte[] bArr = s.b;
            int i3 = s.c;
            int i4 = s.c + s.d;
            int i5 = a - 1;
            while (i5 < a2) {
                int a3 = Utf8Lib.a(bArr, i3 + i5, i4);
                int i6 = a3 >> 28;
                int i7 = 268435455 & a3;
                if (i6 == 5) {
                    throw Utf8Lib.e((i7 - i3) + 1);
                }
                i5 += i6;
                luaValueArr[i2] = d(i7);
                i2++;
            }
            if (i2 == 0) {
                return x;
            }
            if (i2 < luaValueArr.length) {
                luaValueArr = (LuaValue[]) Arrays.copyOf(luaValueArr, i2);
            }
            return c(luaValueArr);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class len extends VarArgFunction {
        len() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            int a;
            LuaString s = apVar.s(1);
            int i = s.d;
            int a2 = StringLib.a(apVar.d(2, 1), i);
            int a3 = StringLib.a(apVar.d(3, -1), i);
            if (a2 < 1 || a2 > i + 1) {
                Utf8Lib.a(g_(), 2, a2, i);
            }
            if (a3 > i) {
                Utf8Lib.b(g_(), 3, a3, i);
            }
            if (a2 > a3) {
                return y;
            }
            int i2 = 0;
            byte[] bArr = s.b;
            int i3 = s.c;
            int i4 = s.c + s.d;
            int i5 = a2 - 1;
            while (i5 < a3) {
                int a4 = Utf8Lib.a(bArr, i3 + i5, i4) >> 28;
                if (a4 == 5) {
                    return b(u, (ap) d(((268435455 & a) - i3) + 1));
                }
                i5 += a4;
                i2++;
            }
            return d(i2);
        }
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    final class offset extends VarArgFunction {
        offset() {
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            int i;
            LuaString s = apVar.s(1);
            int i2 = s.d;
            int o = apVar.o(2);
            int a = StringLib.a(apVar.d(3, o >= 0 ? 1 : i2 + 1), i2);
            if (a < 1 || a > i2 + 1) {
                Utf8Lib.a(g_(), 3, a, i2);
            }
            byte[] bArr = s.b;
            int i3 = s.c;
            int i4 = a - 1;
            if (o == 0) {
                while (i4 > 0 && i4 < i2) {
                    if ((bArr[i3 + i4] & 192) != 128) {
                        i = o;
                        break;
                    }
                    i4--;
                }
                i = o;
            } else if (i4 < i2 && (bArr[i3 + i4] & 192) == 128) {
                throw new o("initial position (" + i4 + ") is a continuation byte (0x" + Integer.toHexString(bArr[i4 + i3] & 255) + ")");
            } else {
                if (o < 0) {
                    i = o;
                    while (i < 0 && i4 > 0) {
                        do {
                            i4--;
                            if (i4 <= 0 || i4 >= i2) {
                                i++;
                            }
                        } while ((bArr[i3 + i4] & 192) == 128);
                        i++;
                    }
                } else {
                    i = o - 1;
                    while (i > 0 && i4 < i2) {
                        do {
                            i4++;
                            if (i4 < 0 || i4 >= i2) {
                                i--;
                            }
                        } while ((bArr[i3 + i4] & 192) == 128);
                        i--;
                    }
                }
            }
            return i == 0 ? d(i4 + 1) : u;
        }
    }
}
