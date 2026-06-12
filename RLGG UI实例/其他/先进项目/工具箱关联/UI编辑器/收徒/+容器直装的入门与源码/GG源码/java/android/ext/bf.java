package android.ext;

import android.content.Context;

/* compiled from: src */
/* loaded from: classes.dex */
public class bf {
    public static void a() {
        Context context;
        la.a("Bootstrap startService");
        if (MainService.instance != null) {
            la.a("Bootstrap startService: already");
            return;
        }
        if (bi.a()) {
            context = bi.b.a(false);
        } else {
            context = bj.a != null ? bj.a : MainService.context;
        }
        if (context != null) {
            a(context);
        } else {
            la.b("Bootstrap startService: null");
        }
    }

    public static void a(Context context) {
        if (MainService.instance != null) {
            la.a("Bootstrap start: already");
        }
        new MainService(android.fix.d.c(context));
        rx.a(new bg());
    }

    public static void b() {
        la.a("Bootstrap onDestroy");
        rx.a(new bh());
    }
}
