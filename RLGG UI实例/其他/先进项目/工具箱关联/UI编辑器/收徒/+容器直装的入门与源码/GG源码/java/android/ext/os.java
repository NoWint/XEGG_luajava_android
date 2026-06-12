package android.ext;

import android.util.SparseIntArray;
import android.view.View;
import catch_.me_.if_.you_.can_.R;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class os extends pj {
    final /* synthetic */ MainService a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public os(MainService mainService) {
        super(R.string.save_selected, R.drawable.ic_content_save_white_24dp);
        this.a = mainService;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        Object C = this.a.C();
        int a = Tools.a(C);
        if (a == 0) {
            Tools.a((int) R.string.nothing_selected);
        } else if (C instanceof boolean[]) {
            SparseIntArray sparseIntArray = new SparseIntArray();
            new tu(d.c(this.a.K.a((boolean[]) C, sparseIntArray)), sparseIntArray, "0", qk.a((int) R.string.type_change_request), new ot(this, C, a));
        } else if (C instanceof android.c.a) {
            ArrayList<d> arrayList = new ArrayList();
            android.c.a aVar = (android.c.a) C;
            int b = aVar.b();
            for (int i = 0; i < b; i++) {
                if (aVar.b(i)) {
                    arrayList.add(aVar.a(i, (d) null));
                }
            }
            for (d dVar : arrayList) {
                qx a2 = this.a.an.a(dVar.b);
                if (a2 == null || a2.d != dVar.d) {
                    this.a.an.a(new qx(dVar), (byte) 0, false);
                }
            }
            this.a.an.notifyDataSetChanged();
            this.a.an.d();
            Tools.b(Tools.a(qk.a((int) R.string.items_added), Integer.valueOf(a)));
            qm qmVar = MainService.instance.h;
            if (qmVar != null) {
                qmVar.write("\nlocal t = ");
                ek.a(qmVar, true);
                qmVar.write("gg.addListItems(t)\n");
                qmVar.write("t = nil\n\n");
            }
        }
    }
}
