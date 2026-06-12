package android.ext;

/* compiled from: src */
/* loaded from: classes.dex */
public class pp {
    private static int a(String str, String str2) {
        int length = str.length();
        int length2 = str2.length();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            char charAt = i2 >= length ? (char) 0 : str.charAt(i2);
            char charAt2 = i >= length2 ? (char) 0 : str2.charAt(i);
            boolean z = charAt > '9' || '0' > charAt;
            boolean z2 = charAt2 > '9' || '0' > charAt2;
            if (!z || !z2) {
                if (z) {
                    return -1;
                }
                if (z2) {
                    return 1;
                }
                if (charAt == 0 && charAt2 == 0) {
                    return i3;
                }
                if (i3 == 0) {
                    if (charAt < charAt2) {
                        i3 = -1;
                    } else if (charAt > charAt2) {
                        i3 = 1;
                    }
                }
                i++;
                i2++;
            } else {
                return i3;
            }
        }
    }

    public static int a(Object obj, Object obj2) {
        int i;
        int a;
        String obj3 = obj.toString();
        String obj4 = obj2.toString();
        int i2 = 0;
        int i3 = 0;
        int length = obj3.length();
        int length2 = obj4.length();
        while (true) {
            char charAt = i2 >= length ? (char) 0 : obj3.charAt(i2);
            char charAt2 = i3 >= length2 ? (char) 0 : obj4.charAt(i3);
            char c = charAt;
            int i4 = 0;
            int i5 = i2;
            while (true) {
                if (c != ' ' && c != '0') {
                    break;
                }
                if (c == '0') {
                    i = i4 + 1;
                } else {
                    i = 0;
                }
                i5++;
                c = i5 >= length ? (char) 0 : obj3.charAt(i5);
                i4 = i;
            }
            char c2 = charAt2;
            int i6 = 0;
            while (true) {
                if (c2 != ' ' && c2 != '0') {
                    break;
                }
                if (c2 == '0') {
                    i6++;
                } else {
                    i6 = 0;
                }
                int i7 = i3 + 1;
                c2 = i7 >= length2 ? (char) 0 : obj4.charAt(i7);
                i3 = i7;
            }
            if (c > '9' || c2 > '9' || '0' > c || '0' > c2 || (a = a(obj3.substring(i5), obj4.substring(i3))) == 0) {
                if (c == 0 && c2 == 0) {
                    return i4 - i6;
                }
                if (c < c2) {
                    return -1;
                }
                if (c > c2) {
                    return 1;
                }
                i2 = i5 + 1;
                i3++;
            } else {
                return a;
            }
        }
    }
}
