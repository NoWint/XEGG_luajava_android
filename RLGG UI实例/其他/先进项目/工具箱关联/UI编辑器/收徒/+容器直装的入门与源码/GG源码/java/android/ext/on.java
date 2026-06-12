package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class on implements DialogInterface.OnClickListener {
    final /* synthetic */ om a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public on(om omVar) {
        this.a = omVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ol olVar;
        ol olVar2;
        MainService mainService;
        ol olVar3;
        ol olVar4;
        MainService mainService2;
        olVar = this.a.a;
        if (olVar.a) {
            olVar4 = this.a.a;
            mainService2 = olVar4.b;
            mainService2.an.c();
        } else {
            olVar2 = this.a.a;
            mainService = olVar2.b;
            mainService.h();
        }
        qm qmVar = MainService.instance.h;
        if (qmVar != null) {
            olVar3 = this.a.a;
            qmVar.write(olVar3.a ? "\ngg.clearList()\n" : "\ngg.clearResults()\n");
        }
    }
}
