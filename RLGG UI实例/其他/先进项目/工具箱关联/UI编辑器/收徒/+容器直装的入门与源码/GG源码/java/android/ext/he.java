package android.ext;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.util.Iterator;

/* compiled from: src */
/* loaded from: classes.dex */
public class he implements TextWatcher, View.OnClickListener, View.OnLongClickListener {
    private static volatile boolean f = false;
    private final Button A;
    private final View[] B;
    private final int[][] C;
    private final d D;
    private int E;
    private String F;
    final CheckBox b;
    final CheckBox c;
    final CheckBox d;
    final View e;
    private final TextView l;
    private final EditText m;
    private final View n;
    private final EditText o;
    private final View p;
    private final View q;
    private final View r;
    private final View s;
    private final View t;
    private final View u;
    private final View v;
    private final View w;
    private final SystemSpinner x;
    private final EditText y;
    private final EditText z;
    private final View g = android.fix.i.a((int) R.layout.service_editor, (ViewGroup) null);
    private final TextView h = (TextView) this.g.findViewById(R.id.message);
    private final View i = this.g.findViewById(R.id.name_row);
    private final CheckBox j = (CheckBox) this.g.findViewById(R.id.save_as);
    private final View k = this.g.findViewById(R.id.name_text);
    final EditText a = (EditText) this.g.findViewById(R.id.name);

