package android.ext;

import android.content.DialogInterface;
import android.util.SparseIntArray;
import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class op extends pj {
    int a;
    final /* synthetic */ MainService b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public op(MainService mainService) {
        super(R.string.revert_selected, R.drawable.ic_undo_variant_white_24dp);
        this.b = mainService;
        this.a = 0;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        this.a = 0;
        a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        Object C = this.b.C();
        g gVar = new g();
        g gVar2 = this.b.ao;
        h hVar = new h();
        if (C instanceof boolean[]) {
            if (this.a == 0) {
                SparseIntArray sparseIntArray = new SparseIntArray();
                android.fix.j c = d.c(this.b.K.a((boolean[]) C, sparseIntArray));
                if (sparseIntArray.size() > 0) {
                    new tu(c, sparseIntArray, "0", qk.a((int) R.string.type_change_request), new oq(this));
                    return;
                }
            } else {
                ow owVar = this.b.K;
                boolean[] zArr = (boolean[]) C;
                int length = zArr.length - 1;
                for (int i = 1; i < length; i++) {
                    if (zArr[i]) {
                        d dVar = new d(owVar.a(i), 0L, this.a);
                        if (dVar.q()) {
                            gVar2.a(dVar.b, dVar.d, hVar);
                            if (hVar.b) {
                                gVar.a(dVar.b, dVar.d, hVar.a);
                            }
                        }
                    }
                }
                this.a = 0;
            }
        } else {
            this.b.a(C, gVar);
        }
        int b = gVar.b();
        if (b == 0) {
            Tools.a((int) R.string.nothing_to_revert);
        } else {
            i.a(i.c().setCustomTitle(Tools.d((int) R.string.revert_selected)).setMessage(Tools.a(qk.a((int) R.string.revert_prompt), Integer.valueOf(b))).setPositiveButton(qk.a((int) R.string.yes), new or(this, gVar)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
        }
    }
}
