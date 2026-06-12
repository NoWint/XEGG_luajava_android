package android.c;

import android.view.View;

/* compiled from: src */
/* loaded from: classes.dex */
public class b {
    public static final String[] a = new String[0];
    public static final byte[] c = new byte[0];
    public static final int[] d = new int[0];
    public static final long[] e = new long[0];
    public static final Object[] f = new Object[0];
    public static final boolean[] g = new boolean[0];
    public static final View[] b = new View[0];

    public static int a(int i) {
        return b(i * 8) / 8;
    }

    public static int b(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            if (i <= (1 << i2) - 12) {
                return (1 << i2) - 12;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(long[] jArr, int i, long j) {
        int i2 = 0;
        int i3 = i - 1;
        while (i2 <= i3) {
            int i4 = (i2 + i3) >>> 1;
            long j2 = jArr[i4];
            if (j2 < j) {
                i2 = i4 + 1;
            } else if (j2 <= j) {
                return i4;
            } else {
                i3 = i4 - 1;
            }
        }
        return i2 ^ (-1);
    }
}
