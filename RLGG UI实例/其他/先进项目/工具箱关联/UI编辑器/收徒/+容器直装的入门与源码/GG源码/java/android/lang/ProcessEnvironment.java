package android.lang;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public final class ProcessEnvironment {
    private static final HashMap a;
    private static final Map b;

    private static native byte[][] environ();

    static {
        byte[][] environ = environ();
        a = new HashMap((environ.length / 2) + 3);
        for (int length = environ.length - 1; length > 0; length -= 2) {
            a.put(l.a(environ[length - 1]), k.a(environ[length]));
        }
        b = Collections.unmodifiableMap(new f(a));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map a(int i) {
        return new f(new HashMap(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str) {
        if (str.indexOf(61) != -1 || str.indexOf(0) != -1) {
            throw new IllegalArgumentException("Invalid environment variable name: \"" + str + '\"');
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(String str) {
        if (str.indexOf(0) != -1) {
            throw new IllegalArgumentException("Invalid environment variable value: \"" + str + '\"');
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(Map map, int[] iArr) {
        if (map == null) {
            return null;
        }
        return ((f) map).a(iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(byte[] bArr, byte[] bArr2) {
        int length = bArr.length < bArr2.length ? bArr.length : bArr2.length;
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return bArr[i] - bArr2[i];
            }
        }
        return bArr.length - bArr2.length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < bArr.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(byte[] bArr) {
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < bArr.length) {
                i = (i3 * 31) + bArr[i2];
                i2++;
            } else {
                return i3;
            }
        }
    }
}
