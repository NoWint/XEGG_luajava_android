package android.ext;

import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.UnknownHostException;

/* compiled from: src */
/* loaded from: classes.dex */
public class la {
    static volatile boolean a = false;
    static volatile BufferedWriter b = null;
    private static long g = 0;
    static final Runnable c = new lb();
    static String d = "/last_run.log";
    public static String e = "- none -";
    static StringBuilder f = null;

    public static boolean a(boolean z) {
        if (b == null) {
            return false;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - g > 5000 || z) {
                try {
                    b.flush();
                } catch (NullPointerException e2) {
                }
                g = currentTimeMillis;
                return true;
            }
            return false;
        } catch (IOException e3) {
            lg.a("AndroidService", "Log write: I/O", e3);
            return false;
        }
    }

    public static void a() {
        rx.c(new lc());
    }

    public static void b() {
        rx.c(new ld());
    }

    public static int a(String str) {
        return a("AndroidService", str);
    }

    public static int a(String str, Throwable th) {
        return a("AndroidService", str, th);
    }

    public static int a(String str, String str2) {
        return lg.a(str, str2);
    }

    public static int a(String str, String str2, Throwable th) {
        return lg.a(str, str2, th);
    }

    public static int b(String str) {
        return b("AndroidService", str);
    }

    public static int b(String str, Throwable th) {
        return b("AndroidService", str, th);
    }

    public static int b(String str, String str2) {
        return lg.b(str, str2);
    }

    public static int b(String str, String str2, Throwable th) {
        return lg.b(str, str2, th);
    }

    public static int c(String str) {
        return c("AndroidService", str);
    }

    public static int c(String str, Throwable th) {
        return c("AndroidService", str, th);
    }

    public static int c(String str, String str2) {
        return lg.c(str, str2);
    }

    public static int c(String str, String str2, Throwable th) {
        return lg.c(str, str2, th);
    }

    public static int a(Throwable th) {
        return b("Bad implementation", th);
    }

    public static int d(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1003;
            a(str.substring(i, i2 < length ? i2 : length));
            i = i2;
        }
        return 0;
    }

    public static String b(Throwable th) {
        if (th == null) {
            return "";
        }
        for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
            if (th2 instanceof UnknownHostException) {
                return "";
            }
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        try {
            th.printStackTrace(printWriter);
        } catch (OutOfMemoryError e2) {
            printWriter.write("OutOfMemoryError 1\n");
            while (th != null) {
                try {
                    printWriter.write(th.toString());
                    printWriter.write("\n");
                    th = th.getCause();
                } catch (OutOfMemoryError e3) {
                    printWriter.write("OutOfMemoryError 2\n");
                }
            }
        } catch (Throwable th3) {
            printWriter.write("Exception on printStackTrace: " + th3.getMessage());
        }
        printWriter.flush();
        String stringWriter2 = stringWriter.toString();
        return stringWriter2 == null ? "" : stringWriter2;
    }

    public static void a(Process process, InputStream inputStream) {
        if (process != null) {
            new le("runLogOnProcessErrStream", inputStream, process).start();
        }
    }
}
