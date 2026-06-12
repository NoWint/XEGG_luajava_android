package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class pq implements DialogInterface.OnClickListener {
    final /* synthetic */ OffsetCalculator a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pq(OffsetCalculator offsetCalculator) {
        this.a = offsetCalculator;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        SavedListAdapter savedListAdapter = MainService.instance.an;
        qx qxVar = new qx(this.a.a, 0L, i);
        if (!qxVar.q()) {
            qxVar.d = d.a(qxVar.b, true);
        }
        qx a = savedListAdapter.a(this.a.a);
        if (a == null || a.d != qxVar.d) {
            savedListAdapter.a(qxVar);
            savedListAdapter.d();
        }
        Tools.b(Tools.a(qk.a((int) R.string.items_added), 1));
    }
}
