package android.ext;

import android.content.SharedPreferences;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class lr implements Runnable {
    @Override // java.lang.Runnable
    public void run() {
        try {
            SharedPreferences s = Tools.s();
            String str = String.valueOf(qk.a(R.string.speedhack_speeds_ - ("    ".length() * 8))) + ':' + qk.a((int) R.string.lang_code);
            if (!str.equals(s.getString("improve-translate", ""))) {
                if (qk.a((int) R.string.front_text).contains(qk.a((int) R.string.improve_translation_en))) {
                    rx.a(new lu(this, new lt(this, s, str)));
                }
            }
        } catch (Throwable th) {
            la.c("checkAutoTranslation", th);
        }
    }
}
