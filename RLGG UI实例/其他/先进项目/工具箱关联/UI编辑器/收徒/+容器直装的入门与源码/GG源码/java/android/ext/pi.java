package android.ext;

import android.view.View;
import android.widget.ImageView;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class pi extends pj implements View.OnLongClickListener {
    private final pf a;

    public pi(pf pfVar) {
        super(R.string.forward, R.drawable.ic_history_forward_24dp);
        this.a = pfVar;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        this.a.d();
    }

    @Override // android.ext.pj
    public ImageView a(boolean z) {
        ImageView a = super.a(z);
        a.setOnLongClickListener(this);
        return a;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.a.b();
        return true;
    }
}
