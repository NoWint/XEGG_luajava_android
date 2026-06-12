package android.ext;

import android.content.Context;
import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class md implements Runnable {
    private final /* synthetic */ Context a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public md(Context context) {
        this.a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            i.c(i.a(this.a).setMessage(qk.a("     15. __help_faq_15_q__\r\n        __help_faq_15_a__\r\n\r\n     16. __help_faq_16_q__\r\n        __help_faq_16_a__\r\n\r\n     17. __help_faq_17_q__\r\n        __help_faq_17_a__\r\n\r\n__rtfm__")).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null).create());
        } catch (Throwable th) {
            la.c("Failed faq alert", th);
        }
    }
}
