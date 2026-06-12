package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class jb implements DialogInterface.OnShowListener {
    final /* synthetic */ iy a;
    private final /* synthetic */ EditText b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jb(iy iyVar, EditText editText) {
        this.a = iyVar;
        this.b = editText;
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a((android.widget.EditText) this.b);
        this.b.requestFocus();
    }
}
