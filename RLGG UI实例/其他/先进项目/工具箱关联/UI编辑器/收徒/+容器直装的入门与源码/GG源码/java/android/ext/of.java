package android.ext;

import android.util.SparseIntArray;
import android.view.View;
import catch_.me_.if_.you_.can_.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class of extends pj {
    int a;
    final /* synthetic */ MainService b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public of(MainService mainService) {
        super(R.string.export_selected, R.drawable.ic_download_checked_white_24dp);
        this.b = mainService;
        this.a = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public of(MainService mainService, int i, int i2) {
        super(i, i2);
        this.b = mainService;
        this.a = 0;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.a = 0;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        int i = 0;
        Object C = this.b.C();
        if (Tools.a(C) == 0) {
            Tools.a((int) R.string.nothing_selected);
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (C instanceof boolean[]) {
            if (this.a == 0) {
                SparseIntArray sparseIntArray = new SparseIntArray();
                new tu(d.c(this.b.K.a((boolean[]) C, sparseIntArray)), sparseIntArray, "0", qk.a((int) R.string.type_change_request), new og(this));
                return;
            }
            ow owVar = this.b.K;
            boolean[] zArr = (boolean[]) C;
            int length = zArr.length - 1;
            for (int i2 = 1; i2 < length; i2++) {
                if (zArr[i2]) {
                    Object item = owVar.getItem(i2);
                    if (item instanceof d) {
                        d dVar = (d) item;
                        dVar.d = this.a;
                        if (dVar.q()) {
                            arrayList.add(dVar);
                        }
                    }
                }
            }
            this.a = 0;
        } else if (C instanceof android.c.a) {
            android.c.a aVar = (android.c.a) C;
            int b = aVar.b();
            while (i < b) {
                if (aVar.b(i)) {
                    arrayList.add(aVar.a(i, (d) null));
                }
                i++;
            }
        } else if (C instanceof android.c.e) {
            android.c.e eVar = (android.c.e) C;
            int b2 = eVar.b();
            while (i < b2) {
                if (eVar.d(i)) {
                    qx qxVar = (qx) eVar.c(i);
                    if (qxVar instanceof qx) {
                        arrayList.add(qxVar);
                    }
                }
                i++;
            }
        }
        a(arrayList, C);
    }

    void a(List list, Object obj) {
        int size = list.size();
        qx[] qxVarArr = new qx[size];
        for (int i = 0; i < size; i++) {
            d dVar = (d) list.get(i);
            qxVarArr[i] = dVar instanceof qx ? (qx) dVar : new qx(dVar);
        }
        new kx(this.b.ap, qxVarArr).a = true;
    }
}
