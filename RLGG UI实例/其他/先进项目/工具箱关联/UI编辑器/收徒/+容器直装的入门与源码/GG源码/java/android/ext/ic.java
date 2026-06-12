package android.ext;

import android.util.SparseBooleanArray;
import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class ic extends pj {
    static final SparseBooleanArray a = new SparseBooleanArray();

    public ic(MainService mainService) {
        super(R.string.filter, R.drawable.ic_filter_white_24dp);
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        new id(this, null).onClick(view);
    }
}
