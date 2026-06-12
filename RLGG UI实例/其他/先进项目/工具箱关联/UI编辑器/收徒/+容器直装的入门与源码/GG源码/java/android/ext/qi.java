package android.ext;

import android.widget.TextView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class qi implements Runnable {
    final /* synthetic */ qh a;
    private final /* synthetic */ TextView b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qi(qh qhVar, TextView textView) {
        this.a = qhVar;
        this.b = textView;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.b();
        if (this.a.e != null) {
            rx.a(new qj(this, this.b));
        }
    }
}
