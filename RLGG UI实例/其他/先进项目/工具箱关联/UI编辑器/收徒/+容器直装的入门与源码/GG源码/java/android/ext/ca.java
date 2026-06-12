package android.ext;

import android.content.SharedPreferences;
import android.os.Process;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;

/* compiled from: src */
/* loaded from: classes.dex */
public class ca {
    private static volatile String f = ";;";
    private static final boolean e = d();
    private static final String c = "bugged-packages";
    private static final String d = "bugged-uids";
    private static final String a = "native_crash.txt";
    private static final String b = " _QAZ_WSX_EDC_RFV_TGB_YHN_UJM_ ";

    private static boolean d() {
        boolean z;
        boolean z2 = false;
        try {
            File file = new File("/system/lib/libandroidfw.so");
            if (file.exists()) {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bytes = "_ZN7android12AssetManager10getPkgNameEPKc".getBytes();
                byte[] bArr = new byte[8192];
                int length = bytes.length;
                int i = 0;
                boolean z3 = false;
                while (true) {
                    try {
                        int read = fileInputStream.read(bArr, i, bArr.length - i);
                        if (read <= 0) {
                            z2 = z3;
                            break;
                        }
                        int i2 = i + read;
                        if (i2 >= length) {
                            int i3 = (i2 - length) + 1;
                            int i4 = 0;
                            while (true) {
                                if (i4 >= i3) {
                                    break;
                                }
                                int i5 = 0;
                                while (true) {
                                    if (i5 >= length) {
                                        z = true;
                                        break;
                                    } else if (bArr[i4 + i5] != bytes[i5]) {
                                        z = false;
                                        break;
                                    } else {
                                        i5++;
                                    }
                                }
                                if (z) {
                                    z3 = true;
                                    break;
                                }
                                i4++;
                            }
                            if (z3) {
                                z2 = z3;
                                break;
                            }
                            int i6 = length - 1;
                            for (int i7 = 0; i7 < i6; i7++) {
                                bArr[i7] = bArr[(i2 - i6) + i7];
                            }
                            i = i6;
                        } else {
                            i = i2;
                        }
                    } catch (Throwable th) {
                        th = th;
                        z2 = z3;
                        la.b("Failed detect CM13", th);
                        la.a("CM13: " + z2);
                        return z2;
                    }
                }
                fileInputStream.close();
            }
        } catch (Throwable th2) {
            th = th2;
        }
        la.a("CM13: " + z2);
        return z2;
    }

    public static boolean a(String str) {
        if (e) {
            return f.contains(String.valueOf(';') + str + ';');
        }
        return false;
    }

    private static String b(String str) {
        ArrayList arrayList = new ArrayList(new HashSet(Arrays.asList(str.split(";"))));
        return TextUtils.join(";", arrayList.toArray(new String[arrayList.size()]));
    }

    private static String e() {
        String b2 = b(Tools.s().getString(c, ""));
        if (b2.length() > 0) {
            f = String.valueOf(';') + b2 + ';';
        }
        return b2;
    }

    private static String f() {
        return b(Tools.s().getString(d, ""));
    }

    public static String[] a() {
        if (e) {
            String e2 = e();
            if (e2.length() > 0) {
                la.a("BUGGED_PACKAGES: " + e2);
                return e2.split(";");
            }
        }
        return android.c.b.a;
    }

    public static String[] b() {
        if (e) {
            String f2 = f();
            if (f2.length() > 0) {
                la.a("BUGGED_UIDS: " + f2);
                return f2.split(";");
            }
        }
        return android.c.b.a;
    }

    private static String[] g() {
        File[] listFiles;
        String[] strArr = null;
        File parentFile = h().getParentFile();
        if (parentFile != null && (listFiles = parentFile.listFiles()) != null) {
            int length = listFiles.length;
            strArr = new String[length * 2];
            for (int i = 0; i < length; i++) {
                File file = listFiles[i];
                if (file != null && file.getName().endsWith(a)) {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        byte[] bArr = new byte[Math.min(((int) file.length()) + 8192, 102400)];
                        int read = fileInputStream.read(bArr);
                        fileInputStream.close();
                        if (read > 0) {
                            String[] split = new String(bArr, 0, read).split(b, 2);
                            if (split.length == 2) {
                                strArr[(i * 2) + 0] = split[0];
                                strArr[(i * 2) + 1] = split[1];
                            }
                        }
                    } catch (Throwable th) {
                        la.c("Failed read native crash", th);
                    }
                    file.delete();
                }
            }
        }
        return strArr;
    }

    public static void c() {
        la.a("lLC - 1");
        e();
        f();
        String[] g = g();
        if (g != null) {
            int length = g.length;
            for (int i = 0; i < length; i += 2) {
                String str = g[i];
                if (str != null) {
                    la.c("Bad package: '" + str + "' " + g[i + 1]);
                    String str2 = c;
                    if (str.contains("uid:")) {
                        str2 = d;
                        str = str.split(":", -1)[1];
                    }
                    SharedPreferences s = Tools.s();
                    String string = s.getString(str2, "");
                    if (string != null && string.length() != 0) {
                        str = !new StringBuilder(String.valueOf(';')).append(string).append(';').toString().contains(new StringBuilder(String.valueOf(';')).append(str).append(';').toString()) ? String.valueOf(string) + ';' + str : string;
                    }
                    s.edit().putString(str2, b(str)).commit();
                }
            }
        }
        e();
        f();
        la.a("lLC - 0");
    }

    public static boolean a(String str, String str2) {
        if (e && !y.d.equals(str)) {
            if (str.startsWith("uid:") && str.equals("uid:" + Process.myUid())) {
                return false;
            }
            try {
                la.a("CNC[" + (e ? '1' : '0') + "] - n: " + str2 + "; " + str);
                if (e) {
                    FileOutputStream fileOutputStream = new FileOutputStream(h());
                    fileOutputStream.write(str.getBytes());
                    fileOutputStream.write(b.getBytes());
                    fileOutputStream.write((String.valueOf(str2) + '\n' + gs.f()).getBytes());
                    fileOutputStream.flush();
                    fileOutputStream.close();
                }
            } catch (Throwable th) {
                la.c("Failed n CNC", th);
            }
            return true;
        }
        return false;
    }

    public static void a(boolean z) {
        if (e && z) {
            try {
                la.a("CNC[" + (e ? '1' : '0') + "] - x");
                if (e) {
                    h().delete();
                }
            } catch (Throwable th) {
                la.c("Failed x CNC", th);
            }
        }
    }

    private static File h() {
        File file = new File(Tools.l(), String.valueOf(Process.myPid()) + a);
        try {
            file.getParentFile().mkdirs();
        } catch (Throwable th) {
            la.c("Failed mkdirs CNC", th);
        }
        return file;
    }
}
