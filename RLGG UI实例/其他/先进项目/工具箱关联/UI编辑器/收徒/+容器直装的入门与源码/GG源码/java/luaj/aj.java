package luaj;

import android.ext.iu;
import android.ext.la;
import android.ext.ts;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;

/* compiled from: src */
/* loaded from: classes.dex */
public class aj extends m {
    public static PrintStream b = System.out;
    public static final String[] c;
    private static final int d;

    static {
        String[] strArr = new String[48];
        strArr[0] = "MOVE";
        strArr[1] = "LOADK";
        strArr[2] = "LOADKX";
        strArr[3] = "LOADBOOL";
        strArr[4] = "LOADNIL";
        strArr[5] = "GETUPVAL";
        strArr[6] = "GETTABUP";
        strArr[7] = "GETTABLE";
        strArr[8] = "SETTABUP";
        strArr[9] = "SETUPVAL";
        strArr[10] = "SETTABLE";
        strArr[11] = "NEWTABLE";
        strArr[12] = "SELF";
        strArr[13] = "ADD";
        strArr[14] = "SUB";
        strArr[15] = "MUL";
        strArr[16] = "DIV";
        strArr[17] = "MOD";
        strArr[18] = "POW";
        strArr[19] = "UNM";
        strArr[20] = "NOT";
        strArr[21] = "LEN";
        strArr[22] = "CONCAT";
        strArr[23] = "JMP";
        strArr[24] = "EQ";
        strArr[25] = "LT";
        strArr[26] = "LE";
        strArr[27] = "TEST";
        strArr[28] = "TESTSET";
        strArr[29] = "CALL";
        strArr[30] = "TAILCALL";
        strArr[31] = "RETURN";
        strArr[32] = "FORLOOP";
        strArr[33] = "FORPREP";
        strArr[34] = "TFORCALL";
        strArr[35] = "TFORLOOP";
        strArr[36] = "SETLIST";
        strArr[37] = "CLOSURE";
        strArr[38] = "VARARG";
        strArr[39] = "EXTRAARG";
        strArr[40] = "IDIV";
        strArr[41] = "BNOT";
        strArr[42] = "BAND";
        strArr[43] = "BOR";
        strArr[44] = "BXOR";
        strArr[45] = "SHL";
        strArr[46] = "SHR";
        c = strArr;
        d = luaj.a.a.a(31, 0, 1, 0);
    }

    public static void a(StringBuilder sb, LuaString luaString) {
        byte[] bArr;
        int i;
        int i2;
        String str;
        if (luaString == null) {
            sb.append("nil");
            return;
        }
        sb.append('\"');
        char[] cArr = iu.a;
        boolean s_ = luaString.s_();
        if (s_) {
            str = luaString.d_();
            i = str.length();
            i2 = 0;
            bArr = null;
        } else {
            bArr = luaString.b;
            i = luaString.d;
            i2 = luaString.c;
            str = null;
        }
        for (int i3 = 0; i3 < i; i3++) {
            char charAt = s_ ? str.charAt(i3) : (char) bArr[i2 + i3];
            if (charAt >= ' ' && charAt <= '~' && charAt != '\"' && charAt != '\\') {
                sb.append(charAt);
            } else {
                switch (charAt) {
                    case 7:
                        sb.append('\\');
                        sb.append('a');
                        continue;
                    case '\b':
                        sb.append('\\');
                        sb.append('b');
                        continue;
                    case '\t':
                        sb.append('\\');
                        sb.append('t');
                        continue;
                    case '\n':
                        sb.append('\\');
                        sb.append('n');
                        continue;
                    case 11:
                        sb.append('\\');
                        sb.append('v');
                        continue;
                    case '\f':
                        sb.append('\\');
                        sb.append('f');
                        continue;
                    case '\r':
                        sb.append('\\');
                        sb.append('r');
                        continue;
                    case '\"':
                    case '\\':
                        sb.append('\\');
                        sb.append(charAt);
                        continue;
                    default:
                        if (s_ && charAt >= ' ') {
                            sb.append(charAt);
                            continue;
                        } else {
                            sb.append("\\x");
                            sb.append(cArr[(charAt & 240) >> 4]);
                            sb.append(cArr[charAt & 15]);
                            break;
                        }
                }
            }
        }
        sb.append('\"');
    }

