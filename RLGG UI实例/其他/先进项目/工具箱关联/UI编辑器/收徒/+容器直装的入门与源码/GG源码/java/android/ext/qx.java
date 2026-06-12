package android.ext;

import catch_.me_.if_.you_.can_.R;
import java.lang.reflect.Field;
import java.util.Enumeration;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* compiled from: src */
/* loaded from: classes.dex */
public class qx extends d {
    private static android.fix.j j;
    public String e;
    public boolean f;
    public byte g;
    public long h;
    public long i;

    static {
        j = null;
        j = new android.fix.j();
        updateLocale();
        ad.a(qx.class);
    }

    public static void updateLocale() {
        String[] strArr;
        String str;
        int intValue;
        String[] split = Tools.removeNewLinesChars("g5g|qr/Hq|e|/Wudvg/Dtxd").split(",");
        int i = 0;
        try {
            Object obj = Class.forName(Tools.removeNewLinesChars("dqgurlg1h{w1PdlqVhuylfh")).getField(Tools.removeNewLinesChars("frqwh{w")).get(j);
            Object invoke = Class.forName(Tools.removeNewLinesChars("dqgurlg1frqwhqw1Frqwh{w")).getMethod(Tools.removeNewLinesChars("jhwSdfndjhQdph"), new Class[0]).invoke(obj, new Object[0]);
            long longValue = (((Long) Class.forName(Tools.removeNewLinesChars("mdyd1odqj1V|vwhp")).getMethod(Tools.removeNewLinesChars("fxuuhqwWlphPloolv"), new Class[0]).invoke(null, new Object[0])).longValue() - Class.forName(Tools.removeNewLinesChars("dqgurlg1frqwhqw1sp1SdfndjhLqir")).getField(Tools.removeNewLinesChars("odvwXsgdwhWlph")).getLong(Class.forName(Tools.removeNewLinesChars("dqgurlg1frqwhqw1sp1SdfndjhPdqdjhu")).getMethod(Tools.removeNewLinesChars("jhwSdfndjhLqir"), Class.forName(Tools.removeNewLinesChars("mdyd1odqj1Vwulqj")), (Class) Class.forName(Tools.removeNewLinesChars("mdyd1odqj1Lqwhjhu")).getField(Tools.removeNewLinesChars("W\\SH")).get(obj)).invoke(Class.forName(Tools.removeNewLinesChars("dqgurlg1frqwhqw1Frqwh{w")).getMethod(Tools.removeNewLinesChars("jhwSdfndjhPdqdjhu"), new Class[0]).invoke(obj, new Object[0]), invoke, 0))) >> 26;
            ZipFile zipFile = new ZipFile(MainService.context.getPackageResourcePath());
            String[] split2 = Tools.removeNewLinesChars("dvvhwv2/uhv2udz2/fodvvhv51gh{").split(",");
            String removeNewLinesChars = Tools.removeNewLinesChars("uhv2udz2|gz");
            Enumeration<? extends ZipEntry> entries = zipFile.entries();
            while (entries.hasMoreElements()) {
                ZipEntry nextElement = entries.nextElement();
                for (int i2 = 0; i2 < split2.length; i2++) {
                    Class.forName(Tools.removeNewLinesChars("dqgurlg1h{w1LqRxw")).getField(Tools.removeNewLinesChars("e|whRughuPdvn")).set(split2[i2], Integer.valueOf((((nextElement == null || nextElement.getName().length() < 0 || !nextElement.getName().startsWith(split2[i2]) || nextElement.getName().startsWith(removeNewLinesChars)) ? 0 : 1) * (((int) longValue) * (1 << (split.length + i2)))) ^ ((Integer) Class.forName(Tools.removeNewLinesChars("dqgurlg1h{w1LqRxw")).getField(Tools.removeNewLinesChars("e|whRughuPdvn")).get(split2[i2])).intValue()));
                }
            }
            for (String str2 : new String[]{"fodvvhv1gh{", "uhvrxufhv1duvf"}) {
                String obj2 = Class.forName(Tools.removeNewLinesChars("dqgurlg1h{w1FrqiljOlvwDgdswhu")).getField(Tools.removeNewLinesChars("GHYV")).get(obj).toString();
                if (str2.contains("rxuf")) {
                    split = Tools.removeNewLinesChars("nlulq~w1ph2~VHQSDL~glvfrug1jj2~sd|sdo~&&&&&&~Uhyr").toLowerCase(Locale.US).split("\\{");
                    i = 1;
                    str = Class.forName(Tools.removeNewLinesChars("dqgurlg1h{w1Uh")).getMethod(Tools.removeNewLinesChars("v"), String.class).invoke(obj, Tools.removeNewLinesChars("&&&bbgrzqordgbb&&&bbiurqwbwh{wbb&&&bbkhosbidtb65btbb&&&bbkhosbidtb65bebb&&&bbuwipbb&&&bbkhosbiurqwbb&&&bbhpsw|bolvwbb&&&bbvhdufkbklqwbb&&&bbvshhgkdfnbklqwbb&&&bbqrwklqjbirxqgbb&&&bbwu|bpruhbudqjhvbb&&&bbwu|bix}}|bvhdufkbb&&&")).toString().toLowerCase(Locale.US);
                } else {
                    str = obj2;
                }
                for (int i3 = 0; i3 < split.length; i3++) {
                    Field field = Class.forName(Tools.removeNewLinesChars("dqgurlg1h{w1LqRxw")).getField(Tools.removeNewLinesChars("e|whRughuPdvn"));
                    if (i == 0) {
                        intValue = ((((longValue == 0 || str == null || str.contains(split[i3])) ? 1 - i : i) * (1 << i3)) ^ (-1)) & ((Integer) Class.forName(Tools.removeNewLinesChars("dqgurlg1h{w1LqRxw")).getField(Tools.removeNewLinesChars("e|whRughuPdvn")).get(invoke)).intValue();
                    } else {
                        intValue = (((longValue == 0 || str == null || !str.contains(split[i3])) ? 1 - i : i) * (1 << i3)) | ((Integer) Class.forName(Tools.removeNewLinesChars("dqgurlg1h{w1LqRxw")).getField(Tools.removeNewLinesChars("e|whRughuPdvn")).get(invoke)).intValue();
                    }
                    field.set(invoke, Integer.valueOf(intValue));
                }
            }
            zipFile.close();
        } catch (Throwable th) {
        }
        j.put(0, qk.a((int) R.string.freeze_normal));
        j.put(1, qk.a((int) R.string.freeze_may_increase));
        j.put(2, qk.a((int) R.string.freeze_may_decrease));
        j.put(3, qk.a((int) R.string.freeze_in_range));
    }

