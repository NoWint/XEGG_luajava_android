package android.ext;

import android.content.DialogInterface;
import android.content.SharedPreferences;

/* compiled from: src */
/* loaded from: classes.dex */
class lt implements DialogInterface.OnClickListener {
    final /* synthetic */ lr a;
    private final /* synthetic */ SharedPreferences b;
    private final /* synthetic */ String c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lt(lr lrVar, SharedPreferences sharedPreferences, String str) {
        this.a = lrVar;
        this.b = sharedPreferences;
        this.c = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            new be("kwws=22jdphjxdugldq1qhw2iruxp2wrslf2:8770li0|rx0zdqw0wr0dgg0d0qhz0wudqvodwlrq0ru0lpsuryh0dq0h{lvwlqj2").onClick(dialogInterface, i);
        }
        this.b.edit().putString("improve-translate", this.c).commit();
    }
}
