package android.ext;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class qz extends ut {
    final ImageView a;
    final TextView b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public qz(View view, uu uuVar) {
        super(view, uuVar);
        this.a = Config.a((ImageView) view.findViewById(R.id.freeze));
        this.a.setOnClickListener(uuVar);
        this.a.setOnLongClickListener(uuVar);
        this.b = (TextView) view.findViewById(R.id.name);
    }
}
