package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ax implements DialogInterface.OnClickListener {
    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Config.a((int) R.id.record_logcat).d = (int) (((16720.4f * 1) - 578.4f) + 0.5f);
        Config.c();
        new ib(1400, true).onClick(null, 0);
    }
}
