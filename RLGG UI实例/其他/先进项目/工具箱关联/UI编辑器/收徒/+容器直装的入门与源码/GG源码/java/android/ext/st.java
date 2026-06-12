package android.ext;

import android.annotation.TargetApi;
import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class st implements Runnable {
    @Override // java.lang.Runnable
    @TargetApi(19)
    public void run() {
        int i;
        RuntimeException runtimeException;
        Iterator it;
        Throwable b;
        ArrayList<Throwable> arrayList = new ArrayList();
        StringBuilder sb = new StringBuilder();
        sb.append("Context info. act - ");
        sb.append(Tools.d(ar.f));
        sb.append("; app - ");
        sb.append(Tools.d(ar.e));
        sb.append("; dae - ");
        sb.append(Tools.d(MainService.context));
        sb.append("; bad - ");
        Throwable b2 = Tools.b(ar.f);
        if (b2 != null) {
            i = 1;
            arrayList.add(b2);
        } else {
            i = 0;
        }
        Throwable b3 = Tools.b(ar.e);
        if (b3 != null) {
            i += 10;
            arrayList.add(b3);
        }
        if (MainService.context != null && (b = Tools.b(MainService.context)) != null) {
            i += 100;
            arrayList.add(b);
        }
        sb.append(i);
        String sb2 = sb.toString();
        if (i > 0) {
            if (Build.VERSION.SDK_INT < 19) {
                while (arrayList.iterator().hasNext()) {
                    sb2 = String.valueOf(sb2) + "\nSupressed: " + la.b((Throwable) it.next());
                }
                runtimeException = new RuntimeException(sb2);
            } else {
                RuntimeException runtimeException2 = new RuntimeException(sb2);
                for (Throwable th : arrayList) {
                    runtimeException2.addSuppressed(th);
                }
                runtimeException = runtimeException2;
            }
            ho.a(Thread.currentThread(), (Throwable) runtimeException, false);
        }
        la.a(sb2);
    }
}
