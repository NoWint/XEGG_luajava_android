package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class er implements DialogInterface.OnClickListener {
    final /* synthetic */ eo a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public er(eo eoVar, String str) {
        this.a = eoVar;
        this.b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            Tools.a(this.b, true);
            return;
        }
        MainService.instance.o.setCurrentTab(1);
        MainService.instance.Q.a(this.b);
    }
}
