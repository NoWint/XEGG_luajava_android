package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sw implements View.OnClickListener {
    private final /* synthetic */ String a;
    private final /* synthetic */ int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sw(String str, int i) {
        this.a = str;
        this.b = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AlertDialog create = i.c().setMessage(String.valueOf(qk.a(this.a)) + '\n' + qk.a(this.b)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).create();
        i.c(create);
        i.a(create, new sx(this, create));
    }
}
