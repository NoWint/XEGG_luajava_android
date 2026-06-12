package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class my implements DialogInterface.OnClickListener {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public my(MainService mainService) {
        this.a = mainService;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.q();
    }
}
