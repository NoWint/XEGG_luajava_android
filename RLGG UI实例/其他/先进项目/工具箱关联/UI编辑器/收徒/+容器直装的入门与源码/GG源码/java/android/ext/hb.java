package android.ext;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.io.File;

/* compiled from: src */
/* loaded from: classes.dex */
class hb extends BaseAdapter implements Filterable {
    final /* synthetic */ EditTextPath b;
    private File[] c = null;
    final Filter a = new hc(this);

    public hb(EditTextPath editTextPath) {
        this.b = editTextPath;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        File[] fileArr = this.c;
        if (fileArr == null) {
            return 0;
        }
        return fileArr.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        File[] fileArr = this.c;
        if (fileArr == null || i < 0 || i >= fileArr.length) {
            return null;
        }
        return fileArr[i];
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = android.fix.i.a(R.layout.path_suggestion, viewGroup, false);
        }
        Object item = getItem(i);
        if (item instanceof File) {
            ((TextView) view.findViewById(R.id.text1)).setText(".../" + ((File) item).getName());
        }
        return view;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        return this.a;
    }
}
