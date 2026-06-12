package android.ext;

import android.content.Context;
import android.os.Handler;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

/* compiled from: src */
/* loaded from: classes.dex */
public class sf {
    private static volatile Toast a = null;
    private static final Object b = new Object();
    private static volatile WeakReference c = null;
    private static final Object d = new Object();
    private static volatile WeakReference e = null;
    private static Context f;
    private static Context g;

    static {
        new gr(new sg(), "toastThread").start();
        f = null;
        g = null;
    }

    public static void a() {
    }

    public static Context b() {
        Context e2 = Tools.e();
        if (Config.vSpaceReal && !Config.D) {
            if (f == null || f != e2) {
                g = Config.a(e2);
                f = e2;
            }
            return g;
        }
        return e2;
    }

    public static void a(Toast toast) {
        Toast toast2;
        Runnable runnable;
        Toast toast3;
        synchronized (d) {
            WeakReference weakReference = c;
            toast2 = weakReference == null ? null : (Toast) weakReference.get();
            c = null;
            WeakReference weakReference2 = e;
            runnable = weakReference2 == null ? null : (Runnable) weakReference2.get();
            e = null;
        }
        f(toast).show();
        si siVar = new si(toast);
        synchronized (d) {
            c = new WeakReference(toast);
            e = new WeakReference(siVar);
        }
        synchronized (b) {
            toast3 = a;
            a = null;
        }
        e(toast3);
        e(toast2);
        Handler a2 = rx.a();
        if (runnable != null) {
            a2.removeCallbacks(runnable);
        }
        a2.postDelayed(siVar, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Toast toast) {
        if (toast != null) {
            rx.a(new sj(toast));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Toast f(Toast toast) {
        Field[] declaredFields;
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(toast);
            for (Field field : obj.getClass().getDeclaredFields()) {
                String name = field.getName();
                if (name.equals("mShow") || name.equals("mHide")) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    if (obj2 instanceof Runnable) {
                        field.set(obj, to.a((Runnable) obj2));
                    }
                } else if (name.equals("mHandler")) {
                    field.setAccessible(true);
                    Object obj3 = field.get(obj);
                    if (obj3 instanceof Handler) {
                        field.set(obj, tm.a((Handler) obj3));
                    }
                }
            }
        } catch (Throwable th) {
            la.a(th);
        }
        return toast;
    }
}
