package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
public class ib implements DialogInterface.OnClickListener {
    private boolean a;
    private final int b;

    public ib(int i) {
        this(i, false);
    }

    public ib(int i, boolean z) {
        this.a = false;
        this.b = i;
        this.a = z;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        la.a("ExitListener called: " + this.b);
        lh.c = this.a ? 1 : 0;
        lh.j();
    }
}
