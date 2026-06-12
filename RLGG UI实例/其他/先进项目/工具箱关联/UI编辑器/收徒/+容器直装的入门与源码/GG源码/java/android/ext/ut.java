package android.ext;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ut extends uq {
    final TextView p;
    final LinearLayout q;
    final TextView r;
    final ImageView s;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ut(View view, uu uuVar) {
        super(view, uuVar);
        this.p = (TextView) view.findViewById(R.id.addr_item_value);
        this.q = (LinearLayout) view.findViewById(R.id.addr_item_info);
        this.r = (TextView) view.findViewById(R.id.addr_item_type);
        this.s = Config.a((ImageView) view.findViewById(R.id.addr_item_remove));
        this.s.setOnClickListener(uuVar);
        this.s.setOnLongClickListener(uuVar);
    }
}
