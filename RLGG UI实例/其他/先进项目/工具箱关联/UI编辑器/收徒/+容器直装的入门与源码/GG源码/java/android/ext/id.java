package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import catch_.me_.if_.you_.can_.R;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: src */
/* loaded from: classes.dex */
public class id implements DialogInterface.OnClickListener, DialogInterface.OnShowListener, View.OnClickListener, View.OnLongClickListener {
    final /* synthetic */ ic a;
    private View b;
    private EditText c;
    private CheckBox d;
    private EditText e;
    private CheckBox f;
    private EditText g;
    private CheckBox h;
    private EditText i;
    private CheckBox j;
    private EditText k;
    private CheckBox l;
    private SystemSpinner m;
    private CheckBox n;
    private SystemSpinner o;
    private EditText p;
    private CheckBox q;
    private SystemSpinner r;
    private final int[] s;
    private final CheckBox[] t;
    private SharedPreferences u;
    private AlertDialog v;

    private id(ic icVar) {
        this.a = icVar;
        this.s = new int[]{1, 2, 4, 8, 16, 32, 64};
        this.t = new CheckBox[this.s.length];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ id(ic icVar, id idVar) {
        this(icVar);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        onClick(((AlertDialog) dialogInterface).getButton(i));
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this, this.c);
        Tools.a(dialogInterface, -3, (Object) true, (View.OnClickListener) this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        if (view == null || (view.getTag() instanceof pj)) {
            a();
            AlertDialog create = i.c().setView(InternalKeyboard.a(Tools.d(this.b))).setPositiveButton(qk.a((int) R.string.apply), this).setNeutralButton(qk.a((int) R.string.reset_button), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).create();
            this.v = create;
            i.a(create, this);
            i.a(create, this.c);
            return;
        }
        if (view.getTag() instanceof Boolean) {
            this.d.setChecked(false);
            this.f.setChecked(false);
            this.h.setChecked(false);
            this.j.setChecked(false);
            this.l.setChecked(false);
            this.n.setChecked(false);
            this.q.setChecked(false);
            for (int i = 0; i < this.s.length; i++) {
                this.t[i].setChecked(false);
            }
        }
        try {
            int a = ek.a(this.c.getText().toString().trim());
            if (a < 1) {
                throw new NumberFormatException(Tools.a(qk.a((int) R.string.number_less), qk.a((int) R.string.max_show_rec), 1));
            }
            if (a > 100000) {
                throw new NumberFormatException(Tools.a(qk.a((int) R.string.number_greater), qk.a((int) R.string.max_show_rec), 100000));
            }
            String editable = !this.d.isChecked() ? null : this.e.getText().toString();
            String editable2 = !this.f.isChecked() ? null : this.g.getText().toString();
            String editable3 = !this.h.isChecked() ? null : this.i.getText().toString();
            String editable4 = !this.j.isChecked() ? null : this.k.getText().toString();
            int selected = !this.l.isChecked() ? 0 : this.m.getSelected();
            if (this.n.isChecked()) {
                str = String.valueOf(this.o.getSelected() == 268435456 ? "!" : "") + this.p.getText().toString();
            } else {
                str = null;
            }
            ek.a(editable, editable2, editable3, editable4, selected, str, !this.q.isChecked() ? 0 : this.r.getSelected());
            ek.a(a);
            int i2 = 0;
            for (int i3 = 0; i3 < this.s.length; i3++) {
                if (this.t[i3].isChecked()) {
                    i2 |= this.s[i3];
                }
            }
            AddressArrayAdapter.a(i2);
            qw qwVar = new qw(this.u.edit());
            a(qwVar, this.b);
            qwVar.commit();
            Tools.a((DialogInterface) this.v);
            MainService.instance.j(false);
        } catch (NumberFormatException e) {
            la.b("Error", e);
            i.a(i.c().setCustomTitle(Tools.d((int) R.string.error)).setMessage(e.getMessage()).setPositiveButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
        }
    }

    private void a(qw qwVar, View view) {
        if (view != null) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                while (r0 < childCount) {
                    try {
                        View childAt = viewGroup.getChildAt(r0);
                        if (childAt != null) {
                            a(qwVar, childAt);
                        }
                    } catch (ArrayIndexOutOfBoundsException e) {
                    }
                    r0++;
                }
                return;
            }
            int id = view.getId();
            if (id != -1) {
                if (view instanceof EditText) {
                    EditText editText = (EditText) view;
                    String str = id == R.id.eMaxShow ? "100" : "";
                    if (qwVar == null) {
                        editText.setText(this.u.getString(qk.b(id), str));
                        editText.setDataType(1);
                        return;
                    }
                    String trim = editText.getText().toString().trim();
                    iw.a(trim, 1);
                    qwVar.a(qk.b(id), trim, "");
                } else if (view instanceof SystemSpinner) {
                    SystemSpinner systemSpinner = (SystemSpinner) view;
                    r0 = id == R.id.sFractional ? 536870912 : 0;
                    if (qwVar == null) {
                        systemSpinner.setSelected(this.u.getInt(qk.b(id), r0));
                    } else {
                        qwVar.a(qk.b(id), systemSpinner.getSelected(), r0);
                    }
                } else if (view instanceof CheckBox) {
                    CheckBox checkBox = (CheckBox) view;
                    if (qwVar == null) {
                        checkBox.setChecked(ic.a.get(id, false));
                    } else {
                        ic.a.put(id, checkBox.isChecked());
                    }
                }
            }
        }
    }

