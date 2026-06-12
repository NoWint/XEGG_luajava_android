package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Build;
import catch_.me_.if_.you_.can_.R;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.Thread;
import java.util.Arrays;

/* compiled from: src */
/* loaded from: classes.dex */
public class ho implements Thread.UncaughtExceptionHandler {
    private static volatile Throwable c = null;
    private static volatile boolean d = false;
    private final Thread.UncaughtExceptionHandler a;
    private final String b;

    public static String[] a() {
        return new String[]{"XPrivacy", "biz.bokhorst.xprivacy", "Prevent Running", "me.piebridge.forcestopgb", "Brevent", "me.piebridge.brevent", "Security", "com.chaozhuo.permission.controller", "Whetstone", "com.miui.whetstone", "NeoSafe", "cn.nubia.security2"};
    }

    public static void b() {
        a(Thread.currentThread());
    }

    public static void a(Thread thread) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler == null || !(defaultUncaughtExceptionHandler instanceof ho)) {
            Thread.setDefaultUncaughtExceptionHandler(new ho(defaultUncaughtExceptionHandler, "default"));
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = thread.getUncaughtExceptionHandler();
        if (uncaughtExceptionHandler == null || !(uncaughtExceptionHandler instanceof ho)) {
            if (uncaughtExceptionHandler == null) {
                uncaughtExceptionHandler = thread.getThreadGroup();
            }
            thread.setUncaughtExceptionHandler(new ho(uncaughtExceptionHandler, "thread:" + thread.getName()));
        }
    }

    private ho(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, String str) {
        this.a = uncaughtExceptionHandler;
        this.b = str;
    }

    private static void a(String str, String str2, Runnable runnable) {
        String[] a = a();
        int i = 0;
        while (true) {
            if (i >= a.length) {
                i = -1;
                break;
            } else if (str.contains(": " + a[i])) {
                break;
            } else {
                i += 2;
            }
        }
        hp hpVar = new hp(str, a, i, runnable);
        if (i >= 0) {
            la.b(String.valueOf(a[i]) + " is reason of last fail");
            i.b(i.c().setCustomTitle(Tools.d((int) R.string.last_run_failed)).setMessage(String.valueOf(Tools.a(qk.a((int) R.string.killed_by), a[i])) + "\n\n" + str2).setNeutralButton(qk.a((int) R.string.more), hpVar).setNegativeButton(qk.a((int) R.string.ok), hpVar));
            return;
        }
        i.b(i.c().setCustomTitle(Tools.d((int) R.string.last_run_failed)).setMessage(String.valueOf(qk.a((int) R.string.unhandled_exception)) + "\n\n" + str).setPositiveButton(qk.a((int) R.string.yes), hpVar).setNegativeButton(qk.a((int) R.string.no), hpVar));
    }

    public static void c() {
        d();
        try {
            SharedPreferences s = Tools.s();
            if (s.contains("last_exception")) {
                a(s.getString("last_exception", "- unknown -"), s.getString("last_exception_trace", "- unknown -"), new hq(s));
            }
        } catch (StackOverflowError e) {
            la.a(e);
        }
        try {
            File file = new File(Tools.l(), "store_ex.txt");
            if (file.exists()) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
                    StringBuilder sb = new StringBuilder();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine != null) {
                            sb.append(readLine);
                            sb.append('\n');
                        } else {
                            bufferedReader.close();
                            String[] split = sb.toString().split("@#%~~%#@", 2);
                            a(split[0], split[1], new hr(file));
                            return;
                        }
                    }
                } catch (IOException e2) {
                    la.c("Failed load exception", e2);
                }
            }
        } catch (StackOverflowError e3) {
            la.a(e3);
        }
    }

    private static void d() {
        String readLine;
        File file = new File(Tools.l(), "client_crash.log");
        if ((Config.c & 64) == 0 && file.exists() && file.length() > 0) {
            String str = "Native crash detected: " + file.length();
            la.b(str);
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("\n\n");
                boolean z = false;
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
                while (!Thread.interrupted() && (readLine = bufferedReader.readLine()) != null) {
                    if (!z) {
                        String b = ex.b();
                        if (!readLine.contains(b) || readLine.trim().equals(b)) {
                            la.b("Native crash check fail.");
                            break;
                        }
                        z = true;
                    }
                    sb.append(readLine);
                    sb.append('\n');
                }
                bufferedReader.close();
                if (z) {
                    String sb2 = sb.toString();
                    if (!a(sb2)) {
                        if (sb2.contains(">>> " + Tools.g() + " <<<") && sb2.contains("backtrace:")) {
                            la.b("Native crash sended.");
                            b(sb2);
                        } else {
                            la.b("Native crash skipped.");
                        }
                    }
                }
                file.delete();
            } catch (Throwable th) {
                la.b("Native crash check file fail.", th);
            }
        }
        try {
            file.createNewFile();
        } catch (Throwable th2) {
            la.b("Native crash create file fail.", th2);
        }
    }

    public static boolean a(String str) {
        String[] a = a();
        if (str.contains(" Process  (") && str.contains(") has open file /")) {
            la.b("unmount is reason of last fail");
            i.b(i.c().setCustomTitle(Tools.d((int) R.string.last_run_failed)).setMessage(String.valueOf(qk.a((int) R.string.unmount_kill)) + "\n\n" + str).setPositiveButton(qk.a((int) R.string.fix_it), new hs()).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
            return true;
        } else if (str.contains("CZAutoRunController")) {
            a(str, 3, new be("kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh25<70krz0wr0uxq0lq0skrhql{rv0jdphjxdugldq2"));
            return true;
        } else if (str.contains(a[8])) {
            a(str, 4, new ht(a));
            return true;
        } else if (str.contains(a[10])) {
            a(str, 5, (DialogInterface.OnClickListener) null);
            return true;
        } else {
            return false;
        }
    }

    private static void a(String str, int i, DialogInterface.OnClickListener onClickListener) {
        String[] a = a();
        la.b(String.valueOf(a[i * 2]) + " is reason of last fail");
        AlertDialog.Builder negativeButton = i.c().setCustomTitle(Tools.d((int) R.string.last_run_failed)).setMessage(String.valueOf(Tools.a(qk.a((int) R.string.killed_by), a[i * 2])) + "\n\n" + str).setNeutralButton(qk.a((int) R.string.more), new hu(a, i)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null);
        if (onClickListener != null) {
            negativeButton.setPositiveButton(qk.a((int) R.string.fix_it), onClickListener);
        }
        i.b(negativeButton);
    }

    public static void a(String str, String str2, String str3) {
        if (Tools.e() != null) {
            Tools.s().edit().putString("last_exception", str).putString("last_exception_trace", str3).commit();
            return;
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(new File(Tools.l(), "store_ex.txt"))));
            bufferedWriter.write(String.valueOf(str) + "@#%~~%#@" + str3);
            bufferedWriter.close();
        } catch (IOException e) {
            la.c("Failed store exception", e);
        }
    }

    public static void a(Thread thread, Throwable th) {
        String name = thread.getName();
        String b = la.b(th);
        a("GG: " + ((107.6f * 1) - 6.5f) + " [" + ((int) (((16486.8f * 1) - 344.8f) + 0.5f)) + "]\nAndroid: " + Build.VERSION.RELEASE + "\nSDK: " + Build.VERSION.SDK_INT + "\nvSpace: " + lh.o() + "\nThread: " + name + '\n' + b + "\nHash: " + jp.g(), name, b);
    }

    public static String a(Thread thread, Throwable th, boolean z) {
        String str;
        String str2;
        String str3;
        String[] a;
        String[] strArr;
        String removeNewLinesChars = Tools.removeNewLinesChars("JJ#fudvkhg");
        String name = thread.getName();
        if (z) {
            la.c("Exception in thread " + name, th);
            la.b();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("GG: ");
        sb.append((110.2f * 1) - 9.1f);
        sb.append(" [");
        sb.append((int) (((16564.3f * 1) - 422.3f) + 0.5f));
        sb.append("]\nAndroid: ");
        sb.append(Build.VERSION.RELEASE);
        sb.append("\nSDK: ");
        sb.append(Build.VERSION.SDK_INT);
        sb.append("\nvSpace: ");
        sb.append(lh.o());
        sb.append("\nThread: ");
        sb.append(name);
        sb.append('\n');
        String b = la.b(th);
        boolean z2 = ((th instanceof StackOverflowError) || b.contains("java.lang.StackOverflowError")) && b.contains("com.lody.virtual.client.ipc.");
        sb.append(b);
        if (b.contains("ActivityNotFoundException")) {
            Tools.a(y.d, sb);
        }
        sb.append("\nHash: ");
        try {
            sb.append(jp.g());
        } catch (Throwable th2) {
            sb.append("???");
            la.c("dbg", th2);
        }
        String sb2 = sb.toString();
        boolean z3 = Tools.e() != null;
        boolean z4 = sb2.contains("EGL_") || sb2.contains("egl") || sb2.contains("HardwareRenderer");
        if (z && z3 && z4 && (Config.B & 2) != 0) {
            Config.a((int) R.id.config_acceleration).d = 0;
            Config.c();
            return String.valueOf(removeNewLinesChars) + ". Hardware acceleration fail.";
        } else if (z && z4 && (Config.B & 2) == 0 && ar.b) {
            String str4 = String.valueOf(removeNewLinesChars) + ". Hardware acceleration fail. Try use 'GG (SW)' icon for start.";
            d = true;
            ar.b = false;
            return str4;
        } else if (z && z3 && sb2.contains("Suggestion") && (Config.B & 8) != 0) {
            Config.a((int) R.id.config_suggestions).d = 0;
            Config.c();
            return String.valueOf(removeNewLinesChars) + ". Cause: suggestions.";
        } else if (z && z3 && sb2.contains("playSoundEffect") && (Config.B & 32) != 0) {
            Config.a((int) R.id.config_use_sound_effects).d = 0;
            Config.c();
            return String.valueOf(removeNewLinesChars) + ". Cause: sound effects.";
        } else {
            try {
                File file = new File(Tools.r(), "crash.txt");
                FileOutputStream fileOutputStream = new FileOutputStream(file, true);
                ar.a(fileOutputStream, file.getAbsolutePath(), "");
                fileOutputStream.write("".getBytes());
                fileOutputStream.write(sb2.getBytes());
                fileOutputStream.close();
                str = String.valueOf(removeNewLinesChars) + "\nLog: " + file.getAbsolutePath();
            } catch (Throwable th3) {
                la.b("Failed out crash to file", th3);
                str = removeNewLinesChars;
            }
            try {
                File file2 = new File(Tools.r(), "logcat.txt");
                ar.a(new FileOutputStream(file2, true), file2.getAbsolutePath(), "");
                try {
                    if (!Tools.a(Tools.a(new String[]{"logcat", "-f", Tools.n(file2.getAbsolutePath()), "-d", "-v", "threadtime", "-b", "main", "-b", "system", "*:V"}), 15)) {
                        la.b("timeout fail 1: " + Arrays.toString(strArr), new RuntimeException());
                    }
                } catch (Exception e) {
                    la.b("exec", e);
                }
                str2 = String.valueOf(str) + "\nLogcat: " + file2.getAbsolutePath();
            } catch (Throwable th4) {
                la.b("Failed out logcat to file", th4);
                str2 = str;
            }
            try {
                Config.a((int) R.id.record_logcat).d = (int) (((1 * 16623.8f) - 481.8f) + 0.5f);
                Config.c();
                str3 = String.valueOf(str2) + "\nNext run rec logcat: " + ar.e();
            } catch (Throwable th5) {
                la.b("Failed enable logcat on next run", th5);
                str3 = str2;
            }
            try {
                a = a();
            } catch (Throwable th6) {
                la.b("Cannot send exception info", th6);
                if (z) {
                    a(sb2, name, la.b(th));
                }
            }
            if (z && sb2.contains(": " + a[0])) {
                throw new RuntimeException(String.valueOf(a[0]) + " is cause");
            }
            if (z2) {
                la.a("VSpace StackOverflowError - log not sended");
                return str3;
            }
            if (!uk.a(sb2, true)) {
                throw new RuntimeException("Failed sendLogBlocking");
            }
            return str3;
        }
    }

    public static void b(String str) {
        uk.a("GG: " + ((112.0f * 1) - 10.9f) + " [" + ((int) (((16826.4f * 1) - 684.4f) + 0.5f)) + "]\nAndroid: " + Build.VERSION.RELEASE + "\nSDK: " + Build.VERSION.SDK_INT + "\nvSpace: " + lh.o() + '\n' + str + "\nHash: " + jp.g(), true);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        if (c != th) {
            c = th;
            if (!(th instanceof hw)) {
                c(a(thread, th, true));
                if (d) {
                    ar.h();
                }
            }
        } else {
            la.a("uncaughtException already called for: " + th);
        }
        if (this.a != null) {
            this.a.uncaughtException(thread, th);
        }
    }

    private void c(String str) {
        try {
            new hv(this, "showToast", str).start();
            try {
                Thread.sleep(4000L);
            } catch (InterruptedException e) {
            }
        } catch (Throwable th) {
        }
    }
}
