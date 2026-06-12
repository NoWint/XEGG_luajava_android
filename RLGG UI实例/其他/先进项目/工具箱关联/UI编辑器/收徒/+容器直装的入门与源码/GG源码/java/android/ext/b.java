package android.ext;

import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class b extends pj {
    public b() {
        super(R.string.change_address_type, R.drawable.ic_cursor_mover_white_24dp);
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        new c(null).onClick(view);
    }

    public static void a(String str) {
        new c(str).onClick(null);
    }
}
