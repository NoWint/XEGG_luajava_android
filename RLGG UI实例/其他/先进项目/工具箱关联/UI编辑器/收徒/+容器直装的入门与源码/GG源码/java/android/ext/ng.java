package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ng implements DialogInterface.OnClickListener {
    final /* synthetic */ MainService a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ng(MainService mainService) {
        this.a = mainService;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Config.a((int) R.id.config_waitpid).d = 1;
        Config.c();
        ConfigListAdapter.c();
    }
}
