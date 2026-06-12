package android.ext;

import android.content.DialogInterface;
import android.widget.CheckBox;

/* compiled from: src */
/* renamed from: android.ext.if  reason: invalid class name */
/* loaded from: classes.dex */
class Cif implements DialogInterface.OnClickListener {
    final /* synthetic */ id a;
    private final /* synthetic */ CheckBox b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cif(id idVar, CheckBox checkBox) {
        this.a = idVar;
        this.b = checkBox;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.setChecked(true);
    }
}
