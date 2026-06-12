package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hj implements DialogInterface.OnClickListener {
    final /* synthetic */ he a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hj(he heVar) {
        this.a = heVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.e.setVisibility(i == 3 ? 0 : 8);
    }
}
