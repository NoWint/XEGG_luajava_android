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
public class io implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnShowListener, View.OnClickListener {
    private static String a = "";
    private AlertDialog b;
    private EditText c;

    private io() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ io(io ioVar) {
        this();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            onClick(((AlertDialog) dialogInterface).getButton(i));
        }
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this, this.c);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null || (view.getTag() instanceof pj)) {
            View a2 = android.fix.i.a((int) R.layout.service_goto, (ViewGroup) null);
            TextView textView = (TextView) a2.findViewById(R.id.addr);
            Tools.j(textView);
            textView.setOnClickListener(this);
            EditText editText = (EditText) a2.findViewById(R.id.mem_edit_addr);
            this.c = editText;
            RegionList regionList = (RegionList) a2.findViewById(R.id.region_from);
            regionList.setTag(editText);
            ip ipVar = new ip(this, regionList);
            a2.findViewById(R.id.cd).setOnClickListener(ipVar);
            a2.findViewById(R.id.cb).setOnClickListener(ipVar);
            a2.findViewById(R.id.ps).setOnClickListener(ipVar);
            a2.findViewById(R.id.xa).setOnClickListener(ipVar);
            a2.findViewById(R.id.history).setOnClickListener(this);
            editText.setText(a);
            editText.setDataType(1);
            AlertDialog create = i.c().setView(InternalKeyboard.a(a2)).setPositiveButton(qk.a((int) R.string.goto1), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
            this.b = create;
            i.a(create, (DialogInterface.OnDismissListener) this);
            i.a(create, (DialogInterface.OnShowListener) this);
            i.a(create, editText);
        } else if (view.getId() == R.id.history) {
            Tools.a((DialogInterface) this.b);
            MainService.instance.L.b();
        } else if (view.getId() == R.id.addr) {
            i.a(i.c().setMessage(String.valueOf(qk.a((int) R.string.examples)) + ":\nBAFE890\nBAFE890+3F0\nBAFE890-A40\nBAFE890+FE-CD7+44-3E\n\nlibc.so\nlibc.so+E0\nlibc.so-32C").setPositiveButton(qk.a((int) R.string.help), ConfigListAdapter.h()).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
        } else {
            try {
                EditText editText2 = this.c;
                if (editText2 != null) {
                    String c = re.c(editText2.getText().toString().trim());
                    iw.a(c, 1);
                    MainService.instance.a((Long) null, c, Tools.c((int) R.string.from_goto));
                }
                Tools.a((DialogInterface) this.b);
            } catch (NumberFormatException e) {
                re.a(e, this.c);
            }
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        EditText editText = this.c;
        if (editText != null) {
            a = editText.getText().toString().trim();
        }
    }
}
