package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class od implements DialogInterface.OnClickListener {
    final /* synthetic */ ob a;
    private final /* synthetic */ String[] b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public od(ob obVar, String[] strArr) {
        this.a = obVar;
        this.b = strArr;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Tools.a(this.b[i]);
        Tools.a(dialogInterface);
    }
}
