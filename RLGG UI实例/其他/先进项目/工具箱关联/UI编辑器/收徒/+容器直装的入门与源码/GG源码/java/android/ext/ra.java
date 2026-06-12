package android.ext;

import android.content.DialogInterface;
import android.ext.Script;
import android.view.View;
import catch_.me_.if_.you_.can_.R;
import java.util.Arrays;

/* compiled from: src */
/* loaded from: classes.dex */
public class ra extends re implements View.OnClickListener {
    public static String a = null;

    public ra() {
        super(R.string.search_known_value, R.drawable.ic_magnify_white_24dp);
    }

    public static rc a(pv pvVar, String str, int i, int i2) {
        String trim = str.trim();
        String str2 = "~~";
        if (trim.contains("~~")) {
            i2 = i2 == 536870912 ? 268435456 : 536870912;
        } else {
            str2 = "~";
        }
        String[] split = trim.split(str2);
        if (split.length > 2) {
            throw new NumberFormatException(String.valueOf(qk.a((int) R.string.too_many)) + " '" + str2 + '\'');
        }
        if (split.length != 2) {
            split = (String[]) Arrays.copyOf(split, 2);
        }
        long[] jArr = new long[2];
        int[] iArr = new int[2];
        int i3 = 1;
        while (i3 >= 0) {
            String str3 = split[i3];
            String trim2 = str3 == null ? "" : str3.trim();
            pvVar = ps.a(pvVar, trim2, i3 == 1 ? i : iArr[1], false);
            if (i == 127 && pvVar.c == 64 && "BWDXFQEAbwdxfqea".indexOf(trim2.charAt(trim2.length() - 1)) == -1) {
                pvVar.c |= 16;
            }
            jArr[i3] = pvVar.a;
            iArr[i3] = pvVar.c;
            i3--;
        }
        int i4 = iArr[1] & iArr[0];
        String str4 = "";
        if (i4 == 0) {
            str4 = String.valueOf("") + qk.a((int) R.string.range_bounds_diff_types) + '\n';
        }
        if (str4.length() > 0) {
            throw new NumberFormatException(str4);
        }
        if (i == 127 && (i4 & 32) == 0) {
            for (int i5 = 0; i5 < 2; i5++) {
                if ((iArr[i5] & 32) != 0) {
                    jArr[i5] = Double.doubleToRawLongBits(jArr[i5]);
                }
            }
        }
        rc rcVar = new rc();
        rcVar.a = jArr[0];
        rcVar.b = jArr[1];
        rcVar.c = i4;
        rcVar.d = i2;
        a(rcVar, trim);
        return rcVar;
    }

    private static void a(rc rcVar, String str) {
        int i = rcVar.c & 127;
        long d = 1 << ((d.d(i) * 8) - 1);
        if (Integer.bitCount(i) == 1 && i != 16 && i != 64 && str.indexOf(45) == -1 && (rcVar.a & d) == 0 && (d & rcVar.b) != 0) {
            la.a("unsigned search 3: '" + str + "' " + rcVar.a + ' ' + rcVar.b + ' ' + Integer.toHexString(i) + ' ' + Integer.toHexString(rcVar.d));
            long j = rcVar.b;
            rcVar.b = rcVar.a;
            rcVar.a = j;
            rcVar.d = rcVar.d == 536870912 ? 268435456 : 536870912;
            la.a("unsigned search 4: '" + str + "' " + rcVar.a + ' ' + rcVar.b + ' ' + Integer.toHexString(i) + ' ' + Integer.toHexString(rcVar.d));
        }
    }

    private static boolean b(byte b, String str, int i, boolean z, int i2, long j, long j2, boolean z2, long j3) {
        String trim = str.trim();
        rd a2 = a(trim, true);
        int i3 = a2 != null ? a2.b : 0;
        if (a2 != null) {
            trim = a2.a;
        }
        rc a3 = a(null, trim, i, i2);
        String str2 = "";
        if (z) {
            str2 = String.valueOf("") + Tools.a(qk.a((int) R.string.does_not_support), qk.a((int) R.string.help_range_search_title), qk.a((int) R.string.mode_hacking)) + '\n';
        }
        if (i2 != 536870912 && i2 != 268435456) {
            str2 = String.valueOf(str2) + Tools.a(qk.a((int) R.string.does_not_support), qk.a((int) R.string.help_range_search_title), d.b().get(i2)) + '\n';
        }
        if (str2.length() > 0) {
            throw new NumberFormatException(str2);
        }
        if (i3 != 0) {
            a3.c |= 2097152;
        }
        return a(b, a3.a, a3.b, i3, a3.c | a3.d, j, j2, z2, j3);
    }

