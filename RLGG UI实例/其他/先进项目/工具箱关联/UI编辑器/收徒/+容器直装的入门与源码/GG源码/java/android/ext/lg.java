package android.ext;

import android.util.Log;

/* compiled from: src */
/* loaded from: classes.dex */
public class lg {
    private static String a(String str) {
        if (str == null) {
            return "null";
        }
        if (str.length() > 23) {
            return str.substring(0, 23);
        }
        return str;
    }

    private static int a(int i, String str, String str2, Throwable th) {
        String a = a(str);
        if (str2 == null) {
            str2 = "null";
        }
        int length = str2.length();
        int i2 = 0;
        while (true) {
            int i3 = length - i2;
            if (i3 > 1023) {
                i3 = 1023;
            }
            String substring = str2.substring(i2, i2 + i3);
            int i4 = i3 + i2;
            switch (i) {
                case 2:
                    try {
                        Log.e(a, substring);
                        break;
                    } catch (OutOfMemoryError e) {
                        Log.e(a, "OOM for Log 1");
                        break;
                    }
                case 3:
                    if (i4 == length) {
                        try {
                            Log.e(a, substring, th);
                            break;
                        } catch (OutOfMemoryError e2) {
                            Log.e(a, substring);
                            break;
                        }
                    } else {
                        Log.e(a, substring);
                        break;
                    }
                case 6:
                    Log.e(a, substring);
                    break;
                case 7:
                    if (i4 == length) {
                        try {
                            Log.e(a, substring, th);
                            break;
                        } catch (OutOfMemoryError e3) {
                            Log.e(a, substring);
                            break;
                        }
                    } else {
                        Log.e(a, substring);
                        break;
                    }
                case 9:
                    Log.e(a, substring);
                    break;
                case 10:
                    if (i4 == length) {
                        try {
                            Log.e(a, substring, th);
                            break;
                        } catch (OutOfMemoryError e4) {
                            Log.e(a, substring);
                            break;
                        }
                    } else {
                        Log.e(a, substring);
                        break;
                    }
            }
            if (i4 >= length) {
                return 0;
            }
            i2 = i4;
        }
    }

    public static int a(String str, String str2) {
        return a(2, str, str2, null);
    }

    public static int a(String str, String str2, Throwable th) {
        return a(3, str, str2, th);
    }

    public static int b(String str, String str2) {
        return a(6, str, str2, null);
    }

    public static int b(String str, String str2, Throwable th) {
        return a(7, str, str2, th);
    }

    public static int c(String str, String str2) {
        return a(9, str, str2, null);
    }

    public static int c(String str, String str2, Throwable th) {
        return a(10, str, str2, th);
    }
}
