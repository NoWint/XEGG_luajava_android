package android.ext;

import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;

/* compiled from: src */
/* loaded from: classes.dex */
public abstract class BaseAdapterLC extends BaseAdapter implements View.OnLongClickListener {
    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        ListView k;
        int positionForView;
        if (view == null || (k = Tools.k(view)) == null || (positionForView = k.getPositionForView(view)) == -1) {
            return false;
        }
        AdapterView.OnItemLongClickListener onItemLongClickListener = k.getOnItemLongClickListener();
        if (onItemLongClickListener != null) {
            onItemLongClickListener.onItemLongClick(k, view, positionForView, getItemId(positionForView));
        }
        return true;
    }
}
