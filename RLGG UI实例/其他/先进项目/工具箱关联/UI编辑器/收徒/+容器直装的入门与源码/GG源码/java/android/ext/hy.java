package android.ext;

import android.view.View;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class hy extends pj {
    static boolean a = false;
    static boolean b = true;
    static boolean c = true;
    static boolean d = true;

    public hy() {
        super(R.string.execute_script, R.drawable.ic_play_white_24dp);
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        new hz(this, null).onClick(view);
    }
}
