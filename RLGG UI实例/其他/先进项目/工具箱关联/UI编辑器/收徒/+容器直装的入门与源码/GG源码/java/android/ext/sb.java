package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class sb implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnShowListener, TextWatcher, View.OnClickListener {
    EditText a;
    TextView b;
    TextView c;
    AlertDialog d;
    final /* synthetic */ rz e;

    private sb(rz rzVar) {
        this.e = rzVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ sb(rz rzVar, sb sbVar) {
        this(rzVar);
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            String c = re.c(this.a.getText().toString().trim());
            rz.a(rz.a(c));
            iw.a(c, 1);
            Tools.a(dialogInterface);
        } catch (NumberFormatException e) {
            re.a(e, this.a);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == null || (view.getTag() instanceof pj)) {
            View a = android.fix.i.a((int) R.layout.time_jump, (ViewGroup) null);
            Config.a((ImageView) a.findViewById(R.id.examples)).setOnClickListener(this);
            this.b = (TextView) a.findViewById(R.id.hint);
            this.c = (TextView) a.findViewById(R.id.config_time_jump_panel);
            this.c.setOnClickListener(this);
            this.c.setText(Config.a((int) R.id.config_time_jump_panel).toString());
            this.a = (EditText) a.findViewById(R.id.time_jump);
            String str = rz.a;
            if (str.length() == 0 || "0".equals(str)) {
                str = Tools.a(Config.v / 1000.0d);
            }
            this.a.setText(str);
            this.a.addTextChangedListener(this);
            this.a.setDataType(1);
            a();
            this.d = i.c().setView(InternalKeyboard.a(a)).setPositiveButton(qk.a((int) R.string.ok), this).setNegativeButton(qk.a((int) R.string.back), (DialogInterface.OnClickListener) null).create();
            i.a(this.d, (DialogInterface.OnShowListener) this);
            i.a(this.d, (DialogInterface.OnDismissListener) this);
            i.a(this.d, this.a);
            return;
        }
        switch (view.getId()) {
            case R.id.examples /* 2131427345 */:
                Searcher.a(qk.a((int) R.string.examples_timejump));
                return;
            case R.id.config_time_jump_panel /* 2131427460 */:
                ct a2 = Config.a((int) R.id.config_time_jump_panel);
                a2.a(new sc(this, a2));
                a2.d();
                return;
            default:
                onClick(this.d, -1);
                return;
        }
    }

    public void a() {
        String str;
        EditText editText = this.a;
        TextView textView = this.b;
        if (editText == null) {
            str = "?";
        } else {
            try {
                str = Tools.a(rz.a(editText.getText().toString().trim()) / 1000000000);
            } catch (NumberFormatException e) {
                str = "???";
            }
        }
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        rz.a = this.a.getText().toString().trim();
        try {
            rz.b(rz.a(re.c(rz.a)));
        } catch (NumberFormatException e) {
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        a();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        a();
    }
}
