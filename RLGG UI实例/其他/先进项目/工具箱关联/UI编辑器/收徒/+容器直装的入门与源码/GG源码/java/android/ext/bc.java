package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class bc implements DialogInterface.OnClickListener {
    final /* synthetic */ ar a;
    private final /* synthetic */ Runnable b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bc(ar arVar, Runnable runnable) {
        this.a = arVar;
        this.b = runnable;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == 0) {
            this.b.run();
        } else if (i == 1) {
            i.a(i.a(ar.f).setMessage(qk.a((int) R.string.how_no_root)).setCancelable(false).setPositiveButton(qk.a((int) R.string.ok), new bd(this)));
            ar.r();
        } else {
            new ib(1500).onClick(null, 0);
        }
    }
}
