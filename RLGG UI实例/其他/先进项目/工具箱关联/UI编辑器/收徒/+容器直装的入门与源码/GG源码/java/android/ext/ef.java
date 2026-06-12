package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class ef implements DialogInterface.OnClickListener {
    final /* synthetic */ ConfigListAdapter a;
    private final /* synthetic */ MainService b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ef(ConfigListAdapter configListAdapter, MainService mainService) {
        this.a = configListAdapter;
        this.b = mainService;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.J();
    }
}
