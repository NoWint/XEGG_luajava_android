package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class nn implements DialogInterface.OnDismissListener {
    final /* synthetic */ nl a;
    private final /* synthetic */ String b;
    private final /* synthetic */ boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nn(nl nlVar, String str, boolean z) {
        this.a = nlVar;
        this.b = str;
        this.c = z;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        MainService mainService;
        mainService = this.a.a;
        mainService.a(this.b, this.c);
    }
}
