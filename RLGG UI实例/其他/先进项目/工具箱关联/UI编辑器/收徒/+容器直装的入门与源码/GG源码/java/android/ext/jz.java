package android.ext;

import android.content.DialogInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class jz implements DialogInterface.OnClickListener {
    final /* synthetic */ jy a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public jz(jy jyVar) {
        this.a = jyVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            new be("kwws=22jdphjxdugldq1qhw2iruxp2wrslf2:6<;0jdwkhulqj0lqirupdwlrq0derxw0jj0huuruv2").onClick(dialogInterface, i);
            rx.a().postDelayed(new ka(this), 5000L);
            return;
        }
        jp.a(true);
    }
}
