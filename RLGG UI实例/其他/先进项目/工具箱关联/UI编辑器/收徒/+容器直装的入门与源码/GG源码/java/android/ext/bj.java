package android.ext;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.os.Build;
import android.os.IBinder;
import catch_.me_.if_.you_.can_.AnalyticsService;

/* compiled from: src */
/* loaded from: classes.dex */
public class bj extends Service {
    public static volatile bj a;
    public static volatile boolean b = false;
    public static volatile Runnable c = null;
    public static volatile boolean d = false;
    public static volatile boolean e = false;

    public bj() {
        a = this;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        la.a("BootstrapService onBind: " + intent);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        la.a("BootstrapService onCreate: " + b + '-' + d + "; " + a + "; " + this);
        if (!b) {
            a();
            return;
        }
        a = this;
        super.onCreate();
        b();
    }

    private void b() {
        Tools.e(this);
        if (d) {
            if (MainService.context == null) {
                MainService.context = ri.a(this);
            }
            ho.b();
        }
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        la.a("BootstrapService onStart: " + i + "; " + intent);
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        la.a("BootstrapService onUnbind: " + intent);
        return super.onUnbind(intent);
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        la.a("BootstrapService onRebind: " + intent);
        super.onRebind(intent);
    }

    @Override // android.app.Service
    public void onTaskRemoved(Intent intent) {
        la.a("BootstrapService onTaskRemoved: " + b + '-' + e + '-' + d + "; " + intent, new RuntimeException());
        if (b) {
            c();
            super.onTaskRemoved(intent);
        }
    }

    private void c() {
        if (!e && d) {
            String[] a2 = ho.a();
            for (int i = 2; i < a2.length; i += 2) {
                String str = a2[i];
                if (Tools.e(a2[i + 1])) {
                    RuntimeException runtimeException = new RuntimeException("BootstrapService stop: " + str);
                    la.b("Found: " + str, runtimeException);
                    ho.a(Thread.currentThread(), runtimeException);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        try {
            stopForeground(true);
            la.a("BootstrapService stopForeground");
        } catch (Throwable th) {
            la.a(th);
        }
        try {
            la.a("BootstrapService stop: " + stopService(new Intent().setClassName(Tools.g(), AnalyticsService.class.getName())));
        } catch (Throwable th2) {
            la.c("Failed stop Service", th2);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        la.a("BootstrapService onStartCommand: " + b + '-' + d + "; " + a + "; " + this + "; " + MainService.context);
        la.a("BootstrapService onStartCommand: " + i2 + ' ' + i + ' ' + intent);
        if (!b) {
            a();
            return 2;
        }
        b();
        if (d) {
            lh.i();
            int i3 = Config.vSpaceReal ? 4 : 2;
            int i4 = 0;
            Throwable th = null;
            while (i4 < i3) {
                try {
                    startForeground(1, MainService.instance.a(i4 % 2 == 0, i4 >= 2));
                    la.a("startForeground 1." + i4);
                    break;
                } catch (Throwable th2) {
                    if (th != null && Build.VERSION.SDK_INT >= 19) {
                        th2.addSuppressed(th);
                    }
                    if (i4 == i3 - 1) {
                        la.b("Failed startForeground", th2);
                        ho.a(Thread.currentThread(), th2, false);
                    }
                    i4++;
                    th = th2;
                }
            }
        }
        return super.onStartCommand(intent, i, i2);
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (c != null) {
            lg.a("AndroidService", "wait 3");
            c.run();
        } else if (!b) {
            la.a("BootstrapService onDestroy 1: " + b + '-' + e);
        } else {
            la.a("BootstrapService onDestroy 2: " + b + '-' + e, new RuntimeException());
            c();
            stopForeground(true);
            if (!bi.a()) {
                bf.b();
            }
            super.onDestroy();
        }
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        la.a("BootstrapService onConfigurationChanged: " + configuration);
        if (b) {
            Configuration a2 = android.fix.d.a(configuration);
            super.onConfigurationChanged(a2);
            MainService.a(a2);
        }
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onLowMemory() {
        la.a("BootstrapService onLowMemory");
        if (b) {
            super.onLowMemory();
            MainService.b(-1);
        }
    }

    @Override // android.app.Service, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        la.a("BootstrapService onTrimMemory: " + i);
        if (b) {
            super.onTrimMemory(i);
            MainService.b(i);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public SharedPreferences getSharedPreferences(String str, int i) {
        return qv.a(super.getSharedPreferences(str, i));
    }
}
