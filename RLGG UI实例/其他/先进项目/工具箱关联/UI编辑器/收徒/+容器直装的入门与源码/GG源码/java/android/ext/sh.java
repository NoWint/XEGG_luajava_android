package android.ext;

import android.view.View;
import android.widget.Toast;

/* compiled from: src */
/* loaded from: classes.dex */
class sh implements Runnable {
    final /* synthetic */ sg a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sh(sg sgVar) {
        this.a = sgVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Toast f;
        Object obj;
        try {
            Toast makeText = Toast.makeText(sf.b(), " ", 1);
            View view = makeText.getView();
            view.setBackgroundColor(0);
            makeText.setView(view);
            f = sf.f(makeText);
            f.show();
            obj = sf.b;
            synchronized (obj) {
                sf.a = makeText;
            }
        } catch (Throwable th) {
            la.b("Toast show", th);
        }
    }
}
