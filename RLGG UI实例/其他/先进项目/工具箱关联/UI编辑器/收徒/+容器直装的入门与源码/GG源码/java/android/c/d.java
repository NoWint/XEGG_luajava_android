package android.c;

import java.lang.reflect.Array;

/* compiled from: src */
/* loaded from: classes.dex */
public final class d {
    static final /* synthetic */ boolean a;

    static {
        a = !d.class.desiredAssertionStatus();
    }

    public static Object[] a(Object[] objArr, int i, Object obj) {
        Object[] objArr2;
        if (a || i <= objArr.length) {
            if (i + 1 > objArr.length) {
                objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), a(i));
                System.arraycopy(objArr, 0, objArr2, 0, i);
            } else {
                objArr2 = objArr;
            }
            objArr2[i] = obj;
            return objArr2;
        }
        throw new AssertionError();
    }

    public static int[] a(int[] iArr, int i, int i2) {
        if (a || i <= iArr.length) {
            if (i + 1 > iArr.length) {
                int[] iArr2 = new int[a(i)];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                iArr = iArr2;
            }
            iArr[i] = i2;
            return iArr;
        }
        throw new AssertionError();
    }

    public static Object[] a(Object[] objArr, int i, int i2, Object obj) {
        if (a || i <= objArr.length) {
            if (i + 1 <= objArr.length) {
                System.arraycopy(objArr, i2, objArr, i2 + 1, i - i2);
                objArr[i2] = obj;
                return objArr;
            }
            Object[] objArr2 = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), a(i));
            System.arraycopy(objArr, 0, objArr2, 0, i2);
            objArr2[i2] = obj;
            System.arraycopy(objArr, i2, objArr2, i2 + 1, objArr.length - i2);
            return objArr2;
        }
        throw new AssertionError();
    }

    public static long[] a(long[] jArr, int i, int i2, long j) {
        if (a || i <= jArr.length) {
            if (i + 1 <= jArr.length) {
                System.arraycopy(jArr, i2, jArr, i2 + 1, i - i2);
                jArr[i2] = j;
                return jArr;
            }
            long[] jArr2 = new long[a(i)];
            System.arraycopy(jArr, 0, jArr2, 0, i2);
            jArr2[i2] = j;
            System.arraycopy(jArr, i2, jArr2, i2 + 1, jArr.length - i2);
            return jArr2;
        }
        throw new AssertionError();
    }

    public static boolean[] a(boolean[] zArr, int i, int i2, boolean z) {
        if (a || i <= zArr.length) {
            if (i + 1 <= zArr.length) {
                System.arraycopy(zArr, i2, zArr, i2 + 1, i - i2);
                zArr[i2] = z;
                return zArr;
            }
            boolean[] zArr2 = new boolean[a(i)];
            System.arraycopy(zArr, 0, zArr2, 0, i2);
            zArr2[i2] = z;
            System.arraycopy(zArr, i2, zArr2, i2 + 1, zArr.length - i2);
            return zArr2;
        }
        throw new AssertionError();
    }

    public static int a(int i) {
        if (i <= 4) {
            return 8;
        }
        return i * 2;
    }

    private d() {
    }
}
