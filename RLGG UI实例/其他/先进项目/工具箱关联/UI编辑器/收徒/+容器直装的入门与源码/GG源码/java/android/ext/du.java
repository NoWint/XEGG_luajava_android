package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.widget.CheckBox;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class du implements View.OnClickListener {
    private final /* synthetic */ EditTextPath a;
    private final /* synthetic */ CheckBox b;
    private final /* synthetic */ AlertDialog c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public du(EditTextPath editTextPath, CheckBox checkBox, AlertDialog alertDialog) {
        this.a = editTextPath;
        this.b = checkBox;
        this.c = alertDialog;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String trim = this.a.getText().toString().trim();
        if (trim.length() > 0) {
            new hx(new dv(this, trim, this.b), "CheckSu: " + trim).start();
        } else {
            a(trim, this.b.isChecked());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        rx.a(new dx(this, this.c));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        rx.a(new dy(this, this.c));
        Tools.b(String.valueOf(str) + "\n\n" + qt.a, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, boolean z) {
        la.a("su path: " + str + "; sh: " + z);
        new qw().a("su", str, "").a("sh", z, false).commit();
        if (str.length() != 0) {
            iw.a(str, 4);
        }
        Tools.a((DialogInterface) this.c);
        ConfigListAdapter.c();
    }
}
