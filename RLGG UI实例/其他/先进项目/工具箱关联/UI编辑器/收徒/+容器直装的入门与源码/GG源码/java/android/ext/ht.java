package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ht implements DialogInterface.OnClickListener {
    private final /* synthetic */ String[] a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ht(String[] strArr) {
        this.a = strArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            qt.a("exec setprop persist.sys.whetstone.level 0", 15);
            Tools.b(qk.a(String.valueOf(this.a[8]) + ": " + qk.a((int) R.string.ok)));
        } catch (Throwable th) {
            la.b("Failed fix " + this.a[8]);
            Tools.b(qk.a(String.valueOf(this.a[8]) + ": " + qk.a((int) R.string.patch_failed)));
        }
    }
}
