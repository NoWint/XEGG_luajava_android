package luaj.lib;

import android.ext.la;
import java.util.Locale;
import luaj.LuaString;
import luaj.ap;

/* compiled from: src */
/* loaded from: classes.dex */
class k {
    int a;
    public final int b;
    public final int c;
    public final String d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private int j;

    public k(ap apVar, LuaString luaString, int i) {
        int i2;
        int L = luaString.L();
        boolean z = true;
        int i3 = 0;
        int i4 = i;
        while (z) {
            if (i4 < L) {
                i3 = luaString.b(i4);
                i4++;
            } else {
                i3 = 0;
            }
            switch (i3) {
                case 32:
                    this.h = true;
                    break;
                case 35:
                    this.i = true;
                    break;
                case 43:
                    this.g = true;
                    break;
                case 45:
                    this.e = true;
                    break;
                case 48:
                    this.f = true;
                    break;
                default:
                    z = false;
                    break;
            }
        }
        if (i4 - i > 5) {
            StringLib.f("invalid format (repeated flags)");
        }
        this.j = -1;
        if (Character.isDigit((char) i3)) {
            this.j = i3 - 48;
            if (i4 < L) {
                i2 = i4 + 1;
                i3 = luaString.b(i4);
            } else {
                i3 = 0;
                i2 = i4;
            }
            if (Character.isDigit((char) i3)) {
                this.j = (i3 - 48) + (this.j * 10);
                if (i2 < L) {
                    i3 = luaString.b(i2);
                    i2++;
                } else {
                    i3 = 0;
                }
            }
        } else {
            i2 = i4;
        }
        this.a = -1;
        if (i3 == 46) {
            if (i2 < L) {
                i3 = luaString.b(i2);
                i2++;
            } else {
                i3 = 0;
            }
            if (Character.isDigit((char) i3)) {
                this.a = i3 - 48;
                if (i2 < L) {
                    i3 = luaString.b(i2);
                    i2++;
                } else {
                    i3 = 0;
                }
                if (Character.isDigit((char) i3)) {
                    this.a = (i3 - 48) + (this.a * 10);
                    if (i2 < L) {
                        i3 = luaString.b(i2);
                        i2++;
                    } else {
                        i3 = 0;
                    }
                }
            }
        }
        if (Character.isDigit((char) i3)) {
            StringLib.f("invalid format (width or precision too long) at pos " + i2);
        }
        this.f = (this.e ? false : true) & this.f;
        this.b = i3;
        this.c = i2 - i;
        this.d = luaString.a(i - 1, i2).d_();
    }

    public void a(luaj.a aVar, byte b) {
        aVar.a(b);
    }

    public void a(luaj.a aVar, long j) {
        String str;
        int i;
        int i2;
        int i3;
        if (j == 0 && this.a == 0) {
            str = "";
        } else {
            switch (this.b) {
                case 88:
                case 120:
                    str = Long.toHexString(j);
                    break;
                case 111:
                    str = Long.toOctalString(j);
                    break;
                case 117:
                    if (j >= 0) {
                        str = Long.toString(j);
                        break;
                    } else {
                        long j2 = (j >>> 1) / 5;
                        str = String.valueOf(Long.toString(j2)) + (j - (10 * j2));
                        break;
                    }
                default:
                    str = Long.toString(j);
                    break;
            }
            if (this.b == 88) {
                str = str.toUpperCase(Locale.US);
            }
        }
        int length = str.length();
        if (j < 0) {
            i2 = length - 1;
            i = length;
        } else if (this.g || this.h) {
            i = length + 1;
            i2 = length;
        } else {
            i2 = length;
            i = length;
        }
        if (this.a > i2) {
            i3 = this.a - i2;
        } else {
            i3 = (this.a == -1 && this.f && this.j > i) ? this.j - i : 0;
        }
        int i4 = i + i3;
        int i5 = this.j > i4 ? this.j - i4 : 0;
        if (!this.e) {
            a(aVar, ' ', i5);
        }
        if (j < 0) {
            if (i3 > 0) {
                aVar.a((byte) 45);
                str = str.substring(1);
            }
        } else if (this.g) {
            aVar.a((byte) 43);
        } else if (this.h) {
            aVar.a((byte) 32);
        }
        if (i3 > 0) {
            a(aVar, '0', i3);
        }
        aVar.a(str);
        if (this.e) {
            a(aVar, ' ', i5);
        }
    }

    public void a(luaj.a aVar, double d) {
        String str = null;
        if (Double.isNaN(d)) {
            str = "nan";
        } else if (Double.isInfinite(d)) {
            str = d < 0.0d ? "-inf" : "inf";
        }
        if (str != null) {
            if (this.b < 97) {
                str = str.toUpperCase(Locale.US);
            }
        } else {
            try {
                str = String.format(Locale.US, this.d, Double.valueOf(d));
            } catch (Throwable th) {
                la.b("Failed format double " + d + " with '" + this.d + '\'', th);
                str = String.valueOf(d);
            }
        }
        aVar.a(str);
    }

    public void a(luaj.a aVar, LuaString luaString) {
        int L = luaString.L();
        int i = this.j;
        int i2 = this.a;
        if (i2 == -1) {
            i2 = L;
        }
        if (L > i2) {
            L = i2;
        }
        if (L < i && !this.e) {
            byte b = (byte) (this.f ? 48 : 32);
            for (int i3 = i - L; i3 > 0; i3--) {
                aVar.a(b);
            }
        }
        aVar.a(luaString.b, luaString.c, L);
        if (L < i && this.e) {
            byte b2 = (byte) (this.f ? 48 : 32);
            for (int i4 = i - L; i4 > 0; i4--) {
                aVar.a(b2);
            }
        }
    }

    public static final void a(luaj.a aVar, char c, int i) {
        byte b = (byte) c;
        while (true) {
            int i2 = i - 1;
            if (i > 0) {
                aVar.a(b);
                i = i2;
            } else {
                return;
            }
        }
    }
}
