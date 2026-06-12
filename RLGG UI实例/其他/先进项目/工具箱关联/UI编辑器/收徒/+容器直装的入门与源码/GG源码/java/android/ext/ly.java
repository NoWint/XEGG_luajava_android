package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ly implements DialogInterface.OnClickListener {
    private final /* synthetic */ long a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ly(long j) {
        this.a = j;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Config.c |= this.a;
        Config.c();
    }
}