    private void a(View view, CheckBox checkBox) {
        if (view instanceof EditText) {
            ((EditText) view).addTextChangedListener(new ie(this, checkBox));
        } else if (view instanceof SystemSpinner) {
            ((SystemSpinner) view).setOnItemSelectedListener(new Cif(this, checkBox));
        }
    }

    private void a() {
        if (this.b == null) {
            this.b = android.fix.i.a((int) R.layout.service_filter_search, (ViewGroup) null);
            this.u = Tools.s();
            this.c = (EditText) this.b.findViewById(R.id.eMaxShow);
            this.d = (CheckBox) this.b.findViewById(R.id.cAddrGreat);
            this.e = (EditText) this.b.findViewById(R.id.eAddrGreat);
            this.f = (CheckBox) this.b.findViewById(R.id.cAddrLess);
            this.g = (EditText) this.b.findViewById(R.id.eAddrLess);
            this.h = (CheckBox) this.b.findViewById(R.id.cValGreat);
            this.i = (EditText) this.b.findViewById(R.id.eValGreat);
            this.j = (CheckBox) this.b.findViewById(R.id.cValLess);
            this.k = (EditText) this.b.findViewById(R.id.eValLess);
            this.l = (CheckBox) this.b.findViewById(R.id.cType);
            this.m = (SystemSpinner) this.b.findViewById(R.id.sType);
            this.n = (CheckBox) this.b.findViewById(R.id.cFractional);
            this.o = (SystemSpinner) this.b.findViewById(R.id.sFractional);
            this.p = (EditText) this.b.findViewById(R.id.eFractional);
            this.q = (CheckBox) this.b.findViewById(R.id.cPointer);
            this.r = (SystemSpinner) this.b.findViewById(R.id.sPointer);
            int[] iArr = {R.id.value_hex, R.id.value_rhex, R.id.value_string, R.id.value_java, R.id.value_arm, R.id.value_thumb, R.id.value_arm8};
            CharSequence[] i = ow.i();
            int[] h = ow.h();
            for (int i2 = 0; i2 < this.s.length; i2++) {
                CheckBox checkBox = (CheckBox) this.b.findViewById(iArr[i2]);
                checkBox.setTextColor(h[i2]);
                checkBox.setText(i[i2]);
                checkBox.setChecked((AddressArrayAdapter.a & this.s[i2]) != 0);
                checkBox.setId(-1);
                this.t[i2] = checkBox;
            }
            this.d.setText(String.valueOf(Tools.c((int) R.string.address)) + " ≥");
            this.f.setText(String.valueOf(Tools.c((int) R.string.address)) + " ≤");
            this.h.setText(String.valueOf(Tools.c((int) R.string.number)) + " ≥");
            this.j.setText(String.valueOf(Tools.c((int) R.string.number)) + " ≤");
            this.m.setData(d.c(-1));
            Tools.j(this.n);
            this.n.setOnLongClickListener(this);
            this.o.setData(d.c());
            android.fix.j jVar = new android.fix.j();
            jVar.put(4, Tools.a((CharSequence) ("-: " + qk.a((int) R.string.no)), Tools.e((int) R.color.pointer_unknown)));
            jVar.put(8, Tools.a((CharSequence) ("R: " + qk.a((int) R.string.read_only)), Tools.e((int) R.color.pointer_readable)));
            jVar.put(16, Tools.a((CharSequence) ("W: " + qk.a((int) R.string.writable)), Tools.e((int) R.color.pointer_writable)));
            jVar.put(2, Tools.a((CharSequence) ("X: " + qk.a((int) R.string.executable)), Tools.e((int) R.color.pointer_executable)));
            jVar.put(1, Tools.a((CharSequence) ("WX: " + qk.a((int) R.string.writable_and_executable)), Tools.e((int) R.color.pointer_executable_writable)));
            this.r.setData(jVar);
            a((qw) null, this.b);
            a(this.e, this.d);
            a(this.g, this.f);
            a(this.i, this.h);
            a(this.k, this.j);
            a(this.m, this.l);
            a(this.o, this.n);
            a(this.p, this.n);
            a(this.r, this.q);
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (view == null) {
            return false;
        }
        switch (view.getId()) {
            case R.id.cFractional /* 2131427606 */:
                i.a(i.c().setMessage(qk.a((int) R.string.fractional_hint_)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                return true;
            default:
                return false;
        }
    }
}
