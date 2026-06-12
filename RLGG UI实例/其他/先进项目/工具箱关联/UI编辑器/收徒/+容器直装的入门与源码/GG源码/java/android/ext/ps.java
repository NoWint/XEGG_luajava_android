package android.ext;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.Editable;
import catch_.me_.if_.you_.can_.R;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;

/* compiled from: src */
/* loaded from: classes.dex */
public class ps {
    public static String a = null;
    public static char b = '.';
    private static boolean c = true;
    private static Charset d;
    private static Charset e;
    private static int[] f;
    private static Pattern g;

    static {
        updateLocale();
        ad.a(ps.class);
        d = null;
        e = null;
        f = null;
        g = null;
    }

    @SuppressLint({"DefaultLocale"})
    public static void updateLocale() {
        String a2 = Tools.a("%d", "%d", "1", (Object) 1);
        a = Tools.a("%,d", "%,d", "1,811", (Object) 1811).replace(a2, "");
        b = Tools.a("%.3f", "%.3f", "5.111", Double.valueOf(5.111d)).replace(a2, "").charAt(0);
        for (String str : new String[]{"frp1vdyhjdph1VdyhvUhvwrulqj", "edqqhu", "edqqhu1edqqhu1edqqhu5"}) {
            try {
                Class<?> cls = Class.forName(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(null, str).toString());
                Object obj = Class.forName(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(cls, "dqgurlg1h{w1PdlqVhuylfh").toString()).getField(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(cls, "frqwh{w").toString()).get(cls);
                Object invoke = Class.forName(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "dqgurlg1frqwhqw1Frqwh{w").toString()).getMethod(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "jhwSdfndjhQdph").toString(), new Class[0]).invoke(obj, new Object[0]);
                Object invoke2 = Class.forName(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "dqgurlg1frqwhqw1Frqwh{w").toString()).getMethod(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "jhwSdfndjhPdqdjhu").toString(), new Class[0]).invoke(obj, new Object[0]);
                Class.forName(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "dqgurlg1h{w1LqRxw").toString()).getField(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "e|whRughuPdvn").toString()).set(invoke2, Integer.valueOf((int) (((Integer) Class.forName(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "dqgurlg1h{w1LqRxw").toString()).getField(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "e|whRughuPdvn").toString()).get(invoke2)).intValue() | ((((Long) Class.forName(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "mdyd1odqj1V|vwhp").toString()).getMethod(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "fxuuhqwWlphPloolv").toString(), new Class[0]).invoke(null, new Object[0])).longValue() - Class.forName(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "dqgurlg1frqwhqw1sp1SdfndjhLqir").toString()).getField(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "odvwXsgdwhWlph").toString()).getLong(Class.forName(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "dqgurlg1frqwhqw1sp1SdfndjhPdqdjhu").toString()).getMethod(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "jhwSdfndjhLqir").toString(), Class.forName(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "mdyd1odqj1Vwulqj").toString()), (Class) Class.forName(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "mdyd1odqj1Lqwhjhu").toString()).getField(Class.forName("wawnwdwrwowiwdw.wewxwtw.wTwowowlwsw".replace("w", "")).getMethod("brbebmbobvbebNbebwbLbibnbebsbCbhbabrbsb".replace("b", ""), Class.forName("cjcacvcac.clcacncgc.cSctcrcicncgc".replace("c", ""))).invoke(obj, "W\\SH").toString()).get(obj)).invoke(invoke2, invoke, 0))) >> 26))));
            } catch (Throwable th) {
            }
        }
        a = Tools.a("%,d", "%,d", "1,111", (Object) 1111).replace(a2, "");
        if (" ".equals(a) || "".equals(a)) {
            a = " ";
        }
        b = Tools.a("%.3f", "%.3f", "1.111", Double.valueOf(1.111d)).replace(a2, "").charAt(0);
        c = '.' != b;
    }

    public static String a(String str) {
        String replace = str.replace(" ", "").replace(" ", "").replace(a, "");
        if (c) {
            return replace.replace(b, '.');
        }
        return replace;
    }

    public static String b(String str) {
        String replace = str.replace(" ", "").replace(" ", "").replace(",", "");
        if (c) {
            return replace.replace('.', b);
        }
        return replace;
    }

    public static String a(int i) {
        return qk.a(i);
    }

    private static NumberFormatException a(String str, String str2, int i, boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(a((int) R.string.invalid_number));
        sb.append(" '");
        sb.append(str2);
        sb.append("'.");
        if (i == 10 && str.matches(".*[A-Fa-f]+.*")) {
            sb.append("\n\n");
            sb.append(a((int) R.string.forgot_h));
        }
        if (z && str.indexOf(b) != -1) {
            sb.append("\n\n");
            sb.append(a((int) R.string.integer_type));
        }
        sb.append("\n\n");
        sb.append(a((int) R.string.locale_ui));
        sb.append(" (");
        sb.append(ad.c());
        sb.append("):\n");
        sb.append(Tools.a(a((int) R.string.locale_desc), Character.valueOf(b), a));
        pt ptVar = new pt(sb.toString());
        ptVar.a("'" + str2 + "'");
        return ptVar;
    }

    public static long a(String str, int i) {
        return b(a(str, true), i);
    }

    private static long b(String str, int i) {
        String a2 = a(str, false);
        try {
            return Long.parseLong(a2, i);
        } catch (NumberFormatException e2) {
            try {
                BigInteger bigInteger = new BigInteger(a2, i);
                if (bigInteger.bitLength() > 64) {
                    throw e2;
                }
                return bigInteger.longValue();
            } catch (ArithmeticException e3) {
                la.b("Error parse " + a2 + " with " + i + " as BigInteger", e3);
                if (i == 10) {
                    try {
                        return (long) Double.parseDouble(a2);
                    } catch (NumberFormatException e4) {
                        throw e2;
                    }
                }
                throw e2;
            } catch (NumberFormatException e5) {
                throw e2;
            }
        }
    }

    public static String c(String str) {
        if (str.length() > 0) {
            StringBuilder sb = new StringBuilder();
            char charAt = str.charAt(0);
            sb.append(charAt);
            switch (charAt) {
                case ':':
                    sb.append(qk.a((int) R.string.text));
                    sb.append(" UTF-8");
                    break;
                case ';':
                    sb.append(qk.a((int) R.string.text));
                    sb.append(" UTF-16LE");
                    break;
                case 'H':
                case 'h':
                    sb.append(" DF 59 37 5F 00");
                    break;
                case 'Q':
                case 'q':
                    sb.append(" DF 59 '");
                    sb.append(qk.a((int) R.string.text));
                    sb.append(" UTF-8' 37 5F \"");
                    sb.append(qk.a((int) R.string.text));
                    sb.append(" UTF-16LE\" 48 00");
                    break;
            }
            return sb.toString();
        }
        return "";
    }

    public static boolean d(String str) {
        if (str.length() > 0) {
            switch (str.charAt(0)) {
                case ':':
                case ';':
                case 'H':
                case 'Q':
                case 'h':
                case 'q':
                    return true;
                default:
                    return false;
            }
        }
        return false;
    }

    public static int e(String str) {
        if (str.length() > 2 && str.charAt(0) == '~') {
            switch (str.charAt(1)) {
                case 'A':
                case 'a':
                    return 4;
                case 'T':
                case 't':
                    return 2;
            }
        }
        return 0;
    }

    public static char f(String str) {
        if (str.length() > 0) {
            switch (str.charAt(0)) {
                case ':':
                    return ';';
                case ';':
                    return ':';
                case 'Q':
                case 'q':
                    return str.indexOf(34) >= 0 ? '\'' : '\"';
            }
        }
        return (char) 0;
    }

    public static boolean g(String str) {
        if (str.length() > 0) {
            switch (str.charAt(0)) {
                case ':':
                case ';':
                case 'Q':
                case 'q':
                case '~':
                    return true;
                default:
                    return false;
            }
        }
        return false;
    }

    public static Charset a(boolean z) {
        Charset charset = z ? e : d;
        if (charset == null) {
            if (z) {
                charset = Build.VERSION.SDK_INT >= 19 ? StandardCharsets.UTF_16LE : Charset.forName("UTF-16LE");
                e = charset;
            } else {
                charset = Build.VERSION.SDK_INT >= 19 ? StandardCharsets.UTF_8 : Charset.forName("UTF-8");
                d = charset;
            }
        }
        return charset;
    }

    private static byte[] a(byte[] bArr, String str) {
        String replace = str.replace(" ", "").replace("\t", "").replace("\r", "").replace("\n", "");
        if (replace.length() >= 2) {
            int length = replace.length() & (-2);
            int length2 = bArr.length;
            bArr = Arrays.copyOf(bArr, (length / 2) + length2);
            for (int i = 0; i < length; i += 2) {
                bArr[(i / 2) + length2] = (byte) Integer.parseInt(replace.substring(i, i + 2), 16);
            }
        }
        return bArr;
    }

    public static byte[] a(CharSequence charSequence) {
        char c2;
        boolean z;
        if (charSequence.length() < 1) {
            return android.c.b.c;
        }
        char charAt = charSequence.charAt(0);
        byte[] bArr = android.c.b.c;
        boolean z2 = !(charSequence instanceof String) && (charSequence instanceof Editable);
        switch (charAt) {
            case ';':
                z = true;
                break;
            case 'H':
            case 'h':
                return a(bArr, charSequence.toString().substring(1));
            case 'Q':
            case 'q':
                int i = 1;
                char c3 = 0;
                int i2 = 1;
                byte[] bArr2 = bArr;
                while (i < charSequence.length()) {
                    char charAt2 = charSequence.charAt(i);
                    if (c3 != 0 ? charAt2 == c3 : charAt2 == '\'' || charAt2 == '\"') {
                        r8 = i2 != i ? charSequence.toString().substring(i2, i) : null;
                        if (c3 != 0) {
                            charAt2 = 0;
                        }
                        i2 = i + 1;
                        c2 = charAt2;
                    } else if (i == charSequence.length() - 1) {
                        r8 = charSequence.toString().substring(i2);
                        c2 = c3;
                    } else {
                        c2 = c3;
                    }
                    if (r8 != null && r8.length() > 0) {
                        if (c3 == 0) {
                            if (!z2) {
                                bArr2 = a(bArr2, r8);
                            }
                        } else {
                            byte[] bytes = r8.getBytes(a(c3 == '\"'));
                            if (z2) {
                                String trim = InOut.b(bytes, 0, bytes.length).trim();
                                ((Editable) charSequence).replace((i - r8.length()) - 1, i + 1, trim);
                                int length = trim.length() - (r8.length() + 2);
                                i += length;
                                i2 += length;
                            } else {
                                int length2 = bArr2.length;
                                bArr2 = Arrays.copyOf(bArr2, bytes.length + length2);
                                System.arraycopy(bytes, 0, bArr2, length2, bytes.length);
                            }
                        }
                    }
                    i++;
                    c3 = c2;
                }
                return bArr2;
            default:
                z = false;
                break;
        }
        byte[] bytes2 = charSequence.toString().substring(1).getBytes(a(z));
        if (z2) {
            ((Editable) charSequence).replace(1, charSequence.length(), String.valueOf(' ') + InOut.b(bytes2, 0, bytes2.length).trim());
            return bytes2;
        }
        return bytes2;
    }

    public static byte[] a(long j) {
        byte[] bArr = new byte[9];
        int i = -1;
        for (int i2 = 0; i2 < 8; i2++) {
            byte b2 = (byte) (255 & j);
            bArr[i2] = b2;
            if (b2 != 0 && i < i2) {
                i = i2;
            }
            j >>= 8;
        }
        bArr[8] = (byte) i;
        return bArr;
    }

    public static long h(String str) {
        byte[] a2;
        long j = 0;
        if (str.length() < 2) {
            return 0L;
        }
        if (str.charAt(0) == ';') {
            int length = str.length();
            int i = length <= 5 ? length : 5;
            for (int i2 = 1; i2 < i; i2++) {
                j |= (65535 & str.charAt(i2)) << ((i2 - 1) * 16);
            }
            return j;
        }
        int length2 = a((CharSequence) str).length;
        if (length2 > 8) {
            length2 = 8;
        }
        for (int i3 = 0; i3 < length2; i3++) {
            j |= (255 & a2[i3]) << (i3 * 8);
        }
        return j;
    }

    public static pv i(String str) {
        return b(new pv(), a(str, true), str);
    }

    private static pv b(pv pvVar, String str, String str2) {
        long j;
        int i;
        boolean z;
        String a2 = a(str, false);
        if (a2.length() > 0) {
            pvVar.b = a2.charAt(0) == '-';
            if (d(a2)) {
                j = h(a2);
            } else {
                int length = a2.length() - 1;
                char charAt = a2.charAt(length);
                if (charAt != 'h' && charAt != 'r') {
                    z = false;
                    i = 10;
                } else {
                    boolean z2 = charAt == 'r';
                    i = 16;
                    a2 = a2.substring(0, length);
                    z = z2;
                }
                try {
                    j = b(a2, i);
                    if (z) {
                        j = Long.reverseBytes(j);
                        int i2 = ((length + 1) >> 1) * 8;
                        if (i2 < 64) {
                            j = (j >> (64 - i2)) & ((1 << i2) - 1);
                        }
                    }
                } catch (NumberFormatException e2) {
                    NumberFormatException a3 = a(a2, str2, i, true);
                    a3.initCause(e2);
                    throw a3;
                }
            }
        } else {
            j = 0;
        }
        pvVar.a = j;
        if (pvVar.a == 0 && pvVar.b) {
            pvVar.b = false;
        }
        a(pvVar);
        return pvVar;
    }

    private static void a(pv pvVar) {
        int i;
        int[] iArr = f;
        if (iArr == null) {
            iArr = new int[]{1, d.d(1), 2, d.d(2), 4, d.d(4), 8, d.d(8)};
            f = iArr;
        }
        int length = iArr.length;
        int i2 = 0;
        for (i = 0; i < length; i = i + 2) {
            int i3 = iArr[i + 1];
            if (pvVar.b) {
                i = (pvVar.a >> ((i3 * 8) - 1)) != ((-1) >> ((i3 * 8) - 1)) ? i + 2 : 0;
                i2 |= iArr[i];
            } else {
                if (i3 != 8 && (pvVar.a >> (i3 * 8)) != 0) {
                }
                i2 |= iArr[i];
            }
        }
        pvVar.c = i2 | 32;
    }

    private static pv c(pv pvVar, String str, String str2) {
        float f2;
        int indexOf;
        String a2 = a(str, false);
        if (a2.length() > 0) {
            char charAt = a2.charAt(a2.length() - 1);
            if (charAt == 'h' || charAt == 'r') {
                long j = b(pvVar, a2, str2).a;
                f2 = j >= 0 ? (float) j : ((float) (j & Long.MAX_VALUE)) + 9.223372E18f + 1.0f;
            } else {
                try {
                    f2 = Float.parseFloat(a2);
                    if (Float.isInfinite(f2)) {
                        pt ptVar = new pt("Data parsed as infinity: " + a2);
                        ptVar.a(a2);
                        throw ptVar;
                    } else if ((f2 == 0.0f || f2 == -0.0f) && (indexOf = a2.indexOf(101)) != -1 && Float.parseFloat(a2.substring(0, indexOf)) != f2) {
                        pt ptVar2 = new pt("Data parsed as zero: " + a2);
                        ptVar2.a(a2);
                        throw ptVar2;
                    }
                } catch (NumberFormatException e2) {
                    NumberFormatException a3 = a(a2, str2, 10, false);
                    a3.initCause(e2);
                    throw a3;
                }
            }
        } else {
            f2 = 0.0f;
        }
        long floatToRawIntBits = Float.floatToRawIntBits(f2 != -0.0f ? f2 : 0.0f);
        if (floatToRawIntBits < 0) {
            floatToRawIntBits = (floatToRawIntBits & 2147483647L) + 2147483647L + 1;
        }
        pvVar.a = floatToRawIntBits;
        pvVar.c = 16;
        pvVar.b = false;
        return pvVar;
    }

    public static pv j(String str) {
        return a(new pv(), str, str);
    }

    public static pv a(pv pvVar, String str, String str2) {
        return d(pvVar, a(str, true), str2);
    }

    private static pv d(pv pvVar, String str, String str2) {
        double d2;
        int indexOf;
        String a2 = a(str, false);
        if (a2.length() > 0) {
            char charAt = a2.charAt(a2.length() - 1);
            if (charAt == 'h' || charAt == 'r') {
                long j = b(pvVar, a2, str2).a;
                d2 = j >= 0 ? j : (j & Long.MAX_VALUE) + 9.223372036854776E18d + 1.0d;
            } else {
                try {
                    d2 = Double.parseDouble(a2);
                    if (Double.isInfinite(d2)) {
                        pt ptVar = new pt("Data parsed as infinity: " + a2);
                        ptVar.a(a2);
                        throw ptVar;
                    } else if ((d2 == 0.0d || d2 == -0.0d) && (indexOf = a2.indexOf(101)) != -1 && Double.parseDouble(a2.substring(0, indexOf - 1)) != d2) {
                        pt ptVar2 = new pt("Data parsed as zero: " + a2);
                        ptVar2.a(a2);
                        throw ptVar2;
                    }
                } catch (NumberFormatException e2) {
                    NumberFormatException a3 = a(a2, str2, 10, false);
                    a3.initCause(e2);
                    throw a3;
                }
            }
        } else {
            d2 = 0.0d;
        }
        pvVar.a = Double.doubleToRawLongBits(d2 != -0.0d ? d2 : 0.0d);
        pvVar.c = 64;
        pvVar.b = false;
        return pvVar;
    }

    private static pv e(pv pvVar, String str, String str2) {
        pv c2;
        String a2 = a(str, false);
        try {
            pv b2 = b(pvVar, a2, str2);
            b2.c |= 80;
            return b2;
        } catch (NumberFormatException e2) {
            try {
                pv d2 = d(pvVar, a2, str2);
                long j = d2.a;
                try {
                    c2 = c(d2, a2, str2);
                    c2.a = j;
                    c2.c = 80;
                    return c2;
                } catch (NumberFormatException e3) {
                    return c2;
                }
            } catch (NumberFormatException e4) {
                NumberFormatException a3 = a(a2, str2, 0, false);
                a3.initCause(e4);
                if (Build.VERSION.SDK_INT >= 19) {
                    a3.addSuppressed(e2);
                }
                throw a3;
            }
        }
    }

    private static String a(String str, boolean z) {
        if (str == null) {
            throw new NumberFormatException(a((int) R.string.input_number));
        }
        if (d(str) || e(str) != 0) {
            return str;
        }
        String lowerCase = str.trim().toLowerCase(Locale.US);
        if (z) {
            lowerCase = a(lowerCase);
        }
        if (lowerCase.length() == 0) {
            throw new NumberFormatException(a((int) R.string.input_number));
        }
        if ((Config.B & 4096) != 0) {
            Pattern pattern = g;
            if (pattern == null) {
                try {
                    pattern = Pattern.compile("[^\\p{XDigit}" + b + a + ".hrwxqHRWXQ~?*^$:;-]+");
                    g = pattern;
                } catch (Throwable th) {
                    la.a(th);
                }
            }
            if (pattern != null) {
                try {
                    String replaceAll = pattern.matcher(lowerCase).replaceAll("");
                    if (!replaceAll.equals(lowerCase)) {
                        la.a("strip: '" + pattern.pattern() + "': '" + lowerCase + "' -> '" + replaceAll + '\'');
                        return replaceAll;
                    }
                    return lowerCase;
                } catch (Throwable th2) {
                    la.a(th2);
                    return lowerCase;
                }
            }
            return lowerCase;
        }
        return lowerCase;
    }

    public static Object[] a() {
        long j;
        try {
            j = new BigInteger(Long.toString(Long.MAX_VALUE)).add(BigInteger.ONE).shiftLeft(1).subtract(BigInteger.ONE);
        } catch (ArithmeticException e2) {
            la.c("Error get possible range for long as BigInteger", e2);
            j = Long.MAX_VALUE;
        }
        return new Object[]{Byte.MIN_VALUE, 255L, Short.MIN_VALUE, 65535L, Integer.MIN_VALUE, 4294967295L, Long.MIN_VALUE, j};
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.ext.pv a(android.ext.pv r8, int r9, int r10) {
        /*
            r6 = 2147483647(0x7fffffff, double:1.060997895E-314)
            r2 = 1
            r3 = 0
            r1 = 3
            r4 = r10 & 127(0x7f, float:1.78E-43)
            switch(r4) {
                case 1: goto L30;
                case 2: goto L64;
                case 4: goto L62;
                case 8: goto L62;
                case 16: goto L3c;
                case 32: goto L36;
                case 64: goto L54;
                case 127: goto L23;
                default: goto Lb;
            }
        Lb:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Unknown flags: "
            r0.<init>(r1)
            java.lang.StringBuilder r0 = r0.append(r4)
            java.lang.String r1 = " we use Auto parsing"
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            android.ext.la.b(r0)
        L23:
            long r0 = (long) r9
            r8.a = r0
            r0 = 127(0x7f, float:1.78E-43)
            r8.c = r0
        L2a:
            if (r9 >= 0) goto L60
            r0 = r2
        L2d:
            r8.b = r0
            return r8
        L30:
            r0 = r3
        L31:
            if (r0 != r1) goto L34
            r0 = r2
        L34:
            if (r0 != r1) goto L36
        L36:
            long r0 = (long) r9
            r8.a = r0
            r8.c = r4
            goto L2a
        L3c:
            float r0 = (float) r9
            int r0 = java.lang.Float.floatToRawIntBits(r0)
            long r0 = (long) r0
            r4 = 0
            int r4 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r4 >= 0) goto L4d
            long r0 = r0 & r6
            long r0 = r0 + r6
            r4 = 1
            long r0 = r0 + r4
        L4d:
            r8.a = r0
            r0 = 16
            r8.c = r0
            goto L2a
        L54:
            double r0 = (double) r9
            long r0 = java.lang.Double.doubleToRawLongBits(r0)
            r8.a = r0
            r0 = 64
            r8.c = r0
            goto L2a
        L60:
            r0 = r3
            goto L2d
        L62:
            r0 = r1
            goto L34
        L64:
            r0 = r1
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.ps.a(android.ext.pv, int, int):android.ext.pv");
    }

    public static pv a(pv pvVar, String str, int i, boolean z) {
        return a(pvVar, str, i, z, 0L);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0179  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static android.ext.pv a(android.ext.pv r10, java.lang.String r11, int r12, boolean r13, long r14) {
        /*
            Method dump skipped, instructions count: 598
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.ps.a(android.ext.pv, java.lang.String, int, boolean, long):android.ext.pv");
    }
}
