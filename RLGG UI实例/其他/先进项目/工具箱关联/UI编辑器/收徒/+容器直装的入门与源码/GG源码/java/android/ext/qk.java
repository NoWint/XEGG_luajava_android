package android.ext;

import android.content.res.Resources;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: src */
/* loaded from: classes.dex */
public class qk {
    private static volatile WeakReference d = new WeakReference(null);
    static volatile android.fix.j a = new android.fix.j();
    static int[] b = android.c.b.d;
    static volatile long c = 0;
    private static final Runnable e = new ql();
    private static Pattern f = Pattern.compile("__([a-z0-9_]+?)__");

    public static void a() {
        int[] iArr;
        android.fix.j jVar = a;
        if (jVar.size() > b.length) {
            android.fix.j jVar2 = new android.fix.j();
            for (int i : b) {
                String str = (String) jVar.a(i);
                if (str != null) {
                    jVar2.put(i, str);
                }
            }
            a = jVar2;
            c = 0L;
        }
    }

    private static Resources b() {
        Resources resources = (Resources) d.get();
        if (resources == null) {
            Resources resources2 = Tools.e().getResources();
            d = new WeakReference(resources2);
            e.run();
            android.fix.j jVar = new android.fix.j();
            ArrayList arrayList = b.length == 0 ? new ArrayList() : null;
            int a2 = a(Tools.removeNewLinesChars("dssbqdph"), R.string.class);
            String intern = Tools.removeNewLinesChars("JdphJxdugldq").intern();
            if (arrayList != null) {
                arrayList.add(Integer.valueOf(a2));
            }
            jVar.put(a2, intern);
            try {
                String.format(ad.a(), c(R.string.d), 1000);
            } catch (Exception e2) {
                la.c("Check format", e2);
                if (arrayList != null) {
                    arrayList.add(Integer.valueOf((int) R.string.d));
                }
                jVar.put(R.string.d, "%d");
            }
            String removeNewLinesChars = Tools.removeNewLinesChars("kwws=22jdphjxdugldq1qhw2iruxp");
            if (arrayList != null) {
                arrayList.add(Integer.valueOf((int) R.string.forum));
            }
            jVar.put(R.string.forum, removeNewLinesChars);
            if (arrayList != null) {
                arrayList.add(Integer.valueOf((int) R.string.decimal));
            }
            jVar.put(R.string.decimal, String.valueOf(ps.b));
            if (arrayList != null) {
                arrayList.add(Integer.valueOf((int) R.string.thousands));
            }
            jVar.put(R.string.thousands, ps.a);
            if (arrayList != null) {
                b = Tools.b((List) arrayList);
            }
            a = jVar;
            return resources2;
        }
        return resources;
    }

    private static String b(String str) {
        String str2;
        if (str == null) {
            str = "null";
        }
        if (str.indexOf(95) >= 0) {
            try {
                Matcher matcher = f.matcher(str);
                str2 = str;
                while (matcher.find()) {
                    try {
                        int a2 = a(matcher.group(1), R.string.class);
                        if (a2 != 0) {
                            str2 = str2.replace(matcher.group(0), c(a2));
                        }
                    } catch (Throwable th) {
                        th = th;
                        la.c("Exception on: " + str, th);
                        return str2;
                    }
                }
                return str2;
            } catch (Throwable th2) {
                th = th2;
                str2 = str;
            }
        } else {
            return str;
        }
    }

    public static int a(String str, Class cls) {
        try {
            Object obj = cls.getDeclaredField(str).get(null);
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
        } catch (Throwable th) {
            la.b("Resource id for name '" + str + "' not found", th);
        }
        return 0;
    }

    public static String a(int i) {
        return c(i);
    }

    private static String c(int i) {
        String str;
        if (i == 0 || i == -1) {
            return "(Invalid resource id " + i + ")";
        }
        android.fix.j jVar = a;
        Object a2 = jVar.a(i);
        String obj = a2 == null ? null : a2.toString();
        if (obj == null) {
            try {
                str = b().getString(i);
            } catch (Throwable th) {
                str = "Resource for id 0x" + ts.a(8, i) + " not found";
                la.c(str, th);
            }
            String b2 = b(str);
            try {
                jVar.a(i, b2);
            } catch (Throwable th2) {
                la.a(th2);
            }
            c = System.currentTimeMillis();
            return b2;
        }
        return obj;
    }

    public static String a(String str) {
        return b(str);
    }

    public static String b(int i) {
        try {
            return b().getResourceEntryName(i);
        } catch (Throwable th) {
            String str = "Resource name for id 0x" + ts.a(8, i) + " not found";
            la.c(str, th);
            return str;
        }
    }
}
