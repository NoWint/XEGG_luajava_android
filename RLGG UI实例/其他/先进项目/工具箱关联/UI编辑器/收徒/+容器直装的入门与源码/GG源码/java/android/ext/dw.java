package android.ext;

import android.widget.CheckBox;

/* compiled from: src */
/* loaded from: classes.dex */
class dw implements Runnable {
    final /* synthetic */ dv a;
    private final /* synthetic */ String b;
    private final /* synthetic */ CheckBox c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dw(dv dvVar, String str, CheckBox checkBox) {
        this.a = dvVar;
        this.b = str;
        this.c = checkBox;
    }

    @Override // java.lang.Runnable
    public void run() {
        du duVar;
        duVar = this.a.a;
        duVar.a(this.b, this.c.isChecked());
    }
}
