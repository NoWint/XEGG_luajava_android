package android.ext;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class mh extends pj {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mh(MainService mainService, int i, int i2) {
        super(i, i2);
        this.a = mainService;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        int count = this.a.an.getCount();
        qx[] qxVarArr = new qx[count];
        for (int i = 0; i < count; i++) {
            qxVarArr[i] = this.a.an.getItem(i);
        }
        new kx(this.a.ap, qxVarArr);
    }
}
