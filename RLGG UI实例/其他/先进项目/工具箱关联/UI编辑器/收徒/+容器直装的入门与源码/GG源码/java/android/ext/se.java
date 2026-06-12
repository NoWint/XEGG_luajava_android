package android.ext;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class se extends BaseAdapter {
    final /* synthetic */ TimersEditor a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public se(TimersEditor timersEditor) {
        this.a = timersEditor;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return i == 0 ? this.a.a(view, viewGroup) : this.a.a(i, view, viewGroup);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        int i;
        i = this.a.e;
        return i + 1;
    }
}
