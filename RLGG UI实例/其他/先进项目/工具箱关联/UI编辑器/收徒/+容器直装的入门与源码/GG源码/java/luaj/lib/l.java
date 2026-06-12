package luaj.lib;

import luaj.LuaString;
import luaj.LuaValue;
import luaj.ap;

/* compiled from: src */
/* loaded from: classes.dex */
class l {
    final LuaString b;
    final LuaString c;
    final ap d;
    int e = 0;
    int[] f = new int[32];
    int[] g = new int[32];
    int a = 200;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(ap apVar, LuaString luaString, LuaString luaString2) {
        this.b = luaString;
        this.c = luaString2;
        this.d = apVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.e = 0;
        this.a = 200;
    }

    private void a(luaj.a aVar, LuaString luaString, int i, int i2) {
        String str;
        int L = luaString.L();
        int i3 = 0;
        while (i3 < L) {
            byte b = (byte) luaString.b(i3);
            if (b != 37) {
                aVar.a(b);
            } else {
                int i4 = i3 + 1;
                byte b2 = (byte) (i4 < L ? luaString.b(i4) : 0);
                if (!Character.isDigit((char) b2)) {
                    if (b2 != 37) {
                        StringBuilder sb = new StringBuilder("invalid use of '%' in replacement string: after '%' must be '0'-'9' or '%', but found ");
                        if (i4 < L) {
                            str = "symbol '" + ((char) b2) + "' with code " + ((int) b2) + " at pos " + (i4 + 1);
                        } else {
                            str = "end of string";
                        }
                        StringLib.f(sb.append(str).toString());
                    }
                    aVar.a(b2);
                    i3 = i4;
                } else if (b2 == 48) {
                    aVar.a(this.b.a(i, i2));
                    i3 = i4;
                } else {
                    aVar.a(f(b2 - 49, i, i2).t());
                    i3 = i4;
                }
            }
            i3++;
        }
    }

