package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class mu implements DialogInterface.OnClickListener {
    final /* synthetic */ ms a;
    private final /* synthetic */ pj[][] b;
    private final /* synthetic */ int c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mu(ms msVar, pj[][] pjVarArr, int i) {
        this.a = msVar;
        this.b = pjVarArr;
        this.c = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MainService mainService;
        pj pjVar = this.b[this.c][i];
        mainService = this.a.a;
        pjVar.a(mainService.G);
        Tools.a(dialogInterface);
    }
}
