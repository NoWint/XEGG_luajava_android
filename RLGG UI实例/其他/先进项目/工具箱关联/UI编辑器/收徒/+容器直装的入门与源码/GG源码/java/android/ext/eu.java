package android.ext;

import android.content.res.Resources;
import android.lang.ProcessBuilder;
import android.os.Build;
import android.system.ErrnoException;
import android.system.Os;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: src */
/* loaded from: classes.dex */
public class eu {
    private final String c = g();
    private static volatile String d = null;
    private static volatile String e = null;
    private static volatile int f = 100;
    private static volatile char g = 'i';
    private static volatile char h = 'g';
    public static StringBuilder a = new StringBuilder();
    public static StringBuilder b = new StringBuilder();

    public static String a() {
        if (d == null) {
            d = new eu().c;
        }
        return d;
    }

    public static int b() {
        a();
        return f;
    }

    public static boolean c() {
        int b2 = b();
        return b2 == 101 || b2 == 102;
    }

    private static void a(ArrayList arrayList, String str, String str2, boolean z) {
        File file = new File(str);
        if (!z || file.exists()) {
            arrayList.add(new File(String.valueOf(str) + "/files", str2));
            arrayList.add(new File(String.valueOf(str) + "/cache", str2));
            arrayList.add(new File(String.valueOf(str) + "/files"));
            arrayList.add(new File(String.valueOf(str) + "/cache"));
            arrayList.add(file);
        }
    }

    private static File f() {
        String str;
        File i = Tools.i();
        File h2 = Tools.h();
        String j = Tools.j();
        ArrayList arrayList = new ArrayList(64);
        arrayList.add(Tools.l());
        arrayList.add(Tools.k());
        arrayList.add(i);
        arrayList.add(h2);
        arrayList.add(new File(i.getParentFile(), j));
        arrayList.add(new File(h2.getParentFile(), j));
        arrayList.add(i.getParentFile());
        arrayList.add(h2.getParentFile());
        String absolutePath = i.getAbsolutePath();
        String str2 = absolutePath.startsWith("/data/user/") ? absolutePath.split("/", -1)[3] : "0";
        String str3 = absolutePath.startsWith("/data/user/") ? "/data/user/" + str2 + "/" : "/data/data/";
        if (Config.vSpaceReal) {
            a(arrayList, String.valueOf(str) + "/parallel_intl/0/" + y.d, j, true);
            a(arrayList, String.valueOf(str) + "/parallel_lite/0/" + y.d, j, true);
            a(arrayList, String.valueOf(str) + "/parallel_pro/0/" + y.d, j, true);
            a(arrayList, String.valueOf(str) + "/virtual/data/user/0/" + y.d, j, true);
            a(arrayList, String.valueOf(str) + "/gaia/data/user/0/" + y.d, j, true);
            a(arrayList, String.valueOf(str) + "/com.vmos.glb/osimg/r/ot01/data/data/" + y.d, j, true);
            a(arrayList, String.valueOf(str) + "/mopen/data/user/0/" + y.d, j, true);
            a(arrayList, String.valueOf(str) + "/vbox/data/user/0/" + y.d, j, true);
            a(arrayList, String.valueOf(str) + "/sandboxdata/" + y.d, j, true);
            a(arrayList, String.valueOf(str) + "/gameplugins/" + y.d, j, true);
            a(arrayList, String.valueOf(str) + "/Plugin/0/" + y.d + "/data/" + y.d, j, true);
            a(arrayList, "/data/user_de/" + str2 + "/" + Config.E, j, false);
            a(arrayList, String.valueOf(str3) + Config.E, j, false);
        } else {
            a(arrayList, String.valueOf(str3) + y.d, j, false);
            a(arrayList, "/data/user_de/" + str2 + "/" + y.d, j, false);
            arrayList.add(new File("/data/data"));
            arrayList.add(new File("/data"));
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            if (file != null) {
                if (!file.exists()) {
                    file.mkdirs();
                }
                if (file.exists()) {
                    return file;
                }
                try {
                    if (Build.VERSION.SDK_INT >= 21) {
                        String absolutePath2 = file.getAbsolutePath();
                        try {
                            if ((Os.stat(absolutePath2).st_mode & 16384) != 0) {
                                return file;
                            }
                        } catch (Exception e2) {
                            if (e2 instanceof ErrnoException) {
                                la.b("Errno for path '" + absolutePath2 + "': " + ((ErrnoException) e2).errno, e2);
                            } else {
                                la.b("Exception for path '" + absolutePath2 + "'", e2);
                            }
                        }
                    } else {
                        continue;
                    }
                } catch (Throwable th) {
                    la.a(th);
                }
            }
        }
        la.b("Failed get dir for fix");
        return null;
    }

