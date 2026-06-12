package android.ext;

import android.widget.BaseAdapter;
import android.widget.ListAdapter;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class mq implements Runnable {
    final /* synthetic */ MainService a;
    private final /* synthetic */ ListAdapter b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mq(MainService mainService, ListAdapter listAdapter) {
        this.a = mainService;
        this.b = listAdapter;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.b instanceof ConfigListAdapter) {
            ((ConfigListAdapter) this.b).a();
        }
        if (this.b instanceof BaseAdapter) {
            try {
                ((BaseAdapter) this.b).notifyDataSetChanged();
            } catch (NoSuchMethodError e) {
                la.a(e);
            }
        }
    }
}
