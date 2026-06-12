package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ln implements DialogInterface.OnClickListener {
    private final /* synthetic */ File a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ln(File file) {
        this.a = file;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.a.delete();
        switch (i) {
            case 0:
                Config.a((int) R.id.selinux).d = 1;
                Config.c();
                ar.h();
                return;
            default:
                return;
        }
    }
}
