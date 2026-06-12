package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class ug implements DialogInterface.OnClickListener, DialogInterface.OnShowListener, View.OnClickListener {
    CheckBox a;
    EditText b;
    CheckBox c;
    EditText d;
    CheckBox e;
    EditText f;
    CheckBox g;
    EditText h;
    AlertDialog i;
    final /* synthetic */ uf j;

    private ug(uf ufVar) {
        this.j = ufVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ ug(uf ufVar, ug ugVar) {
        this(ufVar);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this);
    }

    private long a(EditText editText, boolean z) {
        String c = re.c(editText.getText().toString().trim());
        long j = z ? ps.i(c).a : ps.j(c).a;
        iw.a(c, 1);
        return j;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2 = 0;
        try {
            boolean isChecked = this.a.isChecked();
            boolean z = false;
            long j = 0;
            long j2 = 0;
            if (isChecked) {
                i2 = 2;
                j = a(this.b, true);
                uf.b = j;
                z = this.c.isChecked();
                if (z) {
                    j2 = a(this.d, true);
                    uf.d = j2;
                }
            }
            uf.a = isChecked;
            uf.c = z;
            boolean isChecked2 = this.e.isChecked();
            boolean z2 = false;
            double d = 0.0d;
            double d2 = 0.0d;
            if (isChecked2) {
                i2 |= 4;
                d = Double.longBitsToDouble(a(this.f, false));
                uf.h = d;
                z2 = this.g.isChecked();
                if (z2) {
                    d2 = Double.longBitsToDouble(a(this.h, false));
                    uf.j = d2;
                }
            }
            uf.g = isChecked2;
            uf.i = z2;
            uf.a(i2, j, j2, d, d2);
            Tools.a(dialogInterface);
            qm qmVar = MainService.instance.h;
            if (qmVar != null) {
                qmVar.write("gg.unrandomizer(");
                if (isChecked) {
                    qmVar.write(Long.toString(j));
                    qmVar.write(", ");
                    qmVar.write(Long.toString(j2));
                    qmVar.write(", ");
                } else {
                    qmVar.write("nil, nil, ");
                }
                if (isChecked2) {
                    qmVar.write(Double.toString(d));
                    qmVar.write(", ");
                    qmVar.write(Double.toString(d2));
                } else {
                    qmVar.write("nil, nil");
                }
                qmVar.write(")\n");
            }
        } catch (NumberFormatException e) {
            re.a(e, (android.widget.EditText) null);
        }
    }

    private void a(CheckBox checkBox, CheckBox checkBox2, boolean z, EditText editText, String str) {
        checkBox2.setChecked(z);
        checkBox2.setText(qk.a(checkBox2.getText().toString()));
        editText.setDataType(1);
        editText.setText(str);
        editText.setTag(checkBox2);
        editText.addTextChangedListener(new uh(this, checkBox2, checkBox));
        if (checkBox != null) {
            checkBox.setOnCheckedChangeListener(new ui(this, checkBox2));
            checkBox2.setOnCheckedChangeListener(new uj(this, checkBox));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null || (view.getTag() instanceof pj)) {
            View a = android.fix.i.a((int) R.layout.unrand, (ViewGroup) null);
            TextView textView = (TextView) a.findViewById(R.id.message);
            Tools.j(textView);
            textView.setOnClickListener(this);
            this.a = (CheckBox) a.findViewById(R.id.rd_qword_use);
            this.b = (EditText) a.findViewById(R.id.rd_qword);
            this.c = (CheckBox) a.findViewById(R.id.rd_qword_inc_use);
            this.d = (EditText) a.findViewById(R.id.rd_qword_inc);
            a(null, this.a, uf.a, this.b, gv.a(uf.b, 32));
            a(this.a, this.c, uf.c, this.d, gv.a(uf.d, 32));
            this.e = (CheckBox) a.findViewById(R.id.rd_double_use);
            this.f = (EditText) a.findViewById(R.id.rd_double);
            this.g = (CheckBox) a.findViewById(R.id.rd_double_inc_use);
            this.h = (EditText) a.findViewById(R.id.rd_double_inc);
            a(null, this.e, uf.g, this.f, Double.toString(uf.h));
            a(this.e, this.g, uf.i, this.h, Double.toString(uf.j));
            this.i = i.c().setView(InternalKeyboard.a(a)).setPositiveButton(qk.a((int) R.string.ok), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
            i.a(this.i, this);
            i.a(this.i, this.b);
            return;
        }
        switch (view.getId()) {
            case R.id.message /* 2131427342 */:
                ConfigListAdapter.b(R.string.help_unrandomizer);
                return;
            default:
                onClick(this.i, -1);
                return;
        }
    }
}
