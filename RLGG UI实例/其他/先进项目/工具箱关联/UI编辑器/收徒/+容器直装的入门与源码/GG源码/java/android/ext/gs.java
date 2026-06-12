package android.ext;

import android.content.DialogInterface;
import android.os.Build;
import android.os.Process;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.Arrays;
import java.util.GregorianCalendar;

/* compiled from: src */
/* loaded from: classes.dex */
public class gs {
    public static void a() {
        Tools.a((int) R.string.collect_data_to_region_log);
        new gt("runCollectRegionLog").start();
    }

    public static void b() {
        int i;
        qx qxVar;
        String absolutePath = new File(Tools.r(), "GG_" + Build.VERSION.RELEASE + "_API_" + Build.VERSION.SDK_INT + ".log").getAbsolutePath();
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(absolutePath, false));
            bufferedWriter.write(new GregorianCalendar().getTime().toString());
            bufferedWriter.write("\n");
            bufferedWriter.write("Release: ");
            bufferedWriter.write(Build.VERSION.RELEASE);
            bufferedWriter.write("\n");
            bufferedWriter.write("SDK: ");
            bufferedWriter.write(new StringBuilder().append(Build.VERSION.SDK_INT).toString());
            bufferedWriter.write("\n");
            try {
                Process a = qt.a(Tools.removeNewLinesChars("hfkr#%olvw=%>#ov#0o#2surf2>#iru#l#lq#2surf2->#gr#hfkr#%fdw#'l2pdsv=%>#fdw#'l2pdsv>#grqh>#h{lw>"), (String) null, true);
                if (a == null) {
                    bufferedWriter.write(qt.a);
                } else {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a.getInputStream()));
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        bufferedWriter.write(readLine);
                        bufferedWriter.write("\n");
                    }
                    bufferedReader.close();
                }
                qt.a = "";
                bufferedWriter.write("current pid: ");
                qh qhVar = MainService.instance.ap;
                bufferedWriter.write(qhVar != null ? new StringBuilder().append(qhVar.f).toString() : "0");
                bufferedWriter.write("\n");
                bufferedWriter.write("search results:\n");
                android.c.a aVar = MainService.instance.am;
                d dVar = new d();
                synchronized (aVar) {
                    int b = aVar.b();
                    for (int i2 = 0; i2 < b; i2++) {
                        aVar.a(i2, dVar);
                        bufferedWriter.write(String.valueOf(ts.a(8, dVar.b)) + ' ' + dVar.h() + ' ' + ((Object) dVar.n()) + " (" + Integer.toBinaryString(dVar.d) + ")\n");
                    }
                }
                bufferedWriter.write("saved list:\n");
                android.c.e b2 = MainService.instance.an.b();
                for (int i3 = 0; i3 < b2.b(); i3++) {
                    if (((qx) b2.c(i3)) != null) {
                        bufferedWriter.write(String.valueOf(ts.a(8, qxVar.b)) + ' ' + qxVar.h() + ' ' + ((Object) qxVar.n()) + " (" + Integer.toBinaryString(qxVar.d) + ")\n");
                    }
                }
            } catch (Exception e) {
                bufferedWriter.write(e.getMessage());
                bufferedWriter.write("\n");
            }
            bufferedWriter.close();
            i = R.string.log_saved;
        } catch (Exception e2) {
            la.c("Error opening file to save: " + absolutePath, e2);
            i = R.string.failed_save;
        }
        i.a(i.c().setCustomTitle(Tools.d((int) R.string.region_log)).setMessage(Tools.a(qk.a(i), absolutePath)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
    }

    public static int c() {
        return a(new StringBuilder().append((112.5f * 1) - 11.4f).toString());
    }

    public static int a(String str) {
        int i = 0;
        String[] split = str.replaceAll("[^\\d.]", "").split("\\.", -1);
        int i2 = 0;
        while (true) {
            int i3 = i;
            if (i2 < split.length) {
                try {
                    i = (i3 * 100) + Integer.parseInt(split[i2]);
                } catch (NumberFormatException e) {
                    la.b("bad part of version: " + split[i2] + '(' + str + ')', e);
                    i = i3;
                }
                i2++;
            } else {
                return i3;
            }
        }
    }

    public static String d() {
        Field[] fields;
        StringBuilder sb = new StringBuilder();
        sb.append(" Android(");
        for (Class cls : new Class[]{Build.VERSION.class, Build.class}) {
            for (Field field : cls.getFields()) {
                try {
                    int modifiers = field.getModifiers();
                    if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                        sb.append(field.getName());
                        sb.append(": ");
                        Object obj = field.get(null);
                        if (obj instanceof Object[]) {
                            sb.append(Arrays.toString((Object[]) obj));
                        } else {
                            sb.append(obj);
                        }
                        sb.append("; ");
                    }
                } catch (Throwable th) {
                    sb.append(th.getMessage());
                }
            }
        }
        sb.append(')');
        return sb.toString();
    }

    public static void e() {
        new gu("showInfo").start();
    }

    public static String f() {
        return String.valueOf((103.2f * 1) - 2.1f) + " (" + ((int) (((16359.7f * 1) - 217.7f) + 0.5f)) + ") " + jp.g() + " on " + d();
    }

    public static String a(boolean z) {
        return a(z, 0);
    }

    private static String a(boolean z, int i) {
        String str;
        String readLine;
        StringBuilder sb = new StringBuilder();
        try {
            String removeNewLinesChars = Tools.removeNewLinesChars("h{hf#orjfdw#0g#");
            if (z) {
                str = String.valueOf(removeNewLinesChars) + "-v threadtime ";
            } else {
                str = String.valueOf(removeNewLinesChars) + "-v brief ";
            }
            Process a = qt.a(str, (String) null, true);
            if (a == null) {
                sb.append(qt.a);
            } else {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a.getInputStream()));
                String[] strArr = i > 0 ? new String[i] : null;
                int i2 = 0;
                while (!Thread.interrupted() && (readLine = bufferedReader.readLine()) != null) {
                    boolean z2 = readLine.contains("AndroidService");
                    if (!z2 && readLine.contains("android-daemon")) {
                        z2 = true;
                    }
                    if (!z2 && readLine.contains("AndroidRuntime")) {
                        z2 = true;
                    }
                    if (!z2 && readLine.contains("libc")) {
                        z2 = true;
                    }
                    if (!z2 && readLine.contains("Vold")) {
                        z2 = true;
                    }
                    if (!z2 && readLine.contains("DEBUG")) {
                        z2 = true;
                    }
                    if (!z2 && readLine.contains("CRASH")) {
                        z2 = true;
                    }
                    if (!z2 && readLine.contains("*** *** *** *** *** *** ***")) {
                        z2 = true;
                    }
                    if (!z2 && readLine.contains(Tools.g())) {
                        z2 = true;
                    }
                    if (!z2 && readLine.contains("--- beginning of ")) {
                        z2 = true;
                    }
                    int myPid = Process.myPid();
                    if (!z2 && myPid > 0 && readLine.contains(Integer.toString(myPid))) {
                        z2 = true;
                    }
                    int o = MainService.instance.k.o();
                    if (!z2 && o > 0 && readLine.contains(Integer.toString(o))) {
                        z2 = true;
                    }
                    int p = MainService.instance.k.p();
                    if (!z2 && p > 0 && readLine.contains(Integer.toString(p))) {
                        z2 = true;
                    }
                    if (z2) {
                        if (strArr != null) {
                            int i3 = i2 + 1;
                            strArr[i2] = readLine;
                            i2 = i3 >= i ? 0 : i3;
                        } else {
                            sb.append(readLine);
                            sb.append('\n');
                        }
                    }
                }
                if (strArr != null) {
                    int i4 = i2;
                    while (!Thread.interrupted()) {
                        int i5 = i4 + 1;
                        String str2 = strArr[i4];
                        if (str2 != null) {
                            sb.append(str2);
                            sb.append('\n');
                        }
                        if (i5 >= i) {
                            i5 = 0;
                        }
                        if (i5 == i2) {
                            break;
                        }
                        i4 = i5;
                    }
                }
            }
        } catch (OutOfMemoryError e) {
            try {
                sb = new StringBuilder();
                sb.append(a(z, 500));
            } catch (OutOfMemoryError e2) {
                sb = new StringBuilder();
                sb.append("OutOfMemoryError\n");
            }
        } catch (Throwable th) {
            sb.append(th.getMessage());
            sb.append('\n');
            la.a("getLogcat fail.", th);
        }
        qt.a = "";
        try {
            return sb.toString();
        } catch (OutOfMemoryError e3) {
            return "OutOfMemoryError\n";
        }
    }
}
