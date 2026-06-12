package lasm;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import luaj.LuaString;
import luaj.LuaValue;

/* compiled from: src */
/* loaded from: classes.dex */
public class LasmBase {
    public static String a(Throwable th, String str, boolean z) {
        int i;
        int i2;
        String str2;
        if (th instanceof c) {
            i2 = ((c) th).a.b;
            i = ((c) th).a.c;
        } else if (th instanceof g) {
            i2 = ((g) th).a.g.b;
            i = ((g) th).a.g.c;
        } else if (th instanceof j) {
            i2 = ((j) th).b;
            i = ((j) th).c;
        } else {
            i = 0;
            i2 = 0;
        }
        if (i2 <= 0) {
            return "";
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(str)));
        int i3 = 0;
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                str2 = "";
                break;
            }
            i3++;
            if (i3 == i2) {
                str2 = z ? "\n" + readLine.substring(0, i - 1) + (char) 8291 + readLine.substring(i - 1) + "\n" : "\n" + readLine + "\n" + new String(new char[i - 1]).replace("\u0000", "_") + "^\n";
            }
        }
        bufferedReader.close();
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(i iVar, int i) {
        int b = b(iVar, 0);
        if (b > i) {
            throw new c(iVar, "'" + iVar.f + "' parsed as " + b + " out of possible range [0; " + i + "]");
        }
        return b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(i iVar) {
        return b(iVar, 0);
    }

    static int b(i iVar, int i) {
        try {
            return Integer.parseInt(iVar.f.substring(i));
        } catch (NumberFormatException e) {
            throw new c(iVar, "Failed parse '" + iVar.f + "' as integer", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(i iVar) {
        try {
            return (int) Long.parseLong(iVar.f.substring(2), 16);
        } catch (NumberFormatException e) {
            throw new c(iVar, "Failed parse '" + iVar.f + "' as hex", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long c(i iVar) {
        try {
            return Long.parseLong(iVar.f);
        } catch (NumberFormatException e) {
            throw new c(iVar, "Failed parse '" + iVar.f + "' as long", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LuaValue d(i iVar) {
        try {
            return LuaValue.c(iVar.f, LuaValue.y);
        } catch (NumberFormatException e) {
            throw new c(iVar, "Failed parse '" + iVar.f + "' as Lua number", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static LuaString e(i iVar) {
        byte b;
        int i;
        int i2;
        if (iVar.a == 56) {
            return null;
        }
        byte[] bytes = iVar.f.getBytes();
        luaj.a aVar = new luaj.a(bytes.length - 2);
        int length = bytes.length - 1;
        int i3 = 1;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i3 < length) {
            byte b2 = bytes[i3];
            switch (i6) {
                case 0:
                    if (b2 == 92) {
                        i6 = 1;
                        continue;
                        i3++;
                    }
                    b = b2;
                    i = i3;
                    break;
                case 1:
                    if (48 <= b2 && b2 <= 57) {
                        i5 = b2 - 48;
                        i4 = 1;
                        i6 = 3;
                        continue;
                    } else {
                        switch (b2) {
                            case 97:
                                b2 = 7;
                                b = b2;
                                i = i3;
                                i6 = 0;
                                break;
                            case 98:
                                b2 = 8;
                                b = b2;
                                i = i3;
                                i6 = 0;
                                break;
                            case 102:
                                b2 = 12;
                                b = b2;
                                i = i3;
                                i6 = 0;
                                break;
                            case 110:
                                b2 = 10;
                                b = b2;
                                i = i3;
                                i6 = 0;
                                break;
                            case 114:
                                b2 = 13;
                                b = b2;
                                i = i3;
                                i6 = 0;
                                break;
                            case 116:
                                b2 = 9;
                                b = b2;
                                i = i3;
                                i6 = 0;
                                break;
                            case 117:
                            case 120:
                                i4 = b2 == 117 ? -1 : 0;
                                i5 = 0;
                                i6 = b2 == 117 ? 6 : 2;
                                break;
                            case 118:
                                b2 = 11;
                                b = b2;
                                i = i3;
                                i6 = 0;
                                break;
                            case 122:
                                i6 = 4;
                                break;
                            default:
                                b = b2;
                                i = i3;
                                i6 = 0;
                                break;
                        }
                    }
                    i3++;
                    break;
                case 2:
                case 6:
                    i5 *= 16;
                    if (i4 == -1) {
                        if (b2 != 123) {
                            i4 += 100;
                        }
                    } else if (i6 == 6 && b2 == 125) {
                        i5 /= 16;
                        if (i5 > 1114111) {
                            throw new c(iVar, "UTF-8 value too large: 0x" + Integer.toHexString(i5) + " (max allowed = 0x" + Integer.toHexString(1114111) + ")");
                        }
                        aVar.a(i5);
                        i6 = 0;
                        i3++;
                    } else if (48 <= b2 && b2 <= 57) {
                        i5 += b2 - 48;
                    } else if (97 <= b2 && b2 <= 102) {
                        i5 += (b2 + 10) - 97;
                    } else if (65 > b2 || b2 > 70) {
                        i4 += 100;
                    } else {
                        i5 += (b2 + 10) - 65;
                    }
                    i4++;
                    if (i4 < i6) {
                        continue;
                        i3++;
                    } else if (i4 == 2) {
                        b = (byte) i5;
                        i = i3;
                        i6 = 0;
                        break;
                    } else {
                        iVar.c += i3;
                        throw new c(iVar, "Invalid char '" + ((int) b2) + "' (code 0x" + Integer.toHexString(b2) + ") in " + (i6 == 6 ? "unicode" : "hex") + " escape sequence, must be " + (i6 == 6 ? "\\u{XXX}" : "\\xXX"));
                    }
                    break;
                case 3:
                    if (48 <= b2 && b2 <= 57) {
                        i5 = (i5 * 10) + (b2 - 48);
                        i4++;
                        if (i4 >= 3) {
                            i2 = i3;
                        } else {
                            continue;
                            i3++;
                        }
                    } else {
                        i2 = i3 - 1;
                    }
                    b = (byte) i5;
                    i = i2;
                    i6 = 0;
                    break;
                case 4:
                    switch (b2) {
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 32:
                            continue;
                        default:
                            b = b2;
                            i = i3;
                            i6 = 0;
                            break;
                    }
                    i3++;
                case 5:
                default:
                    b = b2;
                    i = i3;
                    break;
            }
            aVar.a(b);
            i3 = i;
            i3++;
        }
        if (i6 == 3) {
            aVar.a((byte) i5);
        }
        if (i6 == 6 || i6 == 2) {
            iVar.c += bytes.length - 1;
            throw new c(iVar, "Unfinished " + (i6 == 6 ? "unicode" : "hex") + " escape sequence");
        }
        return aVar.b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(V v, V v2, int i) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(V v, V v2) {
        if (v.a != v2.a) {
            throw new c(v2.b, "Register must be " + v.b.f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public class Internal extends LuaValue {
        int a;
        i b;

        Internal(i iVar, int i) {
            this.b = iVar;
            this.a = i;
        }

        @Override // luaj.LuaValue
        public int e_() {
            return this.a;
        }

        @Override // luaj.LuaValue
        public String f_() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public class Const extends Internal {
        /* JADX INFO: Access modifiers changed from: package-private */
        public Const(i iVar) {
            super(iVar, LasmBase.a(iVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public class U extends Internal {
        /* JADX INFO: Access modifiers changed from: package-private */
        public U(i iVar) {
            super(iVar, LasmBase.b(iVar, 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: src */
    /* loaded from: classes.dex */
    public class V extends Internal {
        /* JADX INFO: Access modifiers changed from: package-private */
        public V(i iVar) {
            super(iVar, LasmBase.b(iVar, 1));
        }
    }
}
