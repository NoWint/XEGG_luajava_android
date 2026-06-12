package android.ext;

import android.content.DialogInterface;
import android.text.Editable;

/* compiled from: src */
/* loaded from: classes.dex */
class rf implements DialogInterface.OnClickListener {
    private final /* synthetic */ android.widget.EditText a;
    private final /* synthetic */ ak b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public rf(android.widget.EditText editText, ak akVar) {
        this.a = editText;
        this.b = akVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Editable text = this.a.getText();
        String editable = text.toString();
        String str = this.b.b;
        if (editable.contains(str)) {
            int indexOf = editable.indexOf(str);
            text.replace(indexOf, str.length() + indexOf, this.b.a);
        }
    }
}
