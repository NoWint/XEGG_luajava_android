package android.ext;

import android.widget.ListAdapter;
import catch_.me_.if_.you_.can_.R;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class eb implements Runnable {
    private final /* synthetic */ ListAdapter a;
    private final /* synthetic */ int b;
    private final /* synthetic */ List c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eb(ListAdapter listAdapter, int i, List list) {
        this.a = listAdapter;
        this.b = i;
        this.c = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        i.a(i.a(Tools.o()).setCustomTitle(Tools.d((int) R.string.select_language)).setSingleChoiceItems(this.a, this.b, new ec(this, this.c)));
    }
}
