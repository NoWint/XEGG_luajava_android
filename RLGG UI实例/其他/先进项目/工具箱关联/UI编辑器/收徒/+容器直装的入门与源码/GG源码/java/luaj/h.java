package luaj;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class h implements DialogInterface.OnClickListener {
    final /* synthetic */ g a;
    private final /* synthetic */ j b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(g gVar, j jVar) {
        this.a = gVar;
        this.b = jVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.b.a = null;
    }
}