    public he(int i, d dVar) {
        this.E = i;
        this.D = dVar.a();
        this.a.setDataType(3);
        this.l = (TextView) this.g.findViewById(R.id.type_hint);
        this.m = (EditText) this.g.findViewById(R.id.number);
        this.m.setDataType(1);
        View findViewById = this.g.findViewById(R.id.number_converter);
        Object[] objArr = new Object[2];
        objArr[0] = this.m;
        objArr[1] = Integer.valueOf(dVar == null ? 0 : dVar.d);
        findViewById.setTag(objArr);
        this.n = this.g.findViewById(R.id.edit_step_row);
        this.o = (EditText) this.g.findViewById(R.id.edit_step);
        this.o.setDataType(1);
        this.g.findViewById(R.id.step_converter).setTag(this.o);
        View findViewById2 = this.g.findViewById(R.id.edit_step_label);
        Tools.j(findViewById2);
        findViewById2.setOnClickListener(this);
        this.b = (CheckBox) this.g.findViewById(R.id.add_not_replace);
        Tools.j(this.b);
        this.b.setOnLongClickListener(this);
        this.p = this.g.findViewById(R.id.fill);
        this.q = this.g.findViewById(R.id.fill_values);
        this.r = this.g.findViewById(R.id.fill_utf8);
        this.s = this.g.findViewById(R.id.fill_utf16le);
        this.t = this.g.findViewById(R.id.fill_hex);
        this.u = this.g.findViewById(R.id.fill_hex_utf8);
        this.v = this.g.findViewById(R.id.fill_hex_utf16le);
        this.w = this.g.findViewById(R.id.fill_hex_utf8_utf16le);
        this.c = (CheckBox) this.g.findViewById(R.id.change_value);
        this.d = (CheckBox) this.g.findViewById(R.id.freeze);
        this.x = (SystemSpinner) this.g.findViewById(R.id.freeze_spinner);
        this.e = this.g.findViewById(R.id.freeze_range);
        this.y = (EditText) this.g.findViewById(R.id.freeze_from);
        this.y.setDataType(1);
        this.g.findViewById(R.id.from_converter).setTag(this.y);
        this.z = (EditText) this.g.findViewById(R.id.freeze_to);
        this.z.setDataType(1);
        this.g.findViewById(R.id.to_converter).setTag(this.z);
        this.A = (Button) this.g.findViewById(R.id.ext_btn);
        hf hfVar = new hf(this);
        Iterator<View> it = this.g.getFocusables(2).iterator();
        while (it.hasNext()) {
            View next = it.next();
            if (next instanceof EditText) {
                Tools.a(next, hfVar);
            }
        }
        this.B = new View[]{this.i, this.j, this.k, this.n, this.p, this.A, this.c};
        int[] iArr = new int[7];
        iArr[0] = 1;
        iArr[2] = 1;
        int[] iArr2 = new int[7];
        iArr2[0] = 1;
        iArr2[1] = 1;
        int[] iArr3 = new int[7];
        iArr3[0] = 1;
        iArr3[1] = 1;
        this.C = new int[][]{iArr, iArr2, new int[]{0, 0, 0, 1, 1, 1, 1}, iArr3};
        if (i < 0 || i >= this.C.length) {
            throw new IllegalArgumentException("Type must be between: 0 and " + (this.C.length - 1) + " but got: " + i);
        }
        a(i);
        this.F = qk.a((int) R.string.edit_examples);
        TextView textView = (TextView) this.g.findViewById(R.id.value);
        if (i == 2) {
            Tools.j(textView);
            textView.setOnClickListener(this);
            this.F = qk.a((int) R.string.edit_all_examples);
            a(f);
        } else if (i == 1) {
            Tools.j(textView);
            textView.setOnClickListener(this);
        }
        this.A.setOnClickListener(this);
        textView.setText(String.valueOf(Tools.g(textView.getText().toString())) + ':');
        m();
        this.a.addTextChangedListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null) {
            switch (view.getId()) {
                case R.id.ext_btn /* 2131427353 */:
                    if (this.E == 2) {
                        a(!f);
                    }
                    this.m.requestFocus();
                    return;
                case R.id.value /* 2131427355 */:
                    Searcher.a(this.F);
                    return;
                case R.id.edit_step_label /* 2131427572 */:
                    ConfigListAdapter.b(R.string.help_fill);
                    return;
                default:
                    return;
            }
        }
    }

    public void a(View.OnClickListener onClickListener) {
        this.q.setOnClickListener(onClickListener);
        this.r.setOnClickListener(onClickListener);
        this.s.setOnClickListener(onClickListener);
        this.t.setOnClickListener(onClickListener);
        this.u.setOnClickListener(onClickListener);
        this.v.setOnClickListener(onClickListener);
        this.w.setOnClickListener(onClickListener);
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view == null) {
            return false;
        }
        switch (view.getId()) {
            case R.id.add_not_replace /* 2131427575 */:
                ConfigListAdapter.b(R.string.help_add_to_value);
                return true;
            default:
                return false;
        }
    }

    private void a(boolean z) {
        int i = 0;
        f = z;
        this.A.setText(z ? qk.a((int) R.string.less) : qk.a((int) R.string.more));
        this.n.setVisibility(z ? 0 : 8);
        this.p.setVisibility(z ? 0 : 8);
        this.r.setVisibility((z && this.D.d == 1) ? 0 : 8);
        this.s.setVisibility((!z || (this.D.d & 7) == 0) ? 8 : 0);
        if (!z || this.D.d != 1) {
            i = 8;
        }
        this.t.setVisibility(i);
        this.u.setVisibility(i);
        this.v.setVisibility(i);
        this.w.setVisibility(i);
    }

    private void a(int i) {
        for (int i2 = 0; i2 < this.C[i].length; i2++) {
            this.B[i2].setVisibility(this.C[i][i2] == 1 ? 0 : 8);
        }
    }

    private void m() {
        this.l.setText(d.l(this.D.d));
        this.m.setText(this.D.h());
        this.o.setText("0");
        this.c.setChecked(true);
        hg hgVar = new hg(this);
        this.m.addTextChangedListener(hgVar);
        this.o.addTextChangedListener(hgVar);
        this.b.setOnCheckedChangeListener(new hh(this));
        this.d.setOnCheckedChangeListener(new hi(this));
        this.x.setData(qx.r());
        this.x.setOnItemSelectedListener(new hj(this));
        if (this.D instanceof qx) {
            qx qxVar = (qx) this.D;
            this.a.setText(qxVar.t());
            this.d.setChecked(qxVar.f);
            this.x.setSelected(qxVar.g);
            this.y.setText(qxVar.a(true));
            this.z.setText(qxVar.a(false));
            return;
        }
        this.d.setChecked(false);
        this.x.setSelected(0);
        this.y.setText("0");
        this.z.setText("0");
    }

    public void a(CharSequence charSequence) {
        this.h.setText(charSequence);
    }

    public String a() {
        String trim = this.a.getText().toString().trim();
        iw.a(trim, 2);
        return trim;
    }

    public String b() {
        String trim = this.m.getText().toString().trim();
        iw.a(trim, 1);
        return trim;
    }

    public void a(String str) {
        this.m.setText(str.trim());
    }

    public String c() {
        if (this.n.getVisibility() == 0) {
            String trim = this.o.getText().toString().trim();
            iw.a(trim, 1);
            return trim;
        }
        return "0";
    }

    public boolean d() {
        return this.c.isChecked();
    }

    public View e() {
        return InternalKeyboard.a(f());
    }

    public View f() {
        return Tools.d(g());
    }

    public View g() {
        return this.g;
    }

    public EditText h() {
        return this.m;
    }

    public d i() {
        return this.D;
    }

    public void j() {
        this.j.setChecked(true);
    }

    public boolean k() {
        if (this.d.isChecked()) {
            return true;
        }
        return this.i.getVisibility() == 0 && ((this.j.getVisibility() == 0 && this.j.isChecked()) || this.k.getVisibility() == 0);
    }

    public qx a(d dVar) {
        qx qxVar = new qx(dVar);
        qxVar.f = this.d.isChecked();
        qxVar.n(this.x.getSelected());
        if (qxVar.g == 3) {
            qxVar.a(re.c(this.y.getText().toString().trim()), re.c(this.z.getText().toString().trim()));
        }
        if (!qxVar.f && this.b.isChecked()) {
            qxVar.d |= 1073741824;
        }
        if ((this.j.getVisibility() == 0 && this.j.isChecked()) || this.k.getVisibility() == 0) {
            String a = a();
            if (!qxVar.t().equals(a)) {
                qxVar.e = a;
            }
        }
        return qxVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n() {
        boolean z = false;
        if ((Config.B & 1) != 0) {
            if (this.m.isFocused() && ps.g(this.m.getText().toString())) {
                z = true;
            }
            InternalKeyboard.a(this.m, z);
        }
        return z;
    }

    public qx l() {
        return a(this.D);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.j.setChecked(true);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        this.j.setChecked(true);
    }
}
