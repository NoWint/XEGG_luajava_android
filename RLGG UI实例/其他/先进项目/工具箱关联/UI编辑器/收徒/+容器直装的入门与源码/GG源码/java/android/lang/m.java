package android.lang;

import java.io.FileDescriptor;
import java.lang.reflect.Field;
import java.util.Map;

/* compiled from: src */
/* loaded from: classes.dex */
public final class m {
    static final /* synthetic */ boolean a;

    static {
        a = !m.class.desiredAssertionStatus();
    }

    public static int a(FileDescriptor fileDescriptor) {
        try {
            Field declaredField = FileDescriptor.class.getDeclaredField("descriptor");
            declaredField.setAccessible(true);
            return ((Integer) declaredField.get(fileDescriptor)).intValue();
        } catch (Throwable th) {
            throw new RuntimeException("Failed get fd", th);
        }
    }

    private m() {
    }

    private static byte[] a(String str) {
        if (str == null) {
            return null;
        }
        byte[] bytes = str.getBytes();
        byte[] bArr = new byte[bytes.length + 1];
        System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        bArr[bArr.length - 1] = 0;
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Process a(String[] strArr, Map map, String str, boolean z) {
        if (a || (strArr != null && strArr.length > 0)) {
            byte[][] bArr = new byte[strArr.length - 1];
            int length = bArr.length;
            for (int i = 0; i < bArr.length; i++) {
                bArr[i] = strArr[i + 1].getBytes();
                length += bArr[i].length;
            }
            byte[] bArr2 = new byte[length];
            int i2 = 0;
            for (byte[] bArr3 : bArr) {
                System.arraycopy(bArr3, 0, bArr2, i2, bArr3.length);
                i2 += bArr3.length + 1;
            }
            int[] iArr = new int[1];
            return new UNIXProcess(a(strArr[0]), bArr2, bArr.length, ProcessEnvironment.a(map, iArr), iArr[0], a(str), new int[]{-1, -1, -1}, z);
        }
        throw new AssertionError();
    }
}