    private static String a(String str) {
        for (char c : new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'd'}) {
            File file = new File(str, c(c));
            if (file.exists()) {
                String absolutePath = file.getAbsolutePath();
                if (!Tools.d(absolutePath)) {
                    la.a("Can not execute " + absolutePath);
                }
            }
        }
        return str;
    }

    public static String d() {
        if (e == null) {
            File f2 = f();
            if (f2 == null) {
                f2 = Tools.l();
            }
            e = a(f2.getAbsolutePath());
        }
        return e;
    }

    private boolean a(char c, int i) {
        switch (c) {
            case '0':
                return 101 == i;
            case '1':
                return 101 == i;
            case '2':
                return 102 == i;
            case '5':
                return 105 == i;
            case '7':
                return 104 == i;
            case '8':
                return 104 == i;
            case 'a':
                return 103 == i;
            case 'b':
                return 103 == i;
            default:
                throw new RuntimeException("Unknown lib: " + c);
        }
    }

    private static void a(char c) {
        b(Character.toString(c));
    }

    private static void b(String str) {
        File file = new File(d(), c(str));
        if (!file.isFile()) {
            la.a("Extract file " + file);
            Resources resources = Tools.e().getResources();
            int a2 = qk.a("ydw" + str, R.raw.class);
            if (a2 == 0) {
                la.a("Nothing extract file " + str + ' ' + file.getAbsolutePath());
                return;
            }
            try {
                byte[] bArr = new byte[8192];
                InputStream openRawResource = resources.openRawResource(a2);
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                while (true) {
                    int read = openRawResource.read(bArr);
                    if (read > 0) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        fileOutputStream.close();
                        openRawResource.close();
                        return;
                    }
                }
            } catch (Throwable th) {
                la.a("Failed extract file " + str + ' ' + file.getAbsolutePath(), th);
            }
        }
    }

    public static String a(boolean z) {
        return "/lib" + (z ? h : g) + ".so";
    }

    private void b(char c) {
        a(c);
        switch (c) {
            case '2':
                b("01");
                a('4');
                a('f');
                h = 'f';
                a('k');
            case '0':
            case '1':
                a('3');
                a('e');
                g = 'e';
                a('j');
                break;
            case '5':
                b("08");
                a('6');
                a('g');
                h = 'g';
                a('l');
            case '7':
            case '8':
                a('9');
                a('h');
                g = 'h';
                a('n');
                break;
            case 'a':
            case 'b':
                a('d');
                a('i');
                g = 'i';
                a('o');
                break;
        }
        try {
            Tools.a("sh", new File(Tools.l(), "sh.jar"));
        } catch (Throwable th) {
            la.c("JVM fail", th);
        }
    }

    public static void e() {
        char[] cArr = Build.VERSION.SDK_INT < 21 ? new char[]{0, 'p', 's', 't', 'q', 'r'} : new char[]{0, 'q', 'p', 'r', 's', 't'};
        String d2 = d();
        for (int i = 0; i < cArr.length; i++) {
            if (i == 0) {
                int i2 = 1;
                while (true) {
                    if (i2 < cArr.length) {
                        if (!new File(d2, c(cArr[i2])).exists()) {
                            i2++;
                        } else {
                            cArr[0] = cArr[i2];
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (cArr[0] == 0) {
                    continue;
                }
            }
            File file = new File(d2, c(cArr[i]));
            if (!file.isFile()) {
                a(cArr[i]);
            }
            if (!file.isFile()) {
                la.a("Not a file " + file + ' ' + file.getAbsolutePath());
            } else {
                try {
                    System.load(file.getAbsolutePath());
                    try {
                        ProcessBuilder.loaded();
                        return;
                    } catch (Throwable th) {
                        la.a("Failed check " + file + ' ' + file.getAbsolutePath(), th);
                    }
                } catch (Throwable th2) {
                    la.a("Failed load " + file + ' ' + file.getAbsolutePath(), th2);
                }
            }
        }
    }

    private static String c(char c) {
        return c(Character.toString(c));
    }

    private static String c(String str) {
        return "lib" + str + ".so";
    }

    private String g() {
        char[] cArr;
        boolean z = true;
        int i = Build.VERSION.SDK_INT;
        if (i < 16) {
            cArr = new char[]{0, '0', '7', 'a', '2', '1', '5', '8', 'b'};
        } else {
            cArr = i < 21 ? new char[]{0, '1', '0', '8', '7', 'b', 'a', '2', '5'} : new char[]{0, '2', '1', '5', '8', 'b', '0', '7', 'a'};
        }
        String d2 = d();
        boolean z2 = (Config.C && (Config.G == 1 || (Config.G == 0 && Config.E.contains("64")))) ? false : true;
        for (int i2 = 0; i2 < cArr.length; i2++) {
            if (i2 == 0) {
                int i3 = 1;
                while (true) {
                    if (i3 < cArr.length) {
                        if (!new File(d2, c(cArr[i3])).exists()) {
                            i3++;
                        } else {
                            cArr[0] = cArr[i3];
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (cArr[0] == 0) {
                    continue;
                }
            }
            b.append(cArr[i2]);
            b.append(": ");
            String str = "0" + cArr[i2];
            File file = new File(d2, c(str));
            if (!file.isFile()) {
                b(str);
            }
            if (!file.isFile()) {
                b.append(file);
                b.append(" NF.\n");
                la.a("Not a file " + file + ' ' + file.getAbsolutePath());
            } else {
                a.append(cArr[i2]);
                int d3 = d(file.getAbsolutePath());
                if (!a(cArr[i2], d3)) {
                    la.a("getArch " + cArr[i2] + ' ' + d3);
                    b.append("; ");
                    b.append(d3);
                    b.append('\n');
                    if (!z2 && (d3 & 127) < 100) {
                        z2 = true;
                    }
                } else {
                    if (d3 != 105 && d3 != 102) {
                        z = false;
                    }
                    InOut.a(z);
                    a = new StringBuilder(0);
                    b = new StringBuilder(0);
                    String absolutePath = new File(d2, c(cArr[i2])).getAbsolutePath();
                    la.a("Daemon: " + absolutePath);
                    f = d3;
                    b(cArr[i2]);
                    Tools.d(absolutePath);
                    return absolutePath;
                }
            }
        }
        if (z2) {
            try {
                File file2 = new File(Tools.r());
                if (a(file2)) {
                    file2 = Tools.e().getExternalCacheDir();
                    if (a(file2)) {
                        file2 = Tools.e().getExternalFilesDir(null);
                        if (a(file2)) {
                            file2 = new File("/sdcard");
                        }
                    }
                }
                File file3 = new File(file2, "gg_fixer.apk");
                if (file3.exists()) {
                    file3.delete();
                }
                Tools.a("fx", file3);
                rx.a(new ev(this, file3));
            } catch (Throwable th) {
                la.b("Failed extract fx", th);
            }
        }
        a.append(';');
        String n = Tools.n(d2);
        String[] strArr = {"ls", "-l", n};
        try {
            b.append("\n\n");
            b.append("ls -l ");
            b.append(n);
            b.append(":\n");
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Tools.a(strArr).getInputStream()));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                } else if (readLine.indexOf("lib") != -1 && readLine.indexOf(".so") != -1) {
                    la.a("ls: " + readLine);
                    b.append(readLine);
                    b.append('\n');
                }
            }
            bufferedReader.close();
        } catch (Exception e2) {
            la.b("ls: " + n, e2);
            b.append(e2);
            b.append('\n');
        }
        b.append('\n');
        return "no_binary_for_your_arch";
    }

    private boolean a(File file) {
        if (file == null) {
            return true;
        }
        if (!file.exists()) {
            file.mkdirs();
            if (!file.exists()) {
                return true;
            }
        }
        return false;
    }

    private int d(String str) {
        Tools.d(str);
        for (int i = 0; i < 2; i++) {
            try {
                String[] strArr = new String[2];
                strArr[0] = Tools.n(str);
                strArr[1] = Config.vSpaceReal ? Config.E : "1";
                Process a2 = Tools.a(strArr);
                if (Tools.a(a2, 30)) {
                    return a2.exitValue();
                }
                throw new RuntimeException("timeout: 30");
            } catch (IOException e2) {
                if (i == 0) {
                    try {
                        String message = e2.getMessage();
                        if (message != null && message.indexOf("denied") != -1) {
                            Tools.a(str, "0755");
                        }
                    } catch (Throwable th) {
                        la.b("getArch: " + str, th);
                        b.append(th.toString());
                        return 100;
                    }
                }
                throw e2;
            }
        }
        return 100;
    }
}
