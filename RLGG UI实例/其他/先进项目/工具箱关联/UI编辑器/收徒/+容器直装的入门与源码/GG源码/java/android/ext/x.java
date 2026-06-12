package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.ext.Script;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class x implements DialogInterface.OnClickListener, DialogInterface.OnShowListener, View.OnClickListener {
    private CheckBox a;
    private CheckBox b;
    private CheckBox c;
    private EditText d;
    private AlertDialog e;

    private x() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ x(x xVar) {
        this();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(this.e, -1, (Object) null, this);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        EditText editText = this.d;
        if (editText != null) {
            try {
                String c = re.c(editText.getText().toString().trim());
                if (c.endsWith("h")) {
                    c = c.substring(0, c.length() - 1);
                }
                if (c.length() == 0) {
                    c = "0";
                }
                try {
                    long a = ps.a(c, 16);
                    if (a != 0) {
                        iw.a(c, 1);
                    }
                    int i2 = this.a.isChecked() ? 2 : 0;
                    if (this.b.isChecked()) {
                        i2 |= 1;
                    }
                    if (this.c.isChecked()) {
                        i2 |= 4;
                    }
                    la.a("Allocate: " + i2 + "; " + a);
                    Tools.a((DialogInterface) this.e);
                    MainService.instance.k.b(a, i2);
                    qm qmVar = MainService.instance.h;
                    if (qmVar != null) {
                        qmVar.write("gg.allocatePage(");
                        Script.Consts.a(qmVar, qmVar.a.g, i2);
                        qmVar.write(", ");
                        Script.Consts.a(qmVar, a);
                        qmVar.write(")\n");
                    }
                } catch (NumberFormatException e) {
                    editText.requestFocus();
                    throw e;
                }
            } catch (NumberFormatException e2) {
                re.a(e2, editText);
            }
        }
    }

    public void a(String str) {
        View a = android.fix.i.a((int) R.layout.alloc, (ViewGroup) null);
        EditText editText = (EditText) a.findViewById(R.id.memory_from);
        this.d = editText;
        a.findViewById(R.id.region_from).setTag(editText);
        if (str != null) {
            editText.setText(str);
        }
        editText.setDataType(1);
        this.a = (CheckBox) a.findViewById(R.id.read);
        this.b = (CheckBox) a.findViewById(R.id.write);
        this.c = (CheckBox) a.findViewById(R.id.exec);
        AlertDialog create = i.c().setCustomTitle(Tools.d((int) R.string.allocate_page)).setView(InternalKeyboard.a(a)).setPositiveButton(qk.a((int) R.string.ok), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
        this.e = create;
        i.a(create, this);
        i.a(create, editText);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null || (view.getTag() instanceof pj)) {
            a(null);
        } else {
            onClick(null, -1);
        }
    }
}
