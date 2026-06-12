package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
public class gv {
    private static long[] a = new long[12];

    static {
        for (int i = 0; i < 3; i++) {
            long j = (1 << ((1 << i) * 8)) - 1;
            long j2 = j >> 1;
            int i2 = i * 4;
            a[i2 + 0] = (j2 ^ (-1)) & j;
            a[i2 + 1] = j2;
            a[i2 + 2] = j2 ^ (-1);
            a[i2 + 3] = j;
        }
    }

    public static String a(long j, int i) {
        return b(j, i, false);
    }

    public static long a(long j, int i, boolean z) {
        if (i != 3) {
            int i2 = i * 4;
            if (z) {
                return j & a[i2 + 3];
            }
            if ((a[i2 + 0] & j) == 0) {
                return j & a[i2 + 1];
            }
            return j | a[i2 + 2];
        }
        return j;
    }

    public static String b(long j, int i, boolean z) {
        int f = d.f(i);
        long a2 = a(j, f, z);
        if (z) {
            return ts.a(1 << (f + 1), a2);
        }
        return a(a2);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0026 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String a(long r4) {
        /*
            r1 = 0
            if (r1 != 0) goto Lf
            java.lang.String r0 = "%,d"
            java.lang.String r2 = "%d"
            java.lang.Long r3 = java.lang.Long.valueOf(r4)
            java.lang.String r1 = android.ext.Tools.a(r0, r2, r1, r3)
        Lf:
            if (r1 != 0) goto L15
            java.lang.String r1 = java.lang.Long.toString(r4)     // Catch: java.lang.Throwable -> L29
        L15:
            if (r1 != 0) goto L36
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L30
            r0.<init>()     // Catch: java.lang.Throwable -> L30
            java.lang.StringBuilder r0 = r0.append(r4)     // Catch: java.lang.Throwable -> L30
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L30
        L24:
            if (r0 != 0) goto L28
            java.lang.String r0 = "fail"
        L28:
            return r0
        L29:
            r0 = move-exception
            java.lang.String r2 = "Format fail 3"
            android.ext.la.b(r2, r0)
            goto L15
        L30:
            r0 = move-exception
            java.lang.String r2 = "Format fail 4"
            android.ext.la.b(r2, r0)
        L36:
            r0 = r1
            goto L24
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.gv.a(long):java.lang.String");
    }

    public static boolean a(long j, long j2, int i) {
        int f = d.f(i);
        if (f == 3) {
            return j < j2;
        }
        int i2 = f * 4;
        long j3 = a[i2 + 0] & j;
        return j3 == (a[i2 + 0] & j2) ? (a[i2 + 1] & j) < (a[i2 + 1] & j2) : j3 != 0;
    }
}
