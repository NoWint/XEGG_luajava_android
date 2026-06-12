package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ac implements DialogInterface.OnClickListener {
    final /* synthetic */ z a;
    private final /* synthetic */ int b;
    private final /* synthetic */ List c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(z zVar, int i, List list) {
        this.a = zVar;
        this.b = i;
        this.c = list;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == this.b) {
            ConfigListAdapter.b(R.string.help_game_not_listed_title);
            return;
        }
        this.a.a((qh) this.c.get(i));
        this.a.a = true;
        Tools.a(dialogInterface);
        Runnable runnable = this.a.b;
        if (runnable != null) {
            this.a.b = null;
            runnable.run();
        }
    }
}
