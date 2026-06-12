package android.ext;

import android.view.View;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ay implements Runnable {
    final /* synthetic */ ar a;
    private final /* synthetic */ int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ay(ar arVar, int i) {
        this.a = arVar;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public void run() {
        WeakReference weakReference;
        weakReference = this.a.j;
        View view = (View) weakReference.get();
        if (view != null) {
            View findViewById = view.findViewById(R.id.loader);
            if (findViewById != null) {
                findViewById.setVisibility(this.b == 0 ? 0 : 8);
            }
            View findViewById2 = view.findViewById(R.id.installer);
            if (findViewById2 != null) {
                findViewById2.setVisibility(this.b == 1 ? 0 : 8);
            }
            View findViewById3 = view.findViewById(R.id.starter);
            if (findViewById3 != null) {
                findViewById3.setVisibility(this.b != 2 ? 8 : 0);
            }
            if (this.b == 2) {
                if (findViewById != null) {
                    Tools.d(findViewById);
                }
                if (findViewById2 != null) {
                    Tools.d(findViewById2);
                }
            }
        }
    }
}
