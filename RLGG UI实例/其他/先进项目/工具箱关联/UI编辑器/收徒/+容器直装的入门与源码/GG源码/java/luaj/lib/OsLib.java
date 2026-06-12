package luaj.lib;

import android.ext.Tools;
import android.ext.la;
import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import luaj.Globals;
import luaj.LuaTable;
import luaj.LuaValue;
import luaj.ap;
import luaj.o;

/* compiled from: src */
/* loaded from: classes.dex */
public class OsLib extends TwoArgFunction {
    private static final long a = System.currentTimeMillis();
    private static long b = a;
    private Globals c;

    @Override // luaj.lib.TwoArgFunction, luaj.lib.LibFunction, luaj.LuaValue
    public LuaValue a(LuaValue luaValue, LuaValue luaValue2) {
        String[] strArr = {"clock", "date", "difftime", "execute", "exit", "getenv", "remove", "rename", "setlocale", "time", "tmpname"};
        this.c = luaValue2.c();
        LuaTable luaTable = new LuaTable();
        for (int i = 0; i < strArr.length; i++) {
            if (!this.c.a) {
                switch (i) {
                    case 3:
                    case 4:
                    case 6:
                    case 7:
                    case 10:
                }
            }
            luaTable.a(strArr[i], new OsLibFunc(i, strArr[i]));
        }
        luaValue2.a("os", luaTable);
        if (!luaValue2.j("package").F()) {
            luaValue2.j("package").j("loaded").a("os", luaTable);
        }
        return luaTable;
    }

    /* compiled from: src */
    /* loaded from: classes.dex */
    class OsLibFunc extends VarArgFunction {
        public OsLibFunc(int i, String str) {
            this.aj = i;
            this.ak = str;
        }

        @Override // luaj.lib.VarArgFunction, luaj.lib.LibFunction, luaj.LuaValue
        public ap a_(ap apVar) {
            try {
                switch (this.aj) {
                    case 0:
                        return c(OsLib.this.S());
                    case 1:
                        String c = apVar.c(1, "%c");
                        long x = apVar.h(2) ? apVar.x(2) : OsLib.this.b((LuaTable) null);
                        if (x == -1) {
                            x = OsLib.this.b((LuaTable) null);
                        }
                        if (x > 9223372036854775L || x < -9223372036854775L) {
                            throw new o("time result cannot be represented in this installation");
                        }
                        Calendar calendar = Calendar.getInstance(c.startsWith("!") ? TimeZone.getTimeZone("UTC") : TimeZone.getDefault());
                        calendar.setTimeInMillis(x * 1000);
                        if (c.startsWith("!")) {
                            c = c.substring(1);
                        }
                        if (c.equals("*t")) {
                            LuaTable ad = LuaValue.ad();
                            OsLib.this.a(ad, calendar);
                            return ad;
                        }
                        return m(OsLib.this.a(c, calendar));
                    case 2:
                        return c(OsLib.this.a(apVar.m(1), apVar.m(2)));
                    case 3:
                        return OsLib.this.c(apVar.c(1, null));
                    case 4:
                        OsLib.this.e(apVar.d(1, 0));
                        return x;
                    case 5:
                        String d = OsLib.this.d(apVar.r(1));
                        return d != null ? m(d) : u;
                    case 6:
                        OsLib.this.a(apVar.r(1));
                        return LuaValue.v;
                    case 7:
                        OsLib.this.a(apVar.r(1), apVar.r(2));
                        return LuaValue.v;
                    case 8:
                        String e = OsLib.this.e(apVar.c(1, null), apVar.c(2, "all"));
                        return e != null ? m(e) : u;
                    case 9:
                        return d(OsLib.this.b(apVar.a(1, (LuaTable) null)));
                    case 10:
                        return m(OsLib.this.T());
                    default:
                        return x;
                }
            } catch (IOException e2) {
                return a(u, (LuaValue) m(e2.getMessage()), (ap) d(this.aj));
            }
        }
    }