    private static boolean a(byte b, long j, long j2, int i, int i2, long j3, long j4, boolean z, long j5) {
        MainService mainService = MainService.instance;
        if (mainService.S()) {
            if (mainService.aj != 0 && z) {
                mainService.a(b);
            }
            if (mainService.aj == 0) {
                mainService.ak = false;
                mainService.k.l(b);
            }
            mainService.b(b);
            mainService.al = false;
            mainService.k.a(b, j, j2, i, i2, j3, j4, j5);
            MainService.a(i2, (int) b);
            return false;
        }
        throw new NumberFormatException(qk.a((int) R.string.busy_dialog_fail));
    }

    private static rb b(String str, int i, boolean z) {
        String trim = str.trim();
        String str2 = z ? "::" : ":";
        String[] split = trim.split(str2);
        if (split.length > 2) {
            throw new NumberFormatException(String.valueOf(qk.a((int) R.string.too_many)) + " '" + str2 + '\'');
        }
        int i2 = (int) (split.length == 1 ? 512L : ps.i(split[1]).a);
        if (i2 < 2 || i2 > 65536) {
            pt ptVar = new pt(String.valueOf(Tools.a(qk.a((int) R.string.invalid_area), 2, 65536)) + ' ' + i2);
            ptVar.a(65536L);
            throw ptVar;
        }
        String[] split2 = split[0].split(";");
        if (split2.length < 2) {
            throw new NumberFormatException(qk.a((int) R.string.union_need_two_numbers));
        }
        if (split2.length > 64) {
            throw new NumberFormatException(String.valueOf(Tools.c((int) R.string.too_many_union_numbers)) + ": 64");
        }
        rb rbVar = new rb(split2.length);
        pv pvVar = null;
        for (int i3 = 0; i3 < split2.length; i3++) {
            if (split2[i3].indexOf(126) != -1) {
                rc a2 = a(pvVar, split2[i3], i, 536870912);
                rbVar.a[i3] = a2.a;
                rbVar.b[i3] = a2.b;
                rbVar.c[i3] = a2.d | a2.c;
            } else {
                pvVar = ps.a(pvVar, split2[i3], i, false);
                rbVar.a[i3] = pvVar.a;
                rbVar.b[i3] = 0;
                rbVar.c[i3] = pvVar.c;
            }
        }
        rbVar.d = i2;
        return rbVar;
    }

