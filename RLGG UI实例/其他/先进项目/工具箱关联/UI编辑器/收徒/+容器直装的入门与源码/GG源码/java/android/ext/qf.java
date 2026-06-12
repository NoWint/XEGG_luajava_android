package android.ext;

import android.app.ActivityManager;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.SparseIntArray;
import java.util.HashMap;
import java.util.Map;

/* compiled from: src */
/* loaded from: classes.dex */
public class qf {
    static final SparseIntArray a;
    static HashMap b;
    private static final Map c;
    private static final int d = -1;
    private static final SparseIntArray e;
    private static qf h;
    private ActivityManager f;
    private PackageManager g;

    static {
        String[] b2;
        SparseIntArray sparseIntArray = new SparseIntArray();
        e = sparseIntArray;
        c = new HashMap();
        ca.c();
        c();
        for (String str : ca.b()) {
            if (str != null && str.length() != 0) {
                try {
                    sparseIntArray.put(Integer.parseInt(str), 1);
                } catch (NumberFormatException e2) {
                    la.c("Failed load bugged uid: " + str, e2);
                }
            }
        }
        a = new SparseIntArray();
        h = null;
        b = null;
    }

    public static void a() {
        int size = c.size();
        if (size != 0) {
            c.clear();
            c();
            la.a("PL: " + size + " -> " + c.size());
        }
    }

    private static void c() {
        String[] a2;
        Map map = c;
        for (String str : ca.a()) {
            if (str != null && str.length() != 0) {
                map.put(str, a(str, (String) null));
            }
        }
    }

    private qg a(String str) {
        String g = Tools.g();
        if (str.equals(g)) {
            return a(g, "GG");
        }
        if (str.startsWith("com.bluestacks.")) {
            return a(str, str);
        }
        return (qg) c.get(str);
    }

    private static qg a(String str, String str2) {
        qg qgVar = new qg(d, str);
        if (str2 != null) {
            qgVar.d = str2;
        }
        qgVar.h = true;
        return qgVar;
    }

    public qf(ActivityManager activityManager, PackageManager packageManager) {
        this.f = activityManager;
        this.g = packageManager;
        h = this;
    }

    public static void a(bk bkVar) {
        h.b(bkVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x0088, code lost:
        android.ext.la.c("Bad cmdline length: " + r1, new java.lang.RuntimeException());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(android.ext.bk r21) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.qf.b(android.ext.bk):void");
    }

    public String a(int i) {
        String str;
        boolean a2;
        if (Config.C) {
            return Config.E;
        }
        if (Config.vSpaceReal) {
            HashMap hashMap = b;
            if (hashMap != null) {
                for (Map.Entry entry : hashMap.entrySet()) {
                    if (entry != null && ((Integer) entry.getValue()).intValue() == i) {
                        String str2 = (String) entry.getKey();
                        return null;
                    }
                }
                return null;
            }
        } else if (e.get(i) != 1) {
            try {
                PackageManager packageManager = this.g;
                a2 = ca.a("uid:" + i, "uid");
                String[] packagesForUid = packageManager.getPackagesForUid(i);
                str = (packagesForUid == null || packagesForUid.length <= 0) ? null : packagesForUid[0];
            } catch (Throwable th) {
                th = th;
                str = null;
            }
            try {
                ca.a(a2);
            } catch (Throwable th2) {
                th = th2;
                la.c("Failed getPackagesForUid", th);
                return str;
            }
            return str;
        }
        str = null;
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:146:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x01a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.ext.qg a(int r9, int r10, java.lang.String r11, java.util.List r12, android.util.SparseArray r13) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.qf.a(int, int, java.lang.String, java.util.List, android.util.SparseArray):android.ext.qg");
    }

    /* JADX WARN: Removed duplicated region for block: B:145:0x00b1 A[Catch: NoClassDefFoundError -> 0x00d3, TRY_LEAVE, TryCatch #0 {NoClassDefFoundError -> 0x00d3, blocks: (B:143:0x00ad, B:145:0x00b1), top: B:177:0x00ad }] */
    /* JADX WARN: Removed duplicated region for block: B:148:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0065 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.util.List a(java.util.List r25, java.util.List r26) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.qf.a(java.util.List, java.util.List):java.util.List");
    }

    private String a(String str, ApplicationInfo applicationInfo) {
        String str2 = applicationInfo.packageName;
        try {
            String a2 = Tools.a(applicationInfo);
            if (a2 != null) {
                return a2;
            }
        } catch (Throwable th) {
            la.c("Failed load label for: " + applicationInfo.packageName, th);
        }
        return str2;
    }
}
