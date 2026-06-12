package android.ext;

import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ou extends pj {
    final /* synthetic */ MainService a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ou(MainService mainService) {
        super(R.string.select_all, R.drawable.ic_select_all_white_24dp);
        this.a = mainService;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.d(1);
    }
}
