package android.ext;

import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class oe extends pj {
    final /* synthetic */ MainService a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oe(MainService mainService) {
        super(R.string.clear_selection, R.drawable.ic_select_off_white_24dp);
        this.a = mainService;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.d(0);
    }
}
