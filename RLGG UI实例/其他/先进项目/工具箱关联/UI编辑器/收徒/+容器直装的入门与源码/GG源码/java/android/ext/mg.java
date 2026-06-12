package android.ext;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class mg extends pj {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public mg(MainService mainService, int i, int i2) {
        super(i, i2);
        this.a = mainService;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        new kx(this.a.ap, null);
    }
}
