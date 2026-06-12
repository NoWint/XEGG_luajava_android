package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class pb implements DialogInterface.OnClickListener {
    final /* synthetic */ pa a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pb(pa paVar) {
        this.a = paVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        ConfigListAdapter.b(R.string.help_memory_filter);
    }
}
