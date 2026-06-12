package android.ext;

import android.widget.CheckBox;

/* compiled from: src */
/* loaded from: classes.dex */
class dv implements Runnable {
    final /* synthetic */ du a;
    private final /* synthetic */ String b;
    private final /* synthetic */ CheckBox c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dv(du duVar, String str, CheckBox checkBox) {
        this.a = duVar;
        this.b = str;
        this.c = checkBox;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.a.a();
        try {
            String a = qt.a("exec id", 10, this.b);
            if (a.contains("uid=0")) {
                rx.a(new dw(this, this.b, this.c));
            } else {
                this.a.a(a);
            }
        } catch (Throwable th) {
            this.a.a(th.getMessage());
        }
        qt.a = "";
    }
}
