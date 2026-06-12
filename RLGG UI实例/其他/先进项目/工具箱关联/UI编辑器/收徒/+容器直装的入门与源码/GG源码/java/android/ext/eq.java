package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.ListView;

/* compiled from: src */
/* loaded from: classes.dex */
class eq implements DialogInterface.OnMultiChoiceClickListener {
    final /* synthetic */ eo a;
    private final /* synthetic */ boolean[] b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eq(eo eoVar, boolean[] zArr) {
        this.a = eoVar;
        this.b = zArr;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public void onClick(DialogInterface dialogInterface, int i, boolean z) {
        this.b[i] = z;
        if (z) {
            if (i < 4) {
                i = 0;
            }
            ListView listView = ((AlertDialog) dialogInterface).getListView();
            if (listView != null) {
                int i2 = 0;
                while (i2 < this.b.length) {
                    if (i != (i2 >= 4 ? i2 : 0)) {
                        this.b[i2] = false;
                        listView.setItemChecked(i2, false);
                    }
                    i2++;
                }
            }
        }
    }
}
