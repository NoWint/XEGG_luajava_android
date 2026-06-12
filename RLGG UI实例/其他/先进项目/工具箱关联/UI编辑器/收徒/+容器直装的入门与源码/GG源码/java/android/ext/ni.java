package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ni implements DialogInterface.OnClickListener {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ni(MainService mainService) {
        this.a = mainService;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.d(true);
    }
}
