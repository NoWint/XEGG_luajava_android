package android.ext;

import android.content.DialogInterface;
import java.util.List;

/* compiled from: src */
/* loaded from: classes.dex */
class ec implements DialogInterface.OnClickListener {
    final /* synthetic */ eb a;
    private final /* synthetic */ List b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ec(eb ebVar, List list) {
        this.a = ebVar;
        this.b = list;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            ad.c((String) this.b.get(i));
            ConfigListAdapter.c();
        } catch (IndexOutOfBoundsException e) {
            la.c("Failed get locale for index: " + i, e);
        }
        Tools.a(dialogInterface);
    }
}
