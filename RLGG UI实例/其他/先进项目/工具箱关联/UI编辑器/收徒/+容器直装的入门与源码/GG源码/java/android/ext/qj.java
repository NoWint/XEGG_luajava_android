package android.ext;

import android.widget.TextView;

/* compiled from: src */
/* loaded from: classes.dex */
class qj implements Runnable {
    final /* synthetic */ qi a;
    private final /* synthetic */ TextView b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qj(qi qiVar, TextView textView) {
        this.a = qiVar;
        this.b = textView;
    }

    @Override // java.lang.Runnable
    public void run() {
        qh qhVar;
        qh qhVar2;
        Object tag = this.b.getTag();
        qhVar = this.a.a;
        if (tag == qhVar) {
            TextView textView = this.b;
            qhVar2 = this.a.a;
            Tools.a(textView, qhVar2.e, 48);
        }
    }
}
