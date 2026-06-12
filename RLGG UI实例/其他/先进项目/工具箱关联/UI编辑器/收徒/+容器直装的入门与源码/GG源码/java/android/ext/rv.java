package android.ext;

import android.os.Build;

/* compiled from: src */
/* loaded from: classes.dex */
public class rv {
    public static volatile boolean a = true;

    public static int a() {
        int i = Config.t;
        if (i < 0) {
            i = 2002;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return 2038;
        }
        return i;
    }

    public static int b() {
        int i = Config.t;
        if (i < 0) {
            i = 2003;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return 2038;
        }
        return i;
    }

    public static int c() {
        int i = Config.u;
        if (i < 0) {
            return 8;
        }
        return i;
    }
}
