package android.ext;

import android.content.DialogInterface;
import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class cx implements View.OnClickListener {
    final /* synthetic */ cw a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cx(cw cwVar) {
        this.a = cwVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        i.a(i.c().setMessage(String.valueOf(qk.a(this.a.a)) + '\n' + qk.a(this.a.h)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
    }
}
