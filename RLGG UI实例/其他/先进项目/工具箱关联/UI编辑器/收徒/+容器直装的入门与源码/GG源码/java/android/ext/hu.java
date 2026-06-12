package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hu implements DialogInterface.OnClickListener {
    private final /* synthetic */ String[] a;
    private final /* synthetic */ int b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public hu(String[] strArr, int i) {
        this.a = strArr;
        this.b = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Tools.h(this.a[(this.b * 2) + 1]);
    }
}
