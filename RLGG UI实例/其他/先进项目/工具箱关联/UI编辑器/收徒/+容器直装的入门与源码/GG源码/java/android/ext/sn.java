package android.ext;

import android.text.method.LinkMovementMethod;
import android.widget.TextView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sn implements Runnable {
    private final /* synthetic */ TextView a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sn(TextView textView, String str) {
        this.a = textView;
        this.b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i = 1;
        while (i < 4) {
            try {
                this.a.setLinksClickable(i <= 2);
                this.a.setAutoLinkMask(i <= 2 ? 1 : 0);
                this.a.setMovementMethod(i <= 1 ? LinkMovementMethod.getInstance() : null);
                this.a.setText(this.b);
                break;
            } catch (Throwable th) {
                la.c("Failed set clickable text " + i, th);
                i++;
            }
        }
        if (i == 4) {
            this.a.setText("Failed set text");
        }
        DefensiveURLSpan.a(this.a);
    }
}
