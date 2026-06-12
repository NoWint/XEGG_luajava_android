package android.ext;

import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class oi extends oj {
    final /* synthetic */ MainService c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public oi(MainService mainService) {
        super(mainService, R.string.changed_as_search_result, R.drawable.ic_search_changed_white_24dp);
        this.c = mainService;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.ext.of
    public void b() {
        g gVar = this.c.ao;
        if (gVar.b() == 0) {
            Tools.b(qk.a((int) R.string.changed_not_found));
        } else {
            a(gVar.d(), (Object) null);
        }
    }
}