    public void a(luaj.a aVar, int i, int i2, LuaValue luaValue) {
        LuaString w;
        switch (luaValue.e_()) {
            case 3:
            case 4:
                a(aVar, luaValue.t(), i, i2);
                return;
            case 5:
                w = luaValue.w(f(0, i, i2));
                break;
            case 6:
                w = luaValue.a_(a(true, i, i2)).g();
                break;
            default:
                StringLib.f("bad argument: string/function/table expected");
                return;
        }
        if (!w.i_()) {
            w = this.b.a(i, i2);
        } else if (!w.J()) {
            StringLib.f("invalid replacement value (a " + w.f_() + ')');
        }
        aVar.a(w.t());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ap a(boolean z, int i, int i2) {
        int i3 = (this.e == 0 && z) ? 1 : this.e;
        switch (i3) {
            case 0:
                return StringLib.x;
            case 1:
                return f(0, i, i2);
            default:
                LuaValue[] luaValueArr = new LuaValue[i3];
                for (int i4 = 0; i4 < i3; i4++) {
                    luaValueArr[i4] = f(i4, i, i2);
                }
                return StringLib.c(luaValueArr);
        }
    }

    private LuaValue f(int i, int i2, int i3) {
        if (i >= this.e) {
            if (i == 0) {
                return this.b.a(i2, i3);
            }
            return StringLib.f("invalid capture index %" + (i + 1));
        }
        int i4 = this.g[i];
        if (i4 == -1) {
            return StringLib.f("unfinished capture");
        }
        if (i4 == -2) {
            return StringLib.d(this.f[i] + 1);
        }
        int i5 = this.f[i];
        return this.b.a(i5, i4 + i5);
    }

    private int b(int i) {
        int i2 = i - 49;
        if (i2 < 0 || i2 >= this.e || this.g[i2] == -1) {
            StringLib.f("invalid capture index %" + (i2 + 1));
        }
        return i2;
    }

    private int b() {
        for (int i = this.e - 1; i >= 0; i--) {
            if (this.g[i] == -1) {
                return i;
            }
        }
        StringLib.f("invalid pattern capture");
        return 0;
    }

    int a(int i) {
        int i2 = i + 1;
        switch (this.c.b(i)) {
            case 37:
                if (i2 == this.c.L()) {
                    StringLib.f("malformed pattern (ends with '%')");
                }
                return i2 + 1;
            case 91:
                if (i2 != this.c.L() && this.c.b(i2) == 94) {
                    i2++;
                }
                while (true) {
                    if (i2 == this.c.L()) {
                        StringLib.f("malformed pattern (missing ']')");
                    }
                    int i3 = i2 + 1;
                    i2 = (this.c.b(i2) != 37 || i3 >= this.c.L()) ? i3 : i3 + 1;
                    if (i2 != this.c.L() && this.c.b(i2) == 93) {
                        return i2 + 1;
                    }
                }
                break;
            default:
                return i2;
        }
    }

    static boolean a(int i, int i2) {
        boolean z;
        char lowerCase = Character.toLowerCase((char) i2);
        byte b = StringLib.a[i];
        switch (lowerCase) {
            case 'a':
                if ((b & 1) == 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 'b':
            case 'e':
            case 'f':
            case 'h':
            case 'i':
            case 'j':
            case 'k':
            case 'm':
            case 'n':
            case 'o':
            case 'q':
            case 'r':
            case 't':
            case 'v':
            case 'y':
            default:
                return i2 == i;
            case 'c':
                if ((b & 64) == 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 'd':
                if ((b & 8) == 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 'g':
                if ((b & 25) == 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 'l':
                if ((b & 2) == 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 'p':
                if ((b & 16) == 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 's':
                if ((b & 32) == 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 'u':
                if ((b & 4) == 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 'w':
                if ((b & 9) == 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 'x':
                if ((b & Byte.MIN_VALUE) == 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
            case 'z':
                if (i != 0) {
                    z = false;
                    break;
                } else {
                    z = true;
                    break;
                }
        }
        return lowerCase == i2 ? z : !z;
    }

    boolean a(int i, int i2, int i3) {
        boolean z;
        if (this.c.b(i2 + 1) == 94) {
            i2++;
            z = false;
        } else {
            z = true;
        }
        while (true) {
            i2++;
            if (i2 >= i3) {
                return !z;
            } else if (this.c.b(i2) == 37) {
                i2++;
                if (a(i, this.c.b(i2))) {
                    return z;
                }
            } else if (this.c.b(i2 + 1) == 45 && i2 + 2 < i3) {
                i2 += 2;
                if (this.c.b(i2 - 2) <= i && i <= this.c.b(i2)) {
                    return z;
                }
            } else if (this.c.b(i2) == i) {
                return z;
            }
        }
    }

    boolean b(int i, int i2, int i3) {
        switch (this.c.b(i2)) {
            case 37:
                return a(i, this.c.b(i2 + 1));
            case 46:
                return true;
            case 91:
                return a(i, i2, i3 - 1);
            default:
                return this.c.b(i2) == i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:101:0x014d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int b(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.lib.l.b(int, int):int");
    }

    int c(int i, int i2, int i3) {
        int i4;
        int i5 = 0;
        while (true) {
            if (i + i5 >= this.b.L()) {
                i4 = i5;
                break;
            } else if (!b(this.b.b(i + i5), i2, i3)) {
                i4 = i5;
                break;
            } else {
                i5++;
            }
        }
        while (i4 >= 0) {
            int b = b(i + i4, i3 + 1);
            if (b == -1) {
                i4--;
            } else {
                return b;
            }
        }
        return -1;
    }

    int d(int i, int i2, int i3) {
        while (true) {
            int b = b(i, i3 + 1);
            if (b == -1) {
                if (i >= this.b.L() || !b(this.b.b(i), i2, i3)) {
                    break;
                }
                i++;
            } else {
                return b;
            }
        }
        return -1;
    }

    int e(int i, int i2, int i3) {
        int i4 = this.e;
        if (i4 >= 32) {
            StringLib.f("too many captures");
        }
        this.f[i4] = i;
        this.g[i4] = i3;
        this.e = i4 + 1;
        int b = b(i, i2);
        if (b == -1) {
            this.e--;
        }
        return b;
    }

    int c(int i, int i2) {
        int b = b();
        this.g[b] = i - this.f[b];
        int b2 = b(i, i2);
        if (b2 == -1) {
            this.g[b] = -1;
        }
        return b2;
    }

    int d(int i, int i2) {
        int b = b(i2);
        int i3 = this.g[b];
        if (this.b.L() - i < i3 || !LuaString.a(this.b, this.f[b], this.b, i, i3)) {
            return -1;
        }
        return i + i3;
    }

    int e(int i, int i2) {
        int b;
        int L = this.c.L();
        if (i2 == L || i2 + 1 == L) {
            StringLib.f("malformed pattern (missing arguments to '%b')");
        }
        int L2 = this.b.L();
        if (i >= L2 || this.b.b(i) != (b = this.c.b(i2))) {
            return -1;
        }
        int b2 = this.c.b(i2 + 1);
        int i3 = 1;
        while (true) {
            i++;
            if (i >= L2) {
                return -1;
            }
            if (this.b.b(i) == b2) {
                i3--;
                if (i3 == 0) {
                    return i + 1;
                }
            } else if (this.b.b(i) == b) {
                i3++;
            }
        }
    }
}
