package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class or implements DialogInterface.OnClickListener {
    final /* synthetic */ op a;
    private final /* synthetic */ g b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public or(op opVar, g gVar) {
        this.a = opVar;
        this.b = gVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.c();
        qm qmVar = MainService.instance.h;
        if (qmVar != null) {
            qmVar.write("if revert ~= nil then gg.setValues(revert) end\n");
        }
    }
}
