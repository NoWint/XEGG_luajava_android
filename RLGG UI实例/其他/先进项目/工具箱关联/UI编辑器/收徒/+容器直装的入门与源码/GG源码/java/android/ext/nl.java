package android.ext;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class nl implements DialogInterface.OnClickListener {
    final /* synthetic */ MainService a;
    private final /* synthetic */ String b;
    private final /* synthetic */ boolean c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nl(MainService mainService, String str, boolean z) {
        this.a = mainService;
        this.b = str;
        this.c = z;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        boolean z;
        this.a.as = false;
        switch (i) {
            case 0:
                new ib(1100).onClick(dialogInterface, i);
                break;
            case 1:
                la.a("Restart: " + this.b);
                try {
                    Intent launchIntentForPackage = Tools.m().getLaunchIntentForPackage(this.b);
                    if (launchIntentForPackage == null) {
                        launchIntentForPackage = new Intent("android.intent.action.MAIN");
                        launchIntentForPackage.setPackage(this.b);
                    }
                    launchIntentForPackage.setFlags(268435456);
                    Tools.e().startActivity(launchIntentForPackage);
                    z = true;
                } catch (Exception e) {
                    la.c("Failed restart app: " + this.b, e);
                    z = false;
                }
                rx.a().postDelayed(new nm(this, this.b), z ? 4000 : 0);
                break;
            case 2:
                if (lh.a((Context) null, new nn(this, this.b, this.c))) {
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.restart_game_without_protection)).setMessage(qk.a((int) R.string.warn_restart_off_prot)).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).setPositiveButton(qk.a((int) R.string.ok), new no(this, this.b, this.c)));
                    break;
                }
                break;
            case 3:
                ConfigListAdapter.b(R.string.help_games_protection_title);
            default:
                this.a.j.a();
                break;
        }
        Tools.a(dialogInterface);
    }
}
