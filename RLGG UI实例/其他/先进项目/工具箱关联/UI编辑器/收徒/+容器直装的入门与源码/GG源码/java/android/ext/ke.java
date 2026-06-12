package android.ext;

import android.content.DialogInterface;
import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ke implements View.OnClickListener {
    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        i.a(i.a(ar.f).setMessage(qk.a((int) R.string.install_cancel_prompt)).setPositiveButton(R.string.yes, new kf(this)).setNegativeButton(R.string.no, (DialogInterface.OnClickListener) null).setCancelable(false), ar.d);
    }
}
