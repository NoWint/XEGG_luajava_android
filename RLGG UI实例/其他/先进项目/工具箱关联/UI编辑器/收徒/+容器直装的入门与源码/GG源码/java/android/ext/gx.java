package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.ext.Script;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import catch_.me_.if_.you_.can_.R;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class gx implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnShowListener, View.OnClickListener {
    private android.widget.EditText a;
    private AlertDialog b;
    private EditText c;
    private EditText d;
    private CheckBox e;
    private long f;
    private long g;

    private gx() {
        this.f = 0L;
        this.g = -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ gx(gx gxVar) {
        this();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this);
    }

    private String a() {
        return String.valueOf(Tools.r()) + "/dump";
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        android.widget.EditText editText = this.a;
        if (editText != null) {
            new qw().a("dump-path", editText.getText().toString().trim(), a()).commit();
        }
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        android.widget.EditText editText = this.a;
        if (editText != null) {
            try {
                a(0);
                a(1);
                String c = Tools.c(editText.getText().toString().trim());
                if (Tools.o(c)) {
                    iw.a(c, 4);
                    int i2 = this.e.isChecked() ? 1 : 0;
                    la.a("Dump: " + c + "; " + Long.toHexString(this.f) + '-' + Long.toHexString(this.g) + "; " + Integer.toHexString(i2));
                    Tools.a((DialogInterface) this.b);
                    qh qhVar = MainService.instance.ap;
                    String str = qhVar == null ? "unknown" : qhVar.c;
                    if (MainService.instance.S()) {
                        MainService.instance.k.a(this.f, this.g, i2, c, str);
                        qm qmVar = MainService.instance.h;
                        if (qmVar != null) {
                            qmVar.write("gg.dumpMemory(");
                            Script.Consts.a(qmVar, this.f);
                            qmVar.write(", ");
                            Script.Consts.a(qmVar, this.g);
                            qmVar.write(", ");
                            Script.Consts.a(qmVar, c);
                            qmVar.write(", ");
                            Script.Consts.a(qmVar, qmVar.a.i, i2);
                            qmVar.write(")\n");
                        }
                    }
                }
            } catch (NumberFormatException e) {
                re.a(e, editText);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null || (view.getTag() instanceof pj)) {
            View a = android.fix.i.a((int) R.layout.dump, (ViewGroup) null);
            EditTextPath editTextPath = (EditTextPath) a.findViewById(R.id.path);
            this.a = editTextPath;
            editTextPath.setText(Tools.s().getString("dump-path", a()));
            editTextPath.setDataType(4);
            editTextPath.setPathType(0);
            a.findViewById(R.id.path_selector).setTag(editTextPath);
            tw.a((Button) a.findViewById(R.id.typical_values), editTextPath);
            EditText editText = (EditText) a.findViewById(R.id.memory_from);
            this.c = editText;
            a.findViewById(R.id.region_from).setTag(editText);
            EditText editText2 = (EditText) a.findViewById(R.id.memory_to);
            this.d = editText2;
            a.findViewById(R.id.region_to).setTag(editText2);
            editText.setText(d.b(this.f, 4));
            editText.setDataType(1);
            InternalKeyboard.a(editText, 1);
            editText2.setText(d.b(this.g, 4));
            editText2.setDataType(1);
            this.e = (CheckBox) a.findViewById(R.id.skip_system_libs);
            gy gyVar = new gy(this, editTextPath);
            Iterator<View> it = a.getFocusables(2).iterator();
            while (it.hasNext()) {
                View next = it.next();
                if (next instanceof EditText) {
                    Tools.a(next, gyVar);
                }
            }
            AlertDialog create = i.c().setView(InternalKeyboard.a(a)).setPositiveButton(qk.a((int) R.string.save), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
            this.b = create;
            i.a(create, (DialogInterface.OnShowListener) this);
            i.a(create, (DialogInterface.OnDismissListener) this);
            i.a(create, editTextPath);
            return;
        }
        onClick(null, -1);
    }

    private long a(int i) {
        long a = MemoryRange.a(i, this.c, "0", this.d, "-1");
        if (i == 0) {
            this.f = a;
        } else {
            this.g = a;
        }
        return a;
    }
}
