package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.ext.Script;
import android.view.View;
import android.view.ViewGroup;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
class en implements DialogInterface.OnClickListener, DialogInterface.OnShowListener, View.OnClickListener {
    private EditText a;
    private AlertDialog b;
    private EditText c;
    private EditText d;
    private long e;
    private long f;
    private int g;

    private en() {
        this.e = 0L;
        this.f = 0L;
        this.g = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ en(en enVar) {
        this();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        EditText editText = this.a;
        if (editText != null) {
            try {
                a(0);
                a(1);
                String c = re.c(editText.getText().toString().trim());
                if (c.length() == 0) {
                    c = "0";
                }
                try {
                    this.g = (int) ps.i(c).a;
                    if (this.g != 0) {
                        iw.a(c, 1);
                    }
                    la.a("Copy: " + this.g + "; " + Long.toHexString(this.e) + '-' + Long.toHexString(this.f));
                    Tools.a((DialogInterface) this.b);
                    MainService.instance.k.a(this.e, this.f, this.g);
                    qm qmVar = MainService.instance.h;
                    if (qmVar != null) {
                        qmVar.write("gg.copyMemory(");
                        Script.Consts.a(qmVar, this.e);
                        qmVar.write(", ");
                        Script.Consts.a(qmVar, this.f);
                        qmVar.write(", ");
                        qmVar.write(Integer.toString(this.g));
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null || (view.getTag() instanceof pj)) {
            View a = android.fix.i.a((int) R.layout.memory_copy, (ViewGroup) null);
            EditText editText = (EditText) a.findViewById(R.id.count_bytes);
            this.a = editText;
            a.findViewById(R.id.bytes_converter).setTag(editText);
            editText.setText(gv.a(this.g, 4));
            editText.setDataType(1);
            EditText editText2 = (EditText) a.findViewById(R.id.memory_from);
            this.c = editText2;
            a.findViewById(R.id.region_from).setTag(editText2);
            EditText editText3 = (EditText) a.findViewById(R.id.memory_dst);
            this.d = editText3;
            a.findViewById(R.id.region_dst).setTag(editText3);
            editText2.setText(d.b(this.e, 4));
            editText2.setDataType(1);
            editText3.setText(d.b(this.f, 4));
            editText3.setDataType(1);
            AlertDialog create = i.c().setCustomTitle(Tools.d((int) R.string.copy_memory)).setView(InternalKeyboard.a(a)).setPositiveButton(qk.a((int) R.string.ok), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
            this.b = create;
            i.a(create, this);
            i.a(create, editText);
            return;
        }
        onClick(null, -1);
    }

    private long a(int i) {
        long a = MemoryRange.a(i, this.c, "0", this.d, "0");
        if (i == 0) {
            this.e = a;
        } else {
            this.f = a;
        }
        return a;
    }
}
