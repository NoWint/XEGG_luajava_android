package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ua implements DialogInterface.OnClickListener {
    private final /* synthetic */ int a;
    private final /* synthetic */ android.fix.j b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ua(int i, android.fix.j jVar) {
        this.a = i;
        this.b = jVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -3) {
            new qw().putInt("skip-old", this.a).commit();
            return;
        }
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.b.size()) {
                ty.a(((ud) this.b.valueAt(i3)).a, (Runnable) null);
                i2 = i3 + 1;
            } else {
                return;
            }
        }
    }
}
