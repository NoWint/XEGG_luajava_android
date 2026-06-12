package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class qp implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnShowListener, View.OnClickListener {
    final /* synthetic */ qo a;
    private AlertDialog b;
    private android.widget.EditText c;

    private qp(qo qoVar) {
        this.a = qoVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ qp(qo qoVar, qp qpVar) {
        this(qoVar);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        android.widget.EditText editText = this.c;
        if (editText != null) {
            String trim = editText.getText().toString().trim();
            if (Tools.o(trim)) {
                if (MainService.instance.h != null) {
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.error)).setMessage(qk.a((int) R.string.another_record)).setPositiveButton(qk.a((int) R.string.stop), new qq(this, i)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
                    return;
                }
                try {
                    qm qmVar = new qm(trim);
                    iw.a(trim, 4);
                    MainService.instance.b(qmVar);
                    Tools.a((DialogInterface) this.b);
                } catch (Throwable th) {
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.error)).setMessage(String.valueOf(trim) + "\n\n" + th.toString()).setPositiveButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                }
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null || (view.getTag() instanceof pj)) {
            if (MainService.instance.k.y()) {
                View a = android.fix.i.a((int) R.layout.save, (ViewGroup) null);
                ((TextView) a.findViewById(R.id.message)).setText(qk.a((int) R.string.record_script));
                EditTextPath editTextPath = (EditTextPath) a.findViewById(R.id.file);
                this.c = editTextPath;
                editTextPath.setText(qd.a("record-path", "-record", ".lua"));
                editTextPath.setDataType(4);
                editTextPath.setPathType(2);
                a.findViewById(R.id.path_selector).setTag(editTextPath);
                AlertDialog create = i.c().setView(InternalKeyboard.c(a, false)).setPositiveButton(qk.a((int) R.string.record), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
                i.a(create, (DialogInterface.OnShowListener) this);
                i.a(create, (DialogInterface.OnDismissListener) this);
                this.b = create;
                i.a(create, editTextPath);
                return;
            }
            return;
        }
        onClick(null, -1);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        android.widget.EditText editText = this.c;
        if (editText != null) {
            qd.a(editText.getText().toString(), "record-path", "-record", ".lua");
        }
    }
}
