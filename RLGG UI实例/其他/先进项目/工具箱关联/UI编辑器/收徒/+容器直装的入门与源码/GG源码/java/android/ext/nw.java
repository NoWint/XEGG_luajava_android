package android.ext;

import android.content.DialogInterface;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class nw implements DialogInterface.OnClickListener {
    final /* synthetic */ MainService a;
    private final /* synthetic */ String b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nw(MainService mainService, String str) {
        this.a = mainService;
        this.b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        i.a(i.c().setMessage(qk.a((int) R.string.try_reinstall_x86)).setPositiveButton(qk.a((int) R.string.yes), new nx(this, this.b)).setNeutralButton(qk.a((int) R.string.site), new be("kwws=22jdphjxdugldq1qhw2iruxp2jdoohu|2lpdjh278:0krz0wr0uhsodfh0dup0oleudulhv0zlwk0{;90oleudulhv0{0soruh2")).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
    }
}
