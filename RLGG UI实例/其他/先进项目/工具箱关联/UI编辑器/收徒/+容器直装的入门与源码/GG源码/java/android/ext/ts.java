package android.ext;

import java.io.IOException;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: src */
/* loaded from: classes.dex */
public class ts {
    private static final ThreadLocal a = new tt();
    private static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '@', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', '_', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

    public static Appendable a(Appendable appendable, int i, int i2) {
        return a(appendable, i, '0', Integer.toHexString(i2).toUpperCase(Locale.US));
    }

    public static Appendable a(Appendable appendable, int i, long j) {
        return a(appendable, i, '0', Long.toHexString(j).toUpperCase(Locale.US));
    }

    public static Appendable a(Appendable appendable, int i, char c, String str) {
        try {
            int length = i - str.length();
            for (int i2 = 0; i2 < length; i2++) {
                appendable.append(c);
            }
            return appendable.append(str);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public static String a(int i, long j) {
        return a(i, '0', Long.toHexString(j).toUpperCase(Locale.US));
    }

    public static String a(int i, char c, String str) {
        int length = str.length();
        if (length < i) {
            char[] cArr = (char[]) a.get();
            int i2 = i - length;
            Arrays.fill(cArr, 0, i2, c);
            str.getChars(0, length, cArr, i2);
            return new String(cArr, 0, i);
        }
        return str;
    }

    public static String a(String str, Object... objArr) {
        return Tools.a(str, objArr);
    }

    public static String a(long j) {
        char[] cArr = new char[12];
        int i = 11;
        boolean z = j < 0;
        if (!z) {
            j = -j;
        }
        char[] cArr2 = b;
        while (j <= -64) {
            cArr[i] = cArr2[(int) (-(j % 64))];
            j /= 64;
            i--;
        }
        cArr[i] = cArr2[(int) (-j)];
        if (z) {
            i--;
            cArr[i] = '-';
        }
        return new String(cArr, i, 12 - i);
    }

    public static String a(int i) {
        char[] cArr = new char[7];
        int i2 = 6;
        boolean z = i < 0;
        if (!z) {
            i = -i;
        }
        char[] cArr2 = b;
        while (i <= -64) {
            cArr[i2] = cArr2[-(i % 64)];
            i /= 64;
            i2--;
        }
        cArr[i2] = cArr2[-i];
        if (z) {
            i2--;
            cArr[i2] = '-';
        }
        return new String(cArr, i2, 7 - i2);
    }
}
