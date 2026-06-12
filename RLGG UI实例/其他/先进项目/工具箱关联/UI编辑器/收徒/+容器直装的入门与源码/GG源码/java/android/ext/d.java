package android.ext;

import android.util.SparseIntArray;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class d {
    private static android.fix.j e;
    private static android.fix.j f;
    private static android.fix.j g;
    private static android.fix.j h;
    private static final int[] k;
    public long b;
    public long c;
    public int d;
    public static final long[] a = {0, 255, 65535, 16777215, 4294967295L, 1099511627775L, 281474976710655L, 72057594037927935L, -1};
    private static SparseIntArray i = null;
    private static int j = 16777215;

    static {
        e = null;
        f = null;
        g = null;
        h = null;
        Object[] a2 = ps.a();
        android.fix.j jVar = new android.fix.j();
        android.fix.j jVar2 = new android.fix.j();
        a(jVar, jVar2, 1, "B: %s (%,d - %,d)", R.string.type_byte, a2[0], a2[1]);
        a(jVar, jVar2, 2, "W: %s (%,d - %,d)", R.string.type_word, a2[2], a2[3]);
        a(jVar, jVar2, 4, "D: %s (%,d - %,d)", R.string.type_dword, a2[4], a2[5]);
        a(jVar, jVar2, 8, "X: %s (%,d - %,d)", R.string.type_xor, a2[4], a2[5]);
        a(jVar, jVar2, 16, "F: %s (%.1e - %.1e)", R.string.type_float, Float.valueOf(-3.4028235E38f), Float.valueOf(Float.MAX_VALUE));
        a(jVar, jVar2, 32, "Q: %s (%,d - %,d)", R.string.type_qword, a2[6], a2[7]);
        a(jVar, jVar2, 64, "E: %s (%.1e - %.1e)", R.string.type_double, Double.valueOf(-1.7976931348623157E308d), Double.valueOf(Double.MAX_VALUE));
        f = jVar2;
        e = jVar;
        updateLocale();
        android.fix.j jVar3 = new android.fix.j();
        jVar3.append(536870912, "=");
        jVar3.append(67108864, "≥");
        jVar3.append(134217728, "≤");
        jVar3.append(268435456, "≠");
        g = jVar3;
        android.fix.j jVar4 = new android.fix.j();
        jVar4.append(536870912, "=");
        jVar4.append(268435456, "≠");
        h = jVar4;
        ad.a(d.class);
        k = new int[]{8, 32, 1, 2, 64, 16, 4};
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d() {
    }

    public d(d dVar) {
        this(dVar.b, dVar.c, dVar.d);
    }

    public d(long j2, long j3, int i2) {
        this.b = j2;
        this.c = j3;
        this.d = i2;
    }

    public d a() {
        return new d(this);
    }

    private static void a(android.fix.j jVar, android.fix.j jVar2, int i2, String str, int i3, Object obj, Object obj2) {
        String a2 = qk.a(i3);
        int k2 = k(i2);
        jVar.append(i2, Tools.a((CharSequence) Tools.a(str, a2, obj, obj2), k2));
        jVar2.append(i2, Tools.a((CharSequence) a2, k2));
    }

    public static void updateLocale() {
        a(e, f, 127, "A: %s (%.1e - %.1e) (" + qk.a((int) R.string.slow) + ')', R.string.type_auto, Double.valueOf(-1.7976931348623157E308d), Double.valueOf(Double.MAX_VALUE));
    }

    public static int a(int i2) {
        switch (i2) {
            case 1:
                return 50;
            case 2:
                return 40;
            case 4:
                return 10;
            case 8:
                return 70;
            case 16:
                return 20;
            case 32:
                return 60;
            case 64:
                return 30;
            default:
                return 250;
        }
    }

    public static e[] a(android.fix.j jVar, SparseIntArray sparseIntArray) {
        int i2;
        int i3;
        int size = jVar.size();
        e[] eVarArr = new e[size];
        if (size == 1) {
            int keyAt = jVar.keyAt(0);
            eVarArr[0] = new e(keyAt, (CharSequence) jVar.valueAt(0), sparseIntArray == null ? 0 : sparseIntArray.get(keyAt));
        } else {
            boolean[] zArr = new boolean[size];
            int i4 = size - 1;
            for (int i5 = 0; i5 < size; i5++) {
                int keyAt2 = jVar.keyAt(i5);
                if (keyAt2 > -10) {
                    break;
                }
                eVarArr[i4] = new e(keyAt2, (CharSequence) jVar.valueAt(i5), sparseIntArray == null ? 0 : sparseIntArray.get(keyAt2));
                zArr[i5] = true;
                i4--;
            }
            int[] iArr = k;
            int length = iArr.length;
            int i6 = 0;
            while (i6 < length) {
                int i7 = iArr[i6];
                int indexOfKey = jVar.indexOfKey(i7);
                if (indexOfKey < 0) {
                    i3 = i4;
                } else if (zArr[indexOfKey]) {
                    i3 = i4;
                } else {
                    eVarArr[i4] = new e(i7, (CharSequence) jVar.valueAt(indexOfKey), sparseIntArray == null ? 0 : sparseIntArray.get(i7));
                    zArr[indexOfKey] = true;
                    i3 = i4 - 1;
                }
                i6++;
                i4 = i3;
            }
            int i8 = 0;
            int i9 = 0;
            while (i8 < size) {
                if (zArr[i8]) {
                    i2 = i9;
                } else {
                    int keyAt3 = jVar.keyAt(i8);
                    eVarArr[i9] = new e(keyAt3, (CharSequence) jVar.valueAt(i8), sparseIntArray == null ? 0 : sparseIntArray.get(keyAt3));
                    i2 = i9 + 1;
                }
                i8++;
                i9 = i2;
            }
        }
        return eVarArr;
    }

    public static android.fix.j b() {
        return g;
    }

    public static android.fix.j c() {
        return h;
    }

    public static android.fix.j b(int i2) {
        return a(i2, false);
    }

    public static android.fix.j a(int i2, boolean z) {
        android.fix.j jVar = new android.fix.j();
        int size = e.size();
        for (int i3 = 0; i3 < size; i3++) {
            int keyAt = e.keyAt(i3);
            if ((i2 & keyAt) == keyAt) {
                jVar.append(keyAt, (CharSequence) e.valueAt(i3));
            }
        }
        if (z && jVar.get(i2) == null) {
            jVar.append(i2, (CharSequence) e.get(127));
        }
        return jVar;
    }

    public static android.fix.j c(int i2) {
        return a(i2, 0L);
    }

    public static android.fix.j a(int i2, long j2) {
        android.fix.j b = b(i2);
        b.remove(127);
        if ((j2 & 3) != 0) {
            b.remove(32);
            b.remove(64);
        }
        if ((j2 & 3) != 0) {
            b.remove(4);
            b.remove(8);
            b.remove(16);
        }
        if ((1 & j2) != 0) {
            b.remove(2);
        }
        return b;
    }

    public static int a(long j2, boolean z) {
        return a(j2, z, (SparseIntArray) null);
    }

    public static int a(long j2, boolean z, SparseIntArray sparseIntArray) {
        int i2 = 0;
        if ((3 & j2) == 0) {
            if (z) {
                return 32;
            }
            i2 = 96;
            if (sparseIntArray != null) {
                sparseIntArray.put(32, sparseIntArray.get(32) + 1);
                sparseIntArray.put(64, sparseIntArray.get(64) + 1);
            }
        }
        int i3 = i2;
        if ((3 & j2) == 0) {
            if (z) {
                return 4;
            }
            i3 = i3 | 4 | 8 | 16;
            if (sparseIntArray != null) {
                sparseIntArray.put(4, sparseIntArray.get(4) + 1);
                sparseIntArray.put(8, sparseIntArray.get(8) + 1);
                sparseIntArray.put(16, sparseIntArray.get(16) + 1);
            }
        }
        if ((1 & j2) == 0) {
            if (z) {
                return 2;
            }
            i3 |= 2;
            if (sparseIntArray != null) {
                sparseIntArray.put(2, sparseIntArray.get(2) + 1);
            }
        }
        int i4 = i3 | 1;
        if (sparseIntArray != null) {
            sparseIntArray.put(1, sparseIntArray.get(1) + 1);
            return i4;
        }
        return i4;
    }

    public int d() {
        return d(this.d);
    }

    public static int d(int i2) {
        int i3 = i2 & 127;
        if ((i3 & 96) != 0) {
            return 8;
        }
        if ((i3 & 28) != 0) {
            return 4;
        }
        if ((i3 & 2) != 0) {
            return 2;
        }
        return (i3 & 1) != 0 ? 1 : 8;
    }

    public int e() {
        return e(this.d);
    }

    public static int e(int i2) {
        int i3 = i2 & 127;
        if ((i3 & 96) == 0 && (i3 & 28) == 0) {
            if ((i3 & 2) != 0) {
                return 2;
            }
            return (i3 & 1) != 0 ? 1 : 4;
        }
        return 4;
    }

    public static int f(int i2) {
        int i3 = i2 & 127;
        if ((i3 & 96) != 0) {
            return 3;
        }
        if ((i3 & 28) != 0) {
            return 2;
        }
        if ((i3 & 2) != 0) {
            return 1;
        }
        return (i3 & 1) != 0 ? 0 : 3;
    }

    public long f() {
        return a(this.b, this.d);
    }

    public static long a(long j2, int i2) {
        return j2;
    }

    public String g() {
        return b(this.b, this.d);
    }

    public static String b(long j2, int i2) {
        return ts.a(8, a(j2, i2));
    }

    public String h() {
        return a(this.b, this.c, this.d);
    }

    public static String a(long j2, long j3, int i2) {
        return b(j2, j3, i2).trim();
    }

    public String i() {
        return b(this.b, this.c, this.d);
    }

    public static String b(long j2, long j3, int i2) {
        String str = null;
        int i3 = i2 & 127;
        switch (i3) {
            case 8:
                j3 ^= j2;
                break;
            case 16:
                str = ek.c(j3);
                break;
            case 64:
            case 80:
                str = ek.b(j3);
                break;
        }
        if (str == null) {
            return gv.a(j3, i3);
        }
        return str;
    }

    public String j() {
        return a(this.b, this.c, this.d, true);
    }

    public static String c(long j2, long j3, int i2) {
        return a(j2, j3, i2, true);
    }

    public String k() {
        return a(this.b, this.c, this.d, false);
    }

    public static String d(long j2, long j3, int i2) {
        return a(j2, j3, i2, false);
    }

    private static String a(long j2, long j3, int i2, boolean z) {
        int i3 = i2 & 127;
        long j4 = i3 == 8 ? j3 ^ j2 : j3;
        if (z) {
            int d = d(i3);
            j4 = Long.reverseBytes(j4) >> (64 - (d * 8));
            if (d != 8) {
                j4 &= (1 << (d * 8)) - 1;
            }
        }
        return gv.b(j4, i3, true);
    }

    public void a(String str) {
        this.c = a(this.b, str, this.d);
    }

    public static int a(int i2, long j2, boolean z) {
        int i3;
        if (i2 != 80 && i2 != 64) {
            if (z) {
                i3 = (j2 >> 7) == -1 ? 0 : 1;
                if ((j2 >> 15) != -1) {
                    i3 |= 2;
                }
                if ((j2 >> 31) != -1) {
                    i3 = i3 | 4 | 8;
                }
            } else {
                i3 = (j2 >> 8) == 0 ? 0 : 1;
                if ((j2 >> 16) != 0) {
                    i3 |= 2;
                }
                if ((j2 >> 32) != 0) {
                    i3 = i3 | 4 | 8;
                }
            }
            return i2 & (i3 ^ (-1));
        }
        return i2;
    }

    public static long c(long j2, int i2) {
        long j3;
        switch (i2 & 127) {
            case 1:
                j3 = (byte) j2;
                break;
            case 2:
                j3 = (short) j2;
                break;
            case 3:
            case 5:
            case 6:
            case 7:
            default:
                j3 = j2;
                break;
            case 4:
            case 8:
                j3 = (int) j2;
                break;
        }
        if (j2 != j3) {
            la.a("fixValue[" + i2 + ", " + Integer.toHexString(i2) + "]: " + j2 + '[' + Long.toHexString(j2) + "] -> " + j3 + '[' + Long.toHexString(j3) + ']');
        }
        return j3;
    }

    public static pv a(pv pvVar, String str, int i2, int i3, long j2) {
        try {
            return ps.a(pvVar, str, i2, true, j2);
        } catch (NumberFormatException e2) {
            String a2 = qk.a(i3);
            la.b("Failed parse '" + str + "' as " + i2 + " on '" + a2 + '\'', e2);
            if ((e2 instanceof pt) || (e2 instanceof ak)) {
                throw e2;
            }
            NumberFormatException numberFormatException = new NumberFormatException(String.valueOf(a2) + ": " + e2.getMessage());
            numberFormatException.initCause(e2);
            throw numberFormatException;
        }
    }

    public static long a(pv pvVar, String str, int i2) {
        return a(pvVar, str, i2 & 127, R.string.number_name, 0L).a;
    }

    public static long a(long j2, String str, int i2) {
        int i3 = i2 & 127;
        long j3 = a(null, str, i3, R.string.number_name, j2).a;
        if (i3 == 8) {
            return j3 ^ j2;
        }
        return j3;
    }

    public f a(f fVar, pv pvVar, String str, long j2, String str2, int i2) {
        long j3;
        if (pvVar == null) {
            pvVar = a(null, str, this.d, R.string.number_name, j2);
        }
        long j4 = pvVar.a;
        if (i2 != 0) {
            if (fVar == null) {
                pv a2 = a(null, str2, this.d, R.string.step_name, 0L);
                fVar = new f();
                fVar.a = Float.intBitsToFloat((int) a2.a);
                fVar.b = Double.longBitsToDouble(a2.a);
                fVar.c = a2.a;
            }
            if (pvVar.c == 16) {
                j3 = Float.floatToRawIntBits(Float.intBitsToFloat((int) j4) + (fVar.a * i2));
            } else if (pvVar.c == 64) {
                j3 = Double.doubleToRawLongBits(Double.longBitsToDouble(j4) + (fVar.b * i2));
            } else {
                j3 = (fVar.c * i2) + j4;
            }
        } else {
            j3 = j4;
        }
        if (this.d == 8) {
            j3 ^= this.b;
        }
        this.c = j3;
        return fVar;
    }

    public CharSequence l() {
        return g(this.d);
    }

    public static CharSequence g(int i2) {
        return j(i2 & 127).toString().substring(0, 1).intern();
    }

    public int m() {
        return h(this.d);
    }

    public static int h(int i2) {
        int i3 = i2 & 127;
        switch (i3) {
            case 0:
            case 1:
            case 2:
            case 4:
            case 8:
            case 16:
            case 32:
            case 64:
            case 127:
                return i3;
            default:
                return 127;
        }
    }

    public CharSequence n() {
        return i(this.d);
    }

    public static CharSequence i(int i2) {
        CharSequence charSequence = (CharSequence) f.get(h(i2));
        if (charSequence == null) {
            return "Unknown";
        }
        return charSequence;
    }

    public static CharSequence j(int i2) {
        CharSequence charSequence = (CharSequence) e.get(h(i2));
        if (charSequence == null) {
            return "Unknown";
        }
        return charSequence;
    }

    public int o() {
        return k(this.d);
    }

    public static int k(int i2) {
        try {
            SparseIntArray sparseIntArray = i;
            if (sparseIntArray == null) {
                sparseIntArray = new SparseIntArray(8);
                sparseIntArray.append(1, Tools.e((int) R.color.type_byte));
                sparseIntArray.append(2, Tools.e((int) R.color.type_word));
                sparseIntArray.append(4, Tools.e((int) R.color.type_dword));
                sparseIntArray.append(8, Tools.e((int) R.color.type_xor));
                sparseIntArray.append(16, Tools.e((int) R.color.type_float));
                sparseIntArray.append(32, Tools.e((int) R.color.type_qword));
                sparseIntArray.append(64, Tools.e((int) R.color.type_double));
                i = sparseIntArray;
                j = Tools.e((int) R.color.type_unknown);
            }
            int i3 = sparseIntArray.get(h(i2));
            if (i3 == 0) {
                return j;
            }
            return i3;
        } catch (Throwable th) {
            la.c("Failed getColor for: " + i2, th);
            return j;
        }
    }

    public static String l(int i2) {
        if (i2 == 0 || (i2 & 64) != 0) {
            return Tools.a(qk.a((int) R.string.type_edit_limit), Tools.a("%.1e", Double.valueOf(-1.7976931348623157E308d)), Tools.a("%.1e", Double.valueOf(Double.MAX_VALUE)));
        }
        if ((i2 & 16) != 0) {
            return Tools.a(qk.a((int) R.string.type_edit_limit), Tools.a("%.1e", Float.valueOf(-3.4028235E38f)), Tools.a("%.1e", Float.valueOf(Float.MAX_VALUE)));
        }
        Object[] a2 = ps.a();
        int f2 = f(i2);
        return Tools.a(qk.a((int) R.string.type_edit_limit), Tools.a("%,d", a2[(f2 * 2) + 0]), Tools.a("%,d", a2[(f2 * 2) + 1]));
    }

    public void p() {
        m(0);
    }

    public void m(int i2) {
        MainService.instance.k.a(this, i2);
    }

    public String toString() {
        return String.valueOf(g()) + ": " + i() + ' ' + ((Object) n()) + " (" + this.d + ')';
    }

    public int hashCode() {
        return ((((int) (this.b ^ (this.b >>> 32))) + 31) * 31) + (this.d & 127);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof d)) {
            d dVar = (d) obj;
            return this.b == dVar.b && ((this.d ^ dVar.d) & 127) == 0;
        }
        return false;
    }

    public boolean q() {
        return (this.b & ((long) (e() + (-1)))) == 0;
    }
}
