package android.ext;

import android.view.View;
import android.widget.AdapterView;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class EditorListener extends pj implements AdapterView.OnItemClickListener {
    private final boolean a;

    public EditorListener() {
        this(false);
    }

    public EditorListener(boolean z) {
        super(R.string.edit_selected, R.drawable.ic_tooltip_edit_white_24dp);
        this.a = z;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        new hk(this, null).onClick(view);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        new hk(this, null).onItemClick(adapterView, view, i, j);
    }
}
