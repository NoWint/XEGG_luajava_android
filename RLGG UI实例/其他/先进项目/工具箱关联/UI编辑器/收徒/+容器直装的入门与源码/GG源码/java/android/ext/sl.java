package android.ext;

import android.content.ClipData;
import android.os.Build;
import android.text.ClipboardManager;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sl implements Runnable {
    private final /* synthetic */ String a;
    private final /* synthetic */ boolean b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sl(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        String replace = this.a.replace(" ", " ");
        if (this.b) {
            iw.a(replace, 1);
        }
        try {
            Object systemService = MainService.context.getSystemService("clipboard");
            if (Build.VERSION.SDK_INT < 11) {
                ((ClipboardManager) systemService).setText(replace);
            } else {
                ((android.content.ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText(replace, replace));
            }
            Tools.a((int) R.string.copied);
        } catch (Throwable th) {
            la.c("Failed to copy text to the clipboard", th);
            la.a("Text: " + replace);
            Tools.b(String.valueOf(qk.a((int) R.string.failed_copy_text)) + ' ' + th.getMessage());
        }
    }
}