    void a(LuaTable luaTable, Calendar calendar) {
        luaTable.a("year", LuaValue.d(calendar.get(1)));
        luaTable.a("month", LuaValue.d(calendar.get(2) + 1));
        luaTable.a("day", LuaValue.d(calendar.get(5)));
        luaTable.a("hour", LuaValue.d(calendar.get(11)));
        luaTable.a("min", LuaValue.d(calendar.get(12)));
        luaTable.a("sec", LuaValue.d(calendar.get(13)));
        luaTable.a("wday", LuaValue.d(calendar.get(7)));
        luaTable.a("yday", LuaValue.d(calendar.get(6)));
        luaTable.a("isdst", LuaValue.b(calendar.getTimeZone().inDaylightTime(calendar.getTime())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double S() {
        return ((System.currentTimeMillis() - a) - this.c.d) / 1000.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double a(double d, double d2) {
        return d - d2;
    }

    private static LuaValue a(byte[] bArr, int i, int i2) {
        return a(1, "os.date", "invalid conversion specifier '" + e(bArr, i, i2 - i) + "' at offset " + i);
    }

    public String a(String str, Calendar calendar) {
        int i;
        byte b2;
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        luaj.a aVar = new luaj.a(length);
        int i2 = 0;
        while (i2 < length) {
            int i3 = i2 + 1;
            byte b3 = bytes[i2];
            switch (b3) {
                case 10:
                    aVar.a("\n");
                    i2 = i3;
                    break;
                case 37:
                    if (i3 >= length) {
                        a(bytes, i2, i3);
                    }
                    int i4 = i3 + 1;
                    byte b4 = bytes[i3];
                    if (b4 == 69 || b4 == 79) {
                        if (i4 >= length) {
                            a(bytes, i2, i4);
                        }
                        String str2 = b4 == 69 ? "cCxXyY" : "deHImMSuUVwwy";
                        i = i4 + 1;
                        byte b5 = bytes[i4];
                        if (str2.indexOf((char) (b5 & 255)) == -1) {
                            a(bytes, i2, i);
                        }
                        b4 = b5;
                    } else {
                        i = i4;
                    }
                    switch (b4) {
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                        case 58:
                        case 59:
                        case 60:
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case 69:
                        case 74:
                        case 75:
                        case 76:
                        case 78:
                        case 79:
                        case 80:
                        case 81:
                        case 91:
                        case 92:
                        case 93:
                        case 94:
                        case 95:
                        case 96:
                        case 102:
                        case 105:
                        case 111:
                        case 113:
                        case 118:
                        default:
                            a(bytes, i2, i);
                        case 37:
                            aVar.a("%");
                            b2 = 0;
                            break;
                        case 65:
                        case 66:
                        case 68:
                        case 70:
                        case 72:
                        case 73:
                        case 77:
                        case 82:
                        case 83:
                        case 84:
                        case 89:
                        case 90:
                        case 97:
                        case 98:
                        case 100:
                        case 106:
                        case 107:
                        case 108:
                        case 109:
                        case 112:
                        case 114:
                        case 115:
                        case 121:
                        case 122:
                            b2 = b4;
                            break;
                        case 67:
                            aVar.a(String.valueOf((calendar.get(1) / 100) + 100).substring(1));
                            b2 = 0;
                            break;
                        case 71:
                            aVar.a(String.valueOf(c(calendar) + 10000).substring(1));
                            b2 = 0;
                            break;
                        case 85:
                            aVar.a(String.valueOf(a(calendar, false) + 100).substring(1));
                            b2 = 0;
                            break;
                        case 86:
                            aVar.a(String.valueOf(b(calendar) + 100).substring(1));
                            b2 = 0;
                            break;
                        case 87:
                            aVar.a(String.valueOf(a(calendar, true) + 100).substring(1));
                            b2 = 0;
                            break;
                        case 88:
                            b2 = 84;
                            break;
                        case 99:
                            aVar.a(a("%a %b %d %H:%M:%S %Y", calendar));
                            b2 = 0;
                            break;
                        case 101:
                            int i5 = calendar.get(5);
                            if (i5 < 10) {
                                aVar.a(" ");
                            }
                            aVar.a(String.valueOf(i5));
                            b2 = 0;
                            break;
                        case 103:
                            aVar.a(String.valueOf(c(calendar) + 10000).substring(3));
                            b2 = 0;
                            break;
                        case 104:
                            b2 = 98;
                            break;
                        case 110:
                            aVar.a("\n");
                            b2 = 0;
                            break;
                        case 116:
                            aVar.a("\t");
                            b2 = 0;
                            break;
                        case 117:
                            aVar.a(String.valueOf(((calendar.get(7) + 5) % 7) + 1));
                            b2 = 0;
                            break;
                        case 119:
                            aVar.a(String.valueOf((calendar.get(7) + 6) % 7));
                            b2 = 0;
                            break;
                        case 120:
                            b2 = 68;
                            break;
                    }
                    if (b2 != 0) {
                        aVar.a(String.format(Locale.US, "%" + (b2 == 112 ? 'T' : 't') + ((char) (b2 & 255)), calendar));
                    }
                    i2 = i;
                    break;
                default:
                    aVar.a(b3);
                    i2 = i3;
                    break;
            }
        }
        return aVar.c();
    }

    private Calendar a(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setLenient(true);
        calendar2.set(1, calendar.get(1));
        calendar2.set(6, (calendar.get(6) - (((calendar.get(7) + 5) % 7) + 1)) + 4);
        return calendar2;
    }

    private int b(Calendar calendar) {
        return ((a(calendar).get(6) - 1) / 7) + 1;
    }

    private int c(Calendar calendar) {
        return a(calendar).get(1);
    }

    private int a(Calendar calendar, boolean z) {
        int i = calendar.get(6);
        int i2 = calendar.get(7);
        if (z) {
            i2 = ((i2 + 5) % 7) + 1;
        }
        if (i <= i2) {
            return 0;
        }
        int i3 = (i - i2) % 7;
        int ceil = ((int) Math.ceil((i - i3) / 7.0f)) - 1;
        return i3 != 0 ? ceil + 1 : ceil;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ap c(String str) {
        throw new o("Failed os.execute('" + str + "'): disabled by security reason");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d(String str) {
        String str2 = null;
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            str2 = System.getenv(str);
        } catch (Throwable th) {
            la.a("Failed getenv '" + str + "'", th);
        }
        if (str2 == null) {
            try {
                return System.getProperty(str);
            } catch (Throwable th2) {
                la.a("Failed getProperty '" + str + "'", th2);
                return str2;
            }
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str) {
        File d = this.c.d(str);
        if (!d.exists()) {
            throw new IOException("No such file or directory: '" + str + "'");
        }
        if (!d.delete()) {
            throw new IOException("Failed to delete: '" + str + "'");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, String str2) {
        File d = this.c.d(str);
        if (!d.exists()) {
            throw new IOException("No such file or directory: '" + str + "'");
        }
        if (!d.renameTo(this.c.d(str2))) {
            throw new IOException("Failed to rename '" + str + "' to '" + str2 + "'");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e(String str, String str2) {
        return "C";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long b(LuaTable luaTable) {
        Calendar calendar = Calendar.getInstance();
        if (luaTable == null) {
            calendar.add(14, -this.c.d);
        } else {
            String str = "";
            try {
                calendar.set(1, a(luaTable.j("year"), true).v());
                calendar.set(2, a(luaTable.j("month"), true).v() - 1);
                calendar.set(5, a(luaTable.j("day"), true).v());
                calendar.set(11, a(luaTable.j("hour"), false).b_(12));
                calendar.set(12, a(luaTable.j("min"), false).b_(0));
                str = "sec";
                calendar.set(13, a(luaTable.j("sec"), false).b_(0));
                calendar.set(14, 0);
                a(luaTable, calendar);
            } catch (o e) {
                throw new o("field '" + str + "' " + e.getMessage(), e);
            }
        }
        return calendar.getTimeInMillis() / 1000;
    }

    private LuaValue a(LuaValue luaValue, boolean z) {
        if (luaValue.F()) {
            if (z) {
                throw new o("missing in date table");
            }
        } else if (!luaValue.q_()) {
            throw new o("is not an integer");
        }
        return luaValue;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String T() {
        try {
            File createTempFile = File.createTempFile(".gg.", ".tmp");
            try {
                createTempFile.deleteOnExit();
                createTempFile.delete();
            } catch (Throwable th) {
            }
            return createTempFile.getAbsolutePath();
        } catch (IOException e) {
            synchronized (OsLib.class) {
                long j = b;
                b = 1 + j;
                return Tools.h() + "/" + (".gg." + j + ".tmp");
            }
        }
    }
}
