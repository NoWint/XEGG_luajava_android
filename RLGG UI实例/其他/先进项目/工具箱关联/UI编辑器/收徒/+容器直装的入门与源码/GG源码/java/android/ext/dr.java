package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class dr implements View.OnClickListener {
    private final /* synthetic */ EditTextPath a;
    private final /* synthetic */ AlertDialog b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dr(EditTextPath editTextPath, AlertDialog alertDialog) {
        this.a = editTextPath;
        this.b = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String c = Tools.c(this.a.getText().toString().trim());
        if (c.length() > 0) {
            if (Tools.o(c)) {
                iw.a(c, 4);
            } else {
                return;
            }
        }
        la.a("save path: " + c);
        new qw().a("temp-path", c, "").commit();
        MainService mainService = MainService.instance;
        mainService.k.c(mainService.B());
        mainService.d(true);
        Tools.a((DialogInterface) this.b);
    }
}
