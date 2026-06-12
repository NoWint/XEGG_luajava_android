package android.ext;

import android.content.SharedPreferences;
import android.os.Process;
import android.text.TextUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* compiled from: src */
/* loaded from: classes.dex */
public class qt {
    public static String a = "";
    static volatile int b;
    private static boolean c;
    private static String d;

    static {
        c = false;
        d = "su";
        d = "su";
        SharedPreferences s = Tools.s();
        d = s.getString("su", "su");
        c = s.getBoolean("sh", false);
        b = 0;
    }

    private static String a(String str, InputStream inputStream) {
        byte[] bArr;
        int read;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(": ");
        try {
            int available = inputStream.available();
            if (available > 0 && (read = inputStream.read((bArr = new byte[available]))) > 0) {
                sb.append(new String(Arrays.copyOf(bArr, read)));
            }
        } catch (IOException e) {
            sb.append(e.toString());
        }
        sb.append('\n');
        return sb.toString();
    }

    public static String a(Process process) {
        StringBuilder sb = new StringBuilder();
        if (process != null) {
            sb.append(a("stdout", process.getInputStream()));
            sb.append(a("stderr", process.getErrorStream()));
            sb.append("exit value: ");
            try {
                sb.append(process.exitValue());
            } catch (IllegalThreadStateException e) {
                sb.append("already run");
            }
            sb.append('\n');
        } else {
            sb.append("process is null\n");
        }
        return sb.toString();
    }

    private static String a() {
        String[] strArr = {"/vendor/bin", "/system/bin", "/bin", "/data/local", "/data/local/bin", "/system/sd/bin", "/system/bin/failsafe", "/system/bin/bstk", "/su/bin", "/magisk/.core/bin", "/magisk/phh/bin"};
        ArrayList arrayList = new ArrayList(strArr.length * 3);
        for (String str : strArr) {
            arrayList.add(str);
            if (str.contains("/bin")) {
                arrayList.add(str.replace("/bin", "/xbin"));
                arrayList.add(str.replace("/bin", "/sbin"));
            }
        }
        return TextUtils.join(":", arrayList);
    }

    private static String[] b() {
        Map<String, String> map = System.getenv();
        int size = map.size();
        String str = map.get("PATH");
        if (str == null) {
            size++;
        }
        String[] strArr = new String[size];
        int i = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if ("PATH".equals(key)) {
                value = String.valueOf(value) + ':' + a();
            }
            strArr[i] = String.valueOf(key) + '=' + value;
            i++;
        }
        if (str == null) {
            int i2 = i + 1;
            strArr[i] = "PATH=" + a();
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        return Config.C ? "sh" : str == null ? d : str;
    }

    public static Process b(String str) {
        return a(str, (String) null, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00e8 A[LOOP:0: B:17:0x00bb->B:32:0x00e8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x016b A[LOOP:1: B:29:0x00d9->B:42:0x016b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00be A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Process a(java.lang.String r9, java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 388
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.ext.qt.a(java.lang.String, java.lang.String, boolean):java.lang.Process");
    }

    public static String a(String str, int i) {
        String a2 = a(str, i, (String) null);
        a = "";
        return a2;
    }

    public static String a(String str, int i, String str2) {
        StringBuilder sb = new StringBuilder();
        b = 0;
        FutureTask futureTask = new FutureTask(new qu(str, str2, sb));
        new hx(futureTask, "runCmd: " + str).start();
        try {
            futureTask.get(i, TimeUnit.SECONDS);
        } catch (ExecutionException e) {
            la.c("cmd (" + str + ") expection", e);
            sb.append("expection: ");
            sb.append(e.getMessage());
        } catch (TimeoutException e2) {
            la.a("cmd (" + str + ") exit: timeout " + i, e2);
            sb.append("timeout: ");
            sb.append(i);
        }
        int i2 = b;
        if (i2 > 0) {
            try {
                la.a("Kill: " + i2);
                Process.killProcess(i2);
                la.a("Kill: ok");
            } catch (Throwable th) {
                la.a("Failed kill", th);
            }
        }
        b = 0;
        return sb.toString();
    }
}