    public static int a(String str, int i, boolean z) {
        int i2 = 2;
        try {
            rb b = b(str, i, z);
            int length = b.c.length - 1;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                i3++;
                i4 = d.d(b.c[i3]) + i4;
            }
            i2 = i4 + 1;
            return i2;
        } catch (NumberFormatException e) {
            return i2;
        }
    }

    private static boolean a(byte b, String str, int i, boolean z, boolean z2, int i2, long j, long j2, boolean z3, long j3) {
        int i3;
        rb b2 = b(str.trim(), i, z);
        int i4 = z ? 4194304 : 0;
        String str2 = "";
        if (z2) {
            str2 = String.valueOf("") + Tools.a(qk.a((int) R.string.does_not_support), qk.a((int) R.string.help_group_search_title), qk.a((int) R.string.mode_hacking)) + '\n';
        }
        if (i2 != 536870912 && i2 != 268435456) {
            str2 = String.valueOf(str2) + Tools.a(qk.a((int) R.string.does_not_support), qk.a((int) R.string.help_group_search_title), d.b().get(i2)) + '\n';
            i3 = i4;
        } else {
            i3 = i4 | i2;
        }
        if (str2.length() > 0) {
            throw new NumberFormatException(str2);
        }
        return a(b, b2.a, b2.b, b2.c, b2.d, i3, j, j2, z3, j3);
    }

    private static boolean a(byte b, long[] jArr, long[] jArr2, int[] iArr, int i, int i2, long j, long j2, boolean z, long j3) {
        MainService mainService = MainService.instance;
        if (mainService.S()) {
            if (mainService.aj != 0 && z) {
                mainService.a(b);
            }
            if (mainService.aj == 0) {
                mainService.ak = false;
                mainService.k.l(b);
            }
            mainService.i();
            mainService.al = false;
            mainService.k.a(b, i2, i, iArr, jArr, jArr2, j, j2, j3);
            int i3 = 0;
            for (int i4 : iArr) {
                i3 |= i4;
            }
            MainService.a(i3, (int) b);
            return false;
        }
        throw new NumberFormatException(qk.a((int) R.string.busy_dialog_fail));
    }

    public static rd a(String str, boolean z) {
        if (ps.d(str) || ps.e(str) != 0 || (str.indexOf(88) == -1 && str.indexOf(120) == -1)) {
            return null;
        }
        rd rdVar = new rd();
        String[] split = str.split("[Xx]");
        String str2 = split.length == 2 ? split[1] : "";
        int i = (int) ps.a((pv) null, str2, 2, false).a;
        rdVar.a = split.length > 0 ? split[0] : "";
        if (z && (i < 1 || i > 4096)) {
            pt ptVar = new pt(String.valueOf(Tools.a(qk.a((int) R.string.number_out_of_range), str2)) + " [1; 4096]");
            ptVar.a(str2);
            throw ptVar;
        }
        rdVar.b = i;
        return rdVar;
    }

    public static boolean a(String str, int i, boolean z, int i2, long j, long j2, boolean z2, long j3) {
        String c = c(str);
        boolean a2 = a((byte) 0, c, i, z, i2, j, j2, z2, j3);
        qm qmVar = MainService.instance.h;
        if (qmVar != null) {
            if (z2) {
                qmVar.write("\ngg.clearResults()\n");
            }
            if (z2 || MainService.instance.aj == 0) {
                qmVar.write("gg.searchNumber(");
            } else {
                qmVar.write("gg.refineNumber(");
            }
            Script.Consts.b(qmVar, c);
            qmVar.write(", ");
            Script.Consts.a(qmVar, qmVar.a.b, i);
            qmVar.write(", ");
            qmVar.write(Boolean.toString(z));
            qmVar.write(", ");
            Script.Consts.a(qmVar, qmVar.a.d, i2);
            qmVar.write(", ");
            Script.Consts.a(qmVar, j);
            qmVar.write(", ");
            Script.Consts.a(qmVar, j2);
            qmVar.write(", ");
            qmVar.write(Long.toString(j3));
            qmVar.write(")\n");
        }
        return a2;
    }

    public static boolean a(byte b, int i, byte[] bArr, long j, long j2, boolean z, long j3) {
        int i2 = i & 127;
        MainService mainService = MainService.instance;
        if (mainService.aj != 0 && !z) {
            i2 &= MainService.a() & 127;
        }
        if (i2 == 0) {
            mainService.a(b);
            return true;
        } else if (mainService.S()) {
            if (mainService.aj != 0 && z) {
                mainService.a(b);
            }
            if (mainService.aj == 0) {
                mainService.ak = false;
                mainService.k.l(b);
            }
            mainService.b(b);
            mainService.al = false;
            mainService.k.a(b, i2, bArr, j, j2, j3);
            MainService.a(i2, (int) b);
            return false;
        } else {
            throw new NumberFormatException(qk.a((int) R.string.busy_dialog_fail));
        }
    }

    public static boolean a(byte b, short s, long j, long j2, long j3) {
        MainService mainService = MainService.instance;
        if (mainService.aj == 0) {
            mainService.a(b);
            return true;
        } else if (mainService.S()) {
            mainService.b(b);
            mainService.al = false;
            qh qhVar = mainService.ap;
            int i = (qhVar == null || !qhVar.n) ? 4 : 32;
            mainService.k.a(b, s, i, j, j2, j3);
            MainService.a(i, (int) b);
            return false;
        } else {
            throw new NumberFormatException(qk.a((int) R.string.busy_dialog_fail));
        }
    }

    public static boolean a(byte b, String str, int i, boolean z, int i2, long j, long j2, boolean z2, long j3) {
        int i3;
        String str2;
        int i4 = i & 127;
        int i5 = i2 & 1006632960;
        MainService mainService = MainService.instance;
        if (ps.d(str)) {
            boolean a2 = a(b, str.charAt(0) == ';' ? 2 : 1, ps.a((CharSequence) str), j, j2, z2, j3);
            a = str;
            return a2;
        } else if (str.indexOf(59) != -1) {
            return a(b, str, i4, str.contains("::"), z, i5, j, j2, z2, j3);
        } else {
            if (str.indexOf(126) != -1 && ps.e(str) == 0) {
                return b(b, str, i4, z, i5, j, j2, z2, j3);
            }
            if (mainService.aj != 0 && !z2) {
                i4 &= MainService.a() & 127;
            }
            if (i4 == 0) {
                mainService.a(b);
                return true;
            }
            rd a3 = a(str, true);
            int i6 = a3 != null ? a3.b : 0;
            if (a3 != null) {
                str = a3.a;
            }
            pv pvVar = new pv();
            long a4 = d.a(pvVar, str, i4);
            int i7 = pvVar.c & i4;
            if (Integer.bitCount(i7) > 1) {
                i3 = d.a(i7, a4, pvVar.b);
            } else if (!z && i7 != 16 && i7 != 64 && ((i5 == 134217728 || i5 == 67108864) && str.indexOf(45) == -1 && ((1 << ((d.d(i7) * 8) - 1)) & a4) != 0)) {
                la.a("unsigned search 1: '" + str + "' " + Integer.toHexString(i7) + ' ' + z + ' ' + Integer.toHexString(i5));
                if (i5 == 134217728) {
                    str2 = String.valueOf(str) + "~0";
                    i5 = 268435456;
                } else if (i5 == 67108864) {
                    str2 = String.valueOf(str) + "~-1";
                    i5 = 536870912;
                } else {
                    str2 = str;
                }
                la.a("unsigned search 2: '" + str2 + "' " + Integer.toHexString(i7) + ' ' + z + ' ' + Integer.toHexString(i5));
                return a(b, str2, i7, z, i5, j, j2, z2, j3);
            } else {
                i3 = i7;
            }
            if (z && i6 == 0) {
                i5 = 33554432;
            }
            int i8 = i5 | i3;
            if (i6 != 0) {
                if (z) {
                    throw new NumberFormatException(Tools.a(qk.a((int) R.string.does_not_support), qk.a((int) R.string.help_xor_search_title), qk.a((int) R.string.mode_hacking)));
                }
                i8 |= 2097152;
            }
            if (mainService.S()) {
                if (mainService.aj != 0 && z2) {
                    mainService.a(b);
                }
                if (mainService.aj == 0) {
                    mainService.ak = false;
                    mainService.k.l(b);
                }
                mainService.b(b);
                mainService.al = false;
                mainService.k.a(b, a4, i6, i8, j, j2, j3);
                MainService.a(i3, (int) b);
                return false;
            }
            throw new NumberFormatException(qk.a((int) R.string.busy_dialog_fail));
        }
    }

    @Override // android.ext.re
    public void a(DialogInterface dialogInterface, int i) {
        a(this.h.f(), i, this.h.k(), this.h.e(), this.h.d(0), this.h.d(1), this.g == -3, this.h.p());
    }

    public void a(String str) {
        if (str == null) {
            str = "";
        }
        this.b = str;
        c().performClick();
    }

    public void b(String str) {
        c().performClick();
        MemoryRange memoryRange = this.h.d;
        memoryRange.setType(2);
        memoryRange.setAddress(str);
    }

    @Override // android.ext.re, android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.b = this.h.f();
        this.c = this.h.e();
        MainService.ai = this.h.d();
        super.onDismiss(dialogInterface);
    }
}
