package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hp implements DialogInterface.OnClickListener {
    private final /* synthetic */ String a;
    private final /* synthetic */ String[] b;
    private final /* synthetic */ int c;
    private final /* synthetic */ Runnable d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hp(String str, String[] strArr, int i, Runnable runnable) {
        this.a = str;
        this.b = strArr;
        this.c = i;
        this.d = runnable;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            uk.a(this.a);
            Tools.a((int) R.string.thank_you);
        }
        if (i == -3) {
            Tools.h(this.b[this.c + 1]);
        }
        this.d.run();
    }
}
