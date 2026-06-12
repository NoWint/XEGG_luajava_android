package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class ja implements DialogInterface.OnClickListener {
    final /* synthetic */ iy a;
    private final /* synthetic */ je b;
    private final /* synthetic */ EditText c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ja(iy iyVar, je jeVar, EditText editText) {
        this.a = iyVar;
        this.b = jeVar;
        this.c = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a(this.b, this.c.getText().toString(), true);
    }
}
