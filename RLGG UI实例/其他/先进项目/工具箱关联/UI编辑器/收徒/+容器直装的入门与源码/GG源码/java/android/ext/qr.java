package android.ext;

import android.content.DialogInterface;
import android.util.SparseIntArray;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
class qr implements DialogInterface.OnClickListener {
    final /* synthetic */ RegionList a;
    private final /* synthetic */ EditText b;
    private final /* synthetic */ boolean c;
    private final /* synthetic */ List d;
    private final /* synthetic */ SparseIntArray e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qr(RegionList regionList, EditText editText, boolean z, List list, SparseIntArray sparseIntArray) {
        this.a = regionList;
        this.b = editText;
        this.c = z;
        this.d = list;
        this.e = sparseIntArray;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            this.b.setText(d.b(this.c ? ((qs) this.d.get(this.e.get(i))).c - 1 : ((qs) this.d.get(this.e.get(i))).b, 4));
            this.b.requestFocus();
        } catch (Throwable th) {
            la.a("RegionList failed with " + i, th);
        }
        Tools.a(dialogInterface);
    }
}