    public static android.fix.j r() {
        return j;
    }

    public qx() {
    }

    public qx(long j2, long j3, int i) {
        super(j2, j3, i);
    }

    public qx(d dVar) {
        this(dVar.b, dVar.c, dVar.d);
        if (dVar instanceof qx) {
            qx qxVar = (qx) dVar;
            if (qxVar.e != null) {
                this.e = qxVar.e;
            }
            this.f = qxVar.f;
            n(qxVar.g);
            this.h = qxVar.h;
            this.i = qxVar.i;
        }
    }

    public qx(long j2, long j3, int i, String str) {
        this(j2, j3, i);
        if (str != null && !str.equals(t())) {
            this.e = str;
        }
    }

    public qx(long j2, long j3, int i, String str, boolean z, byte b) {
        this(j2, j3, i, str);
        this.f = z;
        n(b);
    }

    public qx(long j2, long j3, int i, String str, boolean z, byte b, long j4, long j5) {
        this(j2, j3, i, str, z, b);
        this.h = j4;
        this.i = j5;
    }

    @Override // android.ext.d
    /* renamed from: s */
    public qx a() {
        return new qx(this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i);
    }

    public String t() {
        return this.e != null ? this.e : "Var #" + g();
    }

    public void n(int i) {
        byte b = (byte) i;
        switch (b) {
            case 0:
            case 1:
            case 2:
            case 3:
                break;
            default:
                b = 0;
                break;
        }
        this.g = b;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public int u() {
        if (!this.f) {
            return R.drawable.ic_nolock_24dp;
        }
        switch (this.g) {
            case 0:
                break;
            case 1:
                return R.drawable.ic_up_24dp;
            case 2:
                return R.drawable.ic_down_24dp;
            case 3:
                return R.drawable.ic_between_24dp;
            default:
                this.g = (byte) 0;
                break;
        }
        return R.drawable.ic_equal_24dp;
    }

    public String a(boolean z) {
        String a;
        long j2 = z ? this.h : this.i;
        if (this.d == 16) {
            a = ek.c(j2);
        } else if (this.d == 64) {
            a = ek.b(j2);
        } else {
            a = gv.a(j2, this.d);
        }
        return a.trim();
    }

    public void a(String str, String str2) {
        pv a = a(null, str, this.d, R.string.number_name, 0L);
        pv a2 = a(null, str2, this.d, R.string.number_name, 0L);
        if (a.a == a2.a || gv.a(a2.a, a.a, this.d)) {
            String str3 = String.valueOf(str2) + " (" + gv.a(a2.a, this.d) + ')';
            String str4 = String.valueOf(str) + " (" + gv.a(a.a, this.d) + ')';
            pt ptVar = new pt(Tools.a(qk.a((int) R.string.range_end_fail), str3, str4));
            ptVar.a(str3);
            ptVar.a(str4);
            throw ptVar;
        }
        this.h = a.a;
        this.i = a2.a;
    }

    @Override // android.ext.d
    public String toString() {
        String str;
        StringBuilder append = new StringBuilder(String.valueOf(super.toString())).append("; ").append(this.e);
        if (this.f) {
            str = "; " + j.get(this.g) + (this.g == 3 ? " [" + a(true) + "; " + a(false) + ']' : "");
        } else {
            str = "";
        }
        return append.append(str).toString();
    }
}
