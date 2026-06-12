package android.ext;

import android.text.Editable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sr implements Runnable {
    private final /* synthetic */ android.widget.EditText a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public sr(android.widget.EditText editText) {
        this.a = editText;
    }

    @Override // java.lang.Runnable
    public void run() {
        Editable text = this.a.getText();
        if (text.length() > 0) {
            try {
                text.replace(0, 1, text.subSequence(0, 1), 0, 1);
            } catch (Throwable th) {
                la.a(th);
            }
            this.a.selectAll();
        }
    }
}
