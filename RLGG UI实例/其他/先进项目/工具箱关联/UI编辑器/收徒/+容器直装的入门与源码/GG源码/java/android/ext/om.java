package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class om implements DialogInterface.OnClickListener {
    final /* synthetic */ ol a;
    private final /* synthetic */ int b;
    private final /* synthetic */ Object c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public om(ol olVar, int i, Object obj) {
        this.a = olVar;
        this.b = i;
        this.c = obj;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        MainService mainService;
        MainService mainService2;
        if (i > 2 && this.b == 0) {
            Tools.a((int) R.string.nothing_selected);
            return;
        }
        switch (i) {
            case 0:
                i.a(i.c().setCustomTitle(Tools.d((int) R.string.remove_all2)).setPositiveButton(qk.a((int) R.string.yes), new on(this)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
                return;
            case 1:
                rx.a().postDelayed(new oo(this, dialogInterface), 1000L);
                return;
            case 2:
                mainService2 = this.a.b;
                mainService2.a(this.c, (g) null);
                break;
            case 3:
                break;
            default:
                return;
        }
        mainService = this.a.b;
        mainService.a(this.c);
    }
}