    static void a(StringBuilder sb, LuaValue luaValue) {
        if (luaValue == null) {
            sb.append("null");
        } else if (luaValue instanceof LuaLong) {
            sb.append(luaValue.w());
        } else if (luaValue instanceof LuaDouble) {
            String d2 = Double.toString(luaValue.x());
            sb.append(d2);
            if (d2.indexOf(46) < 0) {
                sb.append(".0");
            }
        } else {
            switch (luaValue.e_()) {
                case 4:
                    a(sb, (LuaString) luaValue);
                    return;
                default:
                    sb.append(luaValue.d_());
                    return;
            }
        }
    }

    static void a(StringBuilder sb, al alVar, int i) {
        if (i < alVar.q.length) {
            a(sb, alVar.q[i]);
            return;
        }
        sb.append("CONST[");
        sb.append(i);
        sb.append("]");
    }

    public static void a(al alVar, String str, ak akVar) {
        akVar.c = str;
        PrintStream printStream = b;
        int length = alVar.r.length;
        byte[] a = a(alVar, (int[]) null);
        akVar.d = a;
        StringBuilder[] sbArr = new StringBuilder[length * 2];
        if (alVar.u != null && alVar.u.length > 0) {
            l[] lVarArr = alVar.u;
            int[] iArr = new int[lVarArr.length];
            int i = 0;
            for (l lVar : lVarArr) {
                int i2 = lVar.c - 1;
                if (i2 >= lVar.b) {
                    int i3 = i;
                    for (int min = Math.min(i - 1, iArr.length - 1); min >= 0 && iArr[min] < lVar.b; min--) {
                        i3 = min;
                    }
                    iArr[i3] = i2;
                    int i4 = 0;
                    while (true) {
                        int i5 = i4;
                        if (i5 >= 2) {
                            break;
                        }
                        int i6 = i5 == 0 ? lVar.b : i2;
                        if (i6 < 0) {
                            i6 = 0;
                        }
                        if (i6 >= length) {
                            i6 = length - 1;
                        }
                        int i7 = (i6 * 2) + i5;
                        StringBuilder sb = sbArr[i7];
                        if (sb == null) {
                            sb = new StringBuilder();
                            sbArr[i7] = sb;
                        }
                        sb.append(str);
                        sb.append(i5 == 0 ? ".local v" : ".end local v");
                        sb.append(i3);
                        sb.append(' ');
                        a(sb, lVar.a);
                        sb.append('\n');
                        i4 = i5 + 1;
                    }
                    i = i3 + 1;
                }
            }
        }
        int i8 = length * 44;
        if (i8 < 8192) {
            i8 = 8192;
        }
        if (i8 > 65536) {
            i8 = 65536;
        }
        StringBuilder sb2 = new StringBuilder(i8);
        int i9 = 0;
        while (i9 < length) {
            sb2.append('\n');
            byte b2 = a[i9];
            if ((b2 & 32) != 0) {
                sb2.append(str);
                sb2.append(":goto_");
                sb2.append(i9);
                sb2.append('\n');
            }
            StringBuilder sb3 = sbArr[(i9 * 2) + 0];
            if (sb3 != null) {
                sb2.append((CharSequence) sb3);
                sbArr[(i9 * 2) + 0] = null;
            }
            sb2.append(str);
            int a2 = a(sb2, alVar, i9, akVar);
            switch (b2 & 31) {
                case 0:
                    sb2.append(" ; garbage");
                    break;
                case 3:
                    sb2.append(" ; unused");
                    break;
            }
            sb2.append('\n');
            for (int i10 = i9; i10 <= a2; i10++) {
                for (int i11 = 0; i11 < 2; i11++) {
                    StringBuilder sb4 = sbArr[(i10 * 2) + i11];
                    if (sb4 != null) {
                        sb2.append((CharSequence) sb4);
                        sbArr[(i10 * 2) + i11] = null;
                    }
                }
            }
            if (sb2.length() > i8) {
                printStream.print(sb2.toString());
                sb2.setLength(0);
            }
            i9 = a2 + 1;
        }
        if (sb2.length() > 0) {
            printStream.print(sb2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(StringBuilder sb, int i, int i2) {
        int a = a(i2);
        int b2 = b(i2);
        int d2 = d(i2);
        int e = e(i2);
        int f = f(i2);
        int g = g(i2);
        sb.append(" ; PC ");
        sb.append(i);
        sb.append(" CODE ");
        ts.a((Appendable) sb, 8, i2);
        sb.append(" OP ");
        sb.append(a);
        sb.append(" A ");
        sb.append(b2);
        sb.append(" B ");
        sb.append(d2);
        sb.append(" C ");
        sb.append(e);
        sb.append(" Bx ");
        sb.append(f);
        sb.append(" sBx ");
        sb.append(g);
    }

    public static byte[] a(al alVar, int[] iArr) {
        boolean z = iArr == null;
        int[] iArr2 = alVar.r;
        int length = iArr2.length;
        if (z) {
            iArr = new int[length];
        }
        byte[] bArr = new byte[length + 2];
        int[] iArr3 = iArr2;
        for (int i = 0; i < 100 && a(bArr, alVar, iArr3, iArr); i++) {
            if (i == 0) {
                iArr3 = new int[length];
            }
            System.arraycopy(iArr, 0, iArr3, 0, length);
            for (int i2 = 0; i2 < length; i2++) {
                bArr[i2] = (byte) (bArr[i2] & (-32));
            }
        }
        return bArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:220:0x0027, code lost:
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0112  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static boolean a(byte[] r18, luaj.al r19, int[] r20, int[] r21) {
        /*
            Method dump skipped, instructions count: 814
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.aj.a(byte[], luaj.al, int[], int[]):boolean");
    }

    public static int a(al alVar, int i) {
        StringBuilder sb = new StringBuilder();
        int a = a(sb, alVar, i, (ak) null);
        b.print(sb.toString());
        return a;
    }

    private static StringBuilder a(StringBuilder sb, String str) {
        if (sb == null) {
            sb = new StringBuilder(str.length() + 2);
        }
        sb.append("; ");
        sb.append(str);
        return sb;
    }

    private static StringBuilder b(StringBuilder sb, int i, int i2) {
        if (i2 < 0) {
            return a(sb, "impossible (negative) variable v" + i2);
        }
        if (i2 >= i) {
            return a(sb, "variable v" + i2 + " out of stack (.maxstacksize = " + i + " for this func)");
        }
        return sb;
    }

    private static StringBuilder c(StringBuilder sb, int i, int i2) {
        if (i2 >= i) {
            return a(sb, "upvalue u" + i2 + " out of upvalues list (" + i + " upvalues for this func)");
        }
        return sb;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int a(java.lang.StringBuilder r14, luaj.al r15, int r16, luaj.ak r17) {
        /*
            Method dump skipped, instructions count: 1186
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: luaj.aj.a(java.lang.StringBuilder, luaj.al, int, luaj.ak):int");
    }

    private static int b(al alVar, int i) {
        if (i < 0) {
            return 0;
        }
        int[] iArr = alVar.t;
        int i2 = (iArr == null || i >= iArr.length) ? 0 : iArr[i];
        if (i2 >= 0) {
            return i2;
        }
        return 0;
    }

    static void a(al alVar, String str) {
        StringBuilder sb = new StringBuilder(alVar.w.L() + 2);
        a(sb, alVar.w);
        b.print("; " + alVar.v.length + " upvalues, " + alVar.u.length + " locals, " + alVar.q.length + " constants, " + alVar.s.length + " funcs\n" + str + ".source " + ((Object) sb) + "\n" + str + ".linedefined " + alVar.x + "\n" + str + ".lastlinedefined " + alVar.y + "\n" + str + ".numparams " + alVar.z + "\n" + str + ".is_vararg " + alVar.A + "\n" + str + ".maxstacksize " + alVar.B + "\n");
    }

    static void b(al alVar, String str) {
        ao[] aoVarArr = alVar.v;
        if (aoVarArr.length != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append('\n');
            int length = aoVarArr.length;
            for (int i = 0; i < length; i++) {
                ao aoVar = aoVarArr[i];
                sb.append(str);
                sb.append(".upval ");
                sb.append(aoVar.b ? 'v' : 'u');
                sb.append((int) aoVar.c);
                sb.append(' ');
                a(sb, aoVar.a);
                sb.append(" ; u");
                sb.append(i);
                sb.append('\n');
            }
            b.print(sb.toString());
        }
    }

    public static void a(al alVar) {
        b.print("; --[=========[ Lua assembler file generated by GameGuardian " + ((109.9f * 1) - 8.8f) + " (" + ((int) (((17000.5f * 1) - 858.5f) + 0.5f)) + ")\n");
        b(alVar, "", new ak());
        b.print("; ]=========] gg.require('" + ((109.5f * 1) - 8.4f) + "', " + ((int) (((16797.6f * 1) - 655.6f) + 0.5f)) + ")\n");
    }

    public static void a(LuaClosure luaClosure, String str) {
        int i = luaClosure.a.C;
        if (i >= 0 && luaClosure.d != null) {
            File file = new File(luaClosure.d);
            if (file.exists()) {
                try {
                    FileInputStream fileInputStream = new FileInputStream(file);
                    fileInputStream.skip(i);
                    FileOutputStream fileOutputStream = new FileOutputStream(str);
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read > 0) {
                            fileOutputStream.write(bArr, 0, read);
                        } else {
                            fileOutputStream.close();
                            fileInputStream.close();
                            return;
                        }
                    }
                } catch (IOException e) {
                    la.a("Fail save tail to " + str, e);
                }
            }
        }
    }

    public static void b(al alVar, String str, ak akVar) {
        int i;
        al[] alVarArr = alVar.s;
        int length = alVarArr.length;
        a(alVar, str);
        b(alVar, str);
        a(alVar, str, akVar);
        String str2 = String.valueOf(str) + "\t";
        akVar.a = akVar.a + length;
        for (int i2 = 0; i2 < length; i2++) {
            b.print("\n");
            b.print(str);
            b.print(".func F" + (i + i2) + ' ');
            b(alVarArr[i2], str2, akVar);
            b.print(str);
            b.print(".end ; F" + (i + i2) + "\n");
        }
    }

    private static void a(String str, int i) {
        int length = str.length();
        if (length > i) {
            b.print(str.substring(0, i));
            return;
        }
        b.print(str);
        int i2 = i - length;
        while (true) {
            i2--;
            if (i2 >= 0) {
                b.print(' ');
            } else {
                return;
            }
        }
    }

    public static void a(LuaClosure luaClosure, int i, LuaValue[] luaValueArr, int i2, ap apVar) {
        PrintStream printStream = b;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        b = new PrintStream(byteArrayOutputStream);
        a(luaClosure.a, i);
        b.flush();
        b.close();
        b = printStream;
        a(byteArrayOutputStream.toString(), 50);
        a(luaValueArr, i2, apVar);
        b.println();
    }

    public static void a(LuaValue[] luaValueArr, int i, ap apVar) {
        String str;
        b.print('[');
        for (int i2 = 0; i2 < luaValueArr.length; i2++) {
            LuaValue luaValue = luaValueArr[i2];
            if (luaValue == null) {
                b.print("null");
            } else {
                switch (luaValue.e_()) {
                    case 4:
                        LuaString z = luaValue.z();
                        PrintStream printStream = b;
                        if (z.L() < 48) {
                            str = z.d_();
                        } else {
                            str = String.valueOf(z.a(0, 32).d_()) + "...+" + (z.L() - 32) + 'b';
                        }
                        printStream.print(str);
                        break;
                    default:
                        b.print(luaValue.d_());
                        break;
                }
            }
            if (i2 + 1 == i) {
                b.print(']');
            }
            b.print(" | ");
        }
        b.print(apVar);
    }
}
