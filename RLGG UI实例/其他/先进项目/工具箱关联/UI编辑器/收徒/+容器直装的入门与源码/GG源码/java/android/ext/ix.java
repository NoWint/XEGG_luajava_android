package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ix implements DialogInterface.OnClickListener {
    private final /* synthetic */ iy a;
    private final /* synthetic */ android.widget.EditText b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ix(iy iyVar, android.widget.EditText editText) {
        this.a = iyVar;
        this.b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String obj = this.a.getItem(i).toString();
        int max = Math.max(this.b.getSelectionStart(), 0);
        int max2 = Math.max(this.b.getSelectionEnd(), 0);
        this.b.getText().replace(Math.min(max, max2), Math.max(max, max2), obj, 0, obj.length());
        this.b.setSelection(Math.max(this.b.getSelectionStart(), this.b.getSelectionEnd()));
    }
}
