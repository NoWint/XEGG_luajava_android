package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class as implements DialogInterface.OnClickListener {
    final /* synthetic */ ar a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(ar arVar) {
        this.a = arVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        switch (i) {
            case 0:
                ig.a(rv.a);
                break;
            case 1:
                Config.a((int) R.id.selinux).d = (Config.A & 4) == 0 ? 1 : 0;
                Config.c();
                break;
            case 2:
                new bq(this.a).b();
                return;
            case 3:
                Config.a((int) R.id.config_float_type).d = -1;
                Config.a((int) R.id.config_float_flags).d = -1;
                Config.c();
                break;
            case 4:
                Config.a((int) R.id.config_use_notification).d = (Config.B & 256) == 0 ? 1 : 0;
                Config.c();
                break;
            case 5:
                Config.a((int) R.id.config_hot_key).d();
                return;
            case 6:
                this.a.c();
                return;
            case 7:
                Config.c = 0L;
                Config.c();
                break;
            case 8:
                ConfigListAdapter.j();
                return;
            case 9:
                ar.f();
                return;
            case 10:
                ar.g();
                return;
            case 11:
                Config.a((int) R.id.config_prevent_unload).d();
                return;
            case 12:
                Config.a((int) R.id.config_acceleration).d();
                return;
            case 13:
                Config.a((int) R.id.config_vspace_root).d();
                return;
            case 14:
                Config.a((int) R.id.config_number_locale).d();
                return;
        }
        ar.h();
    }
}
