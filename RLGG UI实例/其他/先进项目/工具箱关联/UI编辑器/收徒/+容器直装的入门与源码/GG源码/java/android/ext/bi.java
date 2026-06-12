package android.ext;

import android.app.Instrumentation;
import android.content.ComponentName;
import android.content.Context;
import android.os.Bundle;

/* compiled from: src */
/* loaded from: classes.dex */
public class bi extends Instrumentation {
    public static volatile boolean a = false;
    public static volatile bi b;

    static {
        la.a("Instrumentation clinit");
        y.a();
        ho.b();
    }

    public bi() {
        b = this;
        la.a("Instrumentation init");
        ho.b();
    }

    public static boolean a() {
        return a;
    }

    public static void b() {
        bi biVar = b;
        if (biVar != null) {
            biVar.finish(0, new Bundle());
        }
    }

    @Override // android.app.Instrumentation
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ar.a(bundle);
        Tools.e(getTargetContext());
        Tools.e(getContext());
        if (MainService.context == null) {
            MainService.context = ri.a(a(false));
        }
        la.a("Instrumentation onCreate " + bundle);
        ho.b();
        b = this;
        a = true;
        start();
    }

    public Context a(boolean z) {
        Context targetContext = z ? getTargetContext() : getContext();
        Context targetContext2 = !z ? getTargetContext() : getContext();
        if (targetContext != null) {
            targetContext2 = targetContext;
        }
        return android.fix.d.c(targetContext2);
    }

    @Override // android.app.Instrumentation
    public void onStart() {
        super.onStart();
        String b2 = ar.b();
        la.a("Instrumentation onStart " + b2);
        Context a2 = a(true);
        String packageName = a2.getPackageName();
        Tools.a(100, new ComponentName(packageName, b2), 1);
        a2.startActivity(Tools.a(a2, packageName, b2));
    }

    @Override // android.app.Instrumentation
    public boolean onException(Object obj, Throwable th) {
        la.b("Instrumentation onException: " + obj, th);
        return super.onException(obj, th);
    }

    @Override // android.app.Instrumentation
    public void onDestroy() {
        bf.b();
        super.onDestroy();
    }
}
