package android.ext;

import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class am {
    final String a;
    final int b;
    int c;
    int d = -1;
    int e = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public am(String str) {
        String upperCase = str.toUpperCase(Locale.US);
        this.a = upperCase;
        this.b = upperCase.length();
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        String str = this.a;
        int i = this.b;
        int i2 = 0;
        while (i2 < i && ai.a(str, i, i2) <= ' ') {
            i2++;
        }
        this.c = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char b() {
        String str = this.a;
        int i = this.c;
        int i2 = this.b;
        char a = ai.a(str, i2, i);
        if (a == 0) {
            a = ' ';
        }
        if (i >= i2 || a > ' ') {
            return a;
        }
        int i3 = i;
        while (i3 < i2 && ai.a(str, i2, i3 + 1) <= ' ') {
            i3++;
        }
        this.c = i3;
        return ' ';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public char c() {
        char b = b();
        this.c++;
        return b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(String[] strArr) {
        int i;
        String str = this.a;
        int i2 = this.c;
        int i3 = this.b - i2;
        int i4 = -1;
        if (i3 >= 0) {
            for (int length = strArr.length - 1; length >= 0; length--) {
                String str2 = strArr[length];
                int length2 = str2.length();
                if (length2 == 0) {
                    i4 = length;
                } else if (length2 <= i3) {
                    while (i < length2) {
                        i = str.charAt(i2 + i) == str2.charAt(i) ? i + 1 : 0;
                    }
                    this.c = i2 + length2;
                    return length;
                } else {
                    continue;
                }
            }
        }
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(String str) {
        String str2 = this.a;
        int i = this.c;
        int i2 = this.b - i;
        int i3 = -1;
        int i4 = -1;
        if (i2 >= 0) {
            int length = str.length();
            int i5 = 0;
            int i6 = 0;
            while (i5 <= length) {
                int indexOf = str.indexOf(0, i5);
                if (indexOf == -1) {
                    indexOf = length;
                }
                if (i5 != indexOf) {
                    String substring = str.substring(i5, indexOf);
                    int length2 = substring.length();
                    if (length2 == 0) {
                        if (i4 < length2) {
                            i5 = indexOf;
                            i4 = length2;
                            i3 = i6;
                        }
                        i5 = indexOf;
                    } else if (length2 > i2) {
                        i5 = indexOf;
                    } else {
                        int i7 = 0;
                        while (true) {
                            if (i7 < length2) {
                                if (str2.charAt(i + i7) != substring.charAt(i7)) {
                                    i5 = indexOf;
                                    break;
                                }
                                i7++;
                            } else if (i4 < length2) {
                                i5 = indexOf;
                                i4 = length2;
                                i3 = i6;
                            }
                        }
                    }
                }
                i5++;
                i6++;
            }
        }
        if (i4 > 0) {
            this.c = i + i4;
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(char c) {
        if (b() != c) {
            return false;
        }
        this.c++;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(String str) {
        String str2 = this.a;
        int i = this.c;
        int i2 = this.b - i;
        if (i2 < 0) {
            return false;
        }
        int length = str.length();
        if (length == 0) {
            return true;
        }
        if (length <= i2) {
            for (int i3 = 0; i3 < length; i3++) {
                if (str2.charAt(i + i3) != str.charAt(i3)) {
                    return false;
                }
            }
            this.c = i + length;
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        boolean z;
        int i = 0;
        char c = c();
        if (c == '-') {
            c = c();
            z = true;
        } else {
            z = false;
        }
        if (c < '0' || c > '9') {
            throw ai.f;
        }
        do {
            i = (i * 10) + (c - '0');
            c = c();
            if (c < '0') {
                break;
            }
        } while (c <= '9');
        this.c--;
        return z ? -i : i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long e() {
        char c = c();
        if ((c < '0' || c > '9') && (c < 'A' || c > 'F')) {
            throw ai.f;
        }
        long j = 0;
        while (true) {
            j = ((c < '0' || c > '9') ? (c - 'A') + 10 : c - '0') + (j << 4);
            c = c();
            if (c < '0' || c > '9') {
                if (c < 'A' || c > 'F') {
                    break;
                }
            }
        }
        this.c--;
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long f() {
        long j = a('-') ? -1 : 1;
        if (b("0X")) {
            return j * e();
        }
        return j * d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float g() {
        String str = this.a;
        int i = this.c;
        int length = str.length();
        if (i >= length) {
            throw ai.f;
        }
        int indexOf = str.indexOf(59, i);
        if (indexOf == -1) {
            indexOf = length;
        }
        try {
            float parseFloat = Float.parseFloat(str.substring(i, indexOf));
            this.c = length;
            return parseFloat;
        } catch (NumberFormatException e) {
            throw ai.f;
        }
    }
}
