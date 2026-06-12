package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.ext.Script;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class hz implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnShowListener, View.OnClickListener, View.OnLongClickListener {
    final /* synthetic */ hy a;
    private AlertDialog b;
    private android.widget.EditText c;
    private android.widget.EditText d;
    private CheckBox e;
    private CheckBox f;
    private CheckBox g;
    private Button h;
    private View i;

    private hz(hy hyVar) {
        this.a = hyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ hz(hy hyVar, hz hzVar) {
        this(hyVar);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        hy.b = this.e.isChecked();
        hy.c = this.f.isChecked();
        hy.d = this.g.isChecked();
        String trim = this.d.getText().toString().trim();
        if (hy.a) {
            if (Tools.o(trim)) {
                r0 = hy.b ? 1 : 0;
                if (hy.c) {
                    r0 |= 2;
                }
                if (hy.d) {
                    r0 |= 4;
                }
            } else {
                return;
            }
        }
        iw.a(trim, 4);
        android.widget.EditText editText = this.c;
        if (editText != null) {
            String trim2 = editText.getText().toString().trim();
            if (Tools.o(trim2) && Tools.b((Object) trim2)) {
                iw.a(trim2, 4);
                if (MainService.instance.d != null) {
                    i.a(i.c().setCustomTitle(Tools.d((int) R.string.error)).setMessage(qk.a((int) R.string.another_script)).setPositiveButton(qk.a((int) R.string.interrupt), new ia(this, i)).setNegativeButton(qk.a((int) R.string.no), (DialogInterface.OnClickListener) null));
                    return;
                }
                MainService.instance.a(trim2, r0, trim);
                Tools.a((DialogInterface) this.b);
                qm qmVar = MainService.instance.h;
                if (qmVar != null) {
                    qmVar.write("loadfile(");
                    Script.Consts.a(qmVar, trim2);
                    qmVar.write(")()\n");
                }
            }
        }
    }

    private void a() {
        boolean z = hy.a;
        this.h.setText(qk.a(z ? R.string.less : R.string.more));
        this.i.setVisibility(z ? 0 : 8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        if (view == null || (view.getTag() instanceof pj)) {
            if (MainService.instance.k.y()) {
                View a = android.fix.i.a((int) R.layout.execute, (ViewGroup) null);
                ((TextView) a.findViewById(R.id.message)).setText(qk.a((int) R.string.execute_script));
                EditTextPath editTextPath = (EditTextPath) a.findViewById(R.id.file);
                this.c = editTextPath;
                editTextPath.setText(qd.a("script-path", "-script", ".lua"));
                editTextPath.setDataType(4);
                editTextPath.setPathType(1);
                a.findViewById(R.id.file_selector).setTag(editTextPath);
                Config.a((ImageView) a.findViewById(R.id.examples)).setOnClickListener(this);
                a.findViewById(R.id.download_scripts).setOnClickListener(new be("kwws=22jdphjxdugldq1qhw2iruxp2ilohv2fdwhjru|290oxd0vfulswv2"));
                a.findViewById(R.id.help).setOnClickListener(new be("kwws=22jdphjxdugldq1qhw2khos2"));
                a.findViewById(R.id.help_extract).setOnClickListener(this);
                this.i = a.findViewById(R.id.debug);
                EditTextPath editTextPath2 = (EditTextPath) a.findViewById(R.id.path);
                this.d = editTextPath2;
                editTextPath2.setText(qd.a(null, "script-debug"));
                editTextPath2.setDataType(4);
                editTextPath2.setPathType(0);
                a.findViewById(R.id.path_selector).setTag(editTextPath2);
                CheckBox checkBox = (CheckBox) a.findViewById(R.id.disassemble);
                this.e = checkBox;
                checkBox.setChecked(hy.b);
                Tools.j(checkBox);
                checkBox.setOnLongClickListener(this);
                CheckBox checkBox2 = (CheckBox) a.findViewById(R.id.load);
                this.f = checkBox2;
                checkBox2.setChecked(hy.c);
                CheckBox checkBox3 = (CheckBox) a.findViewById(R.id.log);
                this.g = checkBox3;
                checkBox3.setChecked(hy.d);
                Button button = (Button) a.findViewById(R.id.ext_btn);
                this.h = button;
                button.setOnClickListener(this);
                a();
                AlertDialog create = i.c().setView(InternalKeyboard.c(a, false)).setPositiveButton(qk.a((int) R.string.execute), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
                i.a(create, (DialogInterface.OnShowListener) this);
                i.a(create, (DialogInterface.OnDismissListener) this);
                this.b = create;
                i.a(create, editTextPath);
                return;
            }
            return;
        }
        switch (view.getId()) {
            case R.id.examples /* 2131427345 */:
                new Script("print('gg =', gg)", 0, "").c_();
                return;
            case R.id.help_extract /* 2131427348 */:
                File file = new File(Tools.r(), "help.zip");
                try {
                    Tools.a("he", file);
                    str = null;
                } catch (RuntimeException e) {
                    str = e.getMessage();
                }
                i.a(i.c().setCustomTitle(Tools.d((int) R.string.help_extract)).setMessage(str == null ? Tools.a(qk.a((int) R.string.help_extract_done), file.getAbsolutePath()) : String.valueOf(Tools.c((int) R.string.help_extract_fail)) + ": " + str).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                return;
            case R.id.ext_btn /* 2131427353 */:
                hy.a = !hy.a;
                a();
                return;
            default:
                onClick(null, -1);
                return;
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view == null) {
            return false;
        }
        switch (view.getId()) {
            case R.id.disassemble /* 2131427350 */:
                ConfigListAdapter.b(R.string.help_lasm);
                return true;
            default:
                return false;
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        android.widget.EditText editText = this.c;
        if (editText != null) {
            qd.a(editText.getText().toString(), "script-path", "-script", ".lua");
        }
        android.widget.EditText editText2 = this.d;
        if (editText2 != null) {
            qd.a(editText2.getText().toString().trim(), "script-debug");
        }
    }
}
