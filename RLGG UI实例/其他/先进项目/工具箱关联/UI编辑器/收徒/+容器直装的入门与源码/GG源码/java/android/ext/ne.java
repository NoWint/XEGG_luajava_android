package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class ne implements DialogInterface.OnClickListener {
    final /* synthetic */ nd a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ne(nd ndVar, String str) {
        this.a = ndVar;
        this.b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case -3:
                Tools.a(this.b);
                return;
            case -2:
            default:
                return;
            case -1:
                MainService.instance.a((Long) null, this.b, Tools.c((int) R.string.allocated));
                return;
        }
    }
}
