package android.ext;

import android.app.Application;
import android.os.Build;

/* compiled from: src */
/* loaded from: classes.dex */
public class ae extends Application {
    public ae() {
        la.a("Application init");
        ho.b();
    }

    static {
        la.a("Application clinit");
        y.a();
        ho.b();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        la.a("Application onLowMemory");
        super.onLowMemory();
        MainService.b(-1);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        la.a("Application onTrimMemory: " + i);
        super.onTrimMemory(i);
        MainService.b(i);
    }

    @Override // android.app.Application
    public void onCreate() {
        la.a("Application onCreate");
        super.onCreate();
        try {
            if (Build.VERSION.SDK_INT >= 14) {
                registerActivityLifecycleCallbacks(new af(this));
            }
        } catch (Throwable th) {
            la.a(th);
        }
    }

    @Override // android.app.Application
    public void onTerminate() {
        la.a("Application onTerminate");
        super.onTerminate();
    }
}
