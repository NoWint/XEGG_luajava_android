package android.ext;

import android.content.DialogInterface;

/* compiled from: src */
/* loaded from: classes.dex */
class oc implements DialogInterface.OnClickListener {
    final /* synthetic */ ob a;
    private final /* synthetic */ long[] b;
    private final /* synthetic */ long[] c;
    private final /* synthetic */ int d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public oc(ob obVar, long[] jArr, long[] jArr2, int i) {
        this.a = obVar;
        this.b = jArr;
        this.c = jArr2;
        this.d = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.a(this.b, this.c, this.d, i);
    }
}
