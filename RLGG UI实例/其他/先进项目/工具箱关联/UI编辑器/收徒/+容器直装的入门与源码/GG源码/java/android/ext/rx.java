package android.ext;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Looper;

/* compiled from: src */
/* loaded from: classes.dex */
public class rx {
    private static final Looper[] a;
    private static final Handler[] b;

    static {
        ry ryVar = new ry("Main");
        ryVar.start();
        ry ryVar2 = new ry("Log");
        ryVar2.start();
        ry ryVar3 = new ry("Write");
        ryVar3.start();
        Looper[] looperArr = {Looper.getMainLooper(), ryVar.getLooper(), ryVar2.getLooper(), ryVar3.getLooper()};
        Handler[] handlerArr = {new Handler(looperArr[0]), new Handler(looperArr[1]), new Handler(looperArr[2]), new Handler(looperArr[3])};
        a = looperArr;
        b = handlerArr;
    }

    private static void a(int i, Runnable runnable, boolean z) {
        if (a == null) {
            lg.c("AndroidService", "Bad implementation", new NullPointerException("loopers"));
        } else if (a[i] == null) {
            lg.c("AndroidService", "Bad implementation", new NullPointerException("loopers[" + i + ']'));
        } else if (Looper.myLooper() == a[i] && !z) {
            runnable.run();
        } else {
            b[i].post(runnable);
        }
    }

    public static void a(Runnable runnable) {
        a(0, runnable, false);
    }

    public static void b(Runnable runnable) {
        a(1, runnable, false);
    }

    public static void c(Runnable runnable) {
        try {
            a(2, runnable, false);
        } catch (Throwable th) {
            lg.c("AndroidService", "Bad implementation", th);
        }
    }

    public static void d(Runnable runnable) {
        a(3, runnable, false);
    }

    private static Handler a(int i) {
        return b[i];
    }

    public static Handler a() {
        return a(0);
    }

    public static Handler b() {
        return a(1);
    }

    public static boolean c() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    @TargetApi(18)
    public static void d() {
        for (int i = 0; i < a.length; i++) {
            if (i != 0) {
                Looper looper = a[i];
                try {
                    looper.quitSafely();
                } catch (NoSuchMethodError e) {
                    looper.quit();
                }
            }
        }
    }
}
