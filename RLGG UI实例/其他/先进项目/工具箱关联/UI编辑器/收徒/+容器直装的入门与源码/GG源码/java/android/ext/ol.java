package android.ext;

import android.content.DialogInterface;
import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ol extends pj {
    final boolean a;
    final /* synthetic */ MainService b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ol(MainService mainService, boolean z) {
        super(R.string.remove, R.drawable.ic_delete_white_24dp);
        this.b = mainService;
        this.a = z;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        Object C = this.b.C();
        int a = Tools.a(C);
        String str = " (" + a + ')';
        i.a(i.c().setItems(new String[]{qk.a((int) R.string.remove_all2), "---", String.valueOf(qk.a((int) R.string.revert_and_remove)) + str, String.valueOf(qk.a((int) R.string.remove)) + str}, new om(this, a, C)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
    }
}
