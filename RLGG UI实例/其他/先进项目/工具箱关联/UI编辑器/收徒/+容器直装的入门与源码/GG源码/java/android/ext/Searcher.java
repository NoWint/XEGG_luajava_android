package android.ext;

import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: src */
/* loaded from: classes.dex */
public class Searcher implements DialogInterface.OnClickListener, TextWatcher, View.OnClickListener, View.OnFocusChangeListener, CompoundButton.OnCheckedChangeListener, Runnable {
    public static final int[] a = new int[5];
    public static volatile boolean b = false;
    private final Button A;
    private final View B;
    private final Button C;
    private final Button D;
    private final View[] E;
    private final int[][] F;
    private final int G;
    private int H;
    private String I;
    final MemoryRange d;
    final EditText e;
    private final TextView i;
    private final EditText j;
    private final View k;
    private final View l;
    private final TextView m;
    private final View n;
    private final EditText o;
    private final TextView p;
    private final View q;
    private final EditText r;
    private final CheckBox s;
    private final View t;
    private final SystemSpinnerType u;
    private final View v;
    private final CheckBox w;
    private final CheckBox x;
    private final Button y;
    private final Button z;
    public volatile boolean c = true;
    private boolean J = false;
    private char K = 0;
    private int L = 0;
    private final View f = android.fix.i.a((int) R.layout.service_searcher, (ViewGroup) null);
    private final TextView g = (TextView) this.f.findViewById(R.id.message);
    private final SystemSpinner h = (SystemSpinner) this.f.findViewById(R.id.sign_spinner);

    public Searcher(int i, int i2) {
        this.H = i;
        this.G = i2;
        this.h.setOnItemSelectedListener(this);
        this.i = (TextView) this.f.findViewById(R.id.type_hint);
        this.j = (EditText) this.f.findViewById(R.id.number);
        this.j.setDataType(1);
        this.k = this.f.findViewById(R.id.number_converter);
        this.l = this.f.findViewById(R.id.value_row);
        this.n = this.f.findViewById(R.id.edit_mask_row);
        this.o = (EditText) this.f.findViewById(R.id.edit_mask);
        this.p = (TextView) this.f.findViewById(R.id.mask_view);
        rg rgVar = new rg(this);
        this.o.addTextChangedListener(rgVar);
        this.q = this.f.findViewById(R.id.offset_row);
        this.r = (EditText) this.f.findViewById(R.id.offset);
        this.s = (CheckBox) this.f.findViewById(R.id.hex);
        this.t = this.f.findViewById(R.id.type_row);
        this.u = (SystemSpinnerType) this.f.findViewById(R.id.type);
        this.k.setTag(new Object[]{this.j, this.u});
        this.u.setOnItemSelectedListener(this);
        this.v = this.f.findViewById(R.id.mode_hacking_row);
        this.w = (CheckBox) this.f.findViewById(R.id.mode_hacking);
        this.w.setOnCheckedChangeListener(this);
        this.x = (CheckBox) this.f.findViewById(R.id.ordered);
        this.x.setOnCheckedChangeListener(this);
        this.y = (Button) this.f.findViewById(R.id.hex1);
        this.y.setOnClickListener(this);
        this.z = (Button) this.f.findViewById(R.id.hex2);
        this.z.setOnClickListener(this);
        this.A = (Button) this.f.findViewById(R.id.min_group_size);
        this.A.setTag(2);
        this.A.setOnClickListener(this);
        this.B = this.f.findViewById(R.id.fuzzy_row);
        this.e = (EditText) this.f.findViewById(R.id.limit);
        this.e.setDataType(1);
        this.d = (MemoryRange) this.f.findViewById(R.id.memory_range);
        this.d.a();
        this.C = (Button) this.f.findViewById(R.id.ext_btn);
        this.D = (Button) this.f.findViewById(R.id.cancel);
        Iterator<View> it = this.f.getFocusables(2).iterator();
        while (it.hasNext()) {
            View next = it.next();
            if (next instanceof EditText) {
                Tools.a(next, this);
            }
        }
        this.d.setType(a[i]);
        this.d.setTypeChangeListener(this);
        this.E = new View[]{this.h, this.l, this.t, this.v, this.B, this.C, this.D, this.n, this.i, this.k, this.q};
        int[] iArr = new int[11];
        iArr[2] = 1;
        iArr[8] = 1;
        iArr[9] = 1;
        int[] iArr2 = new int[11];
        iArr2[0] = 1;
        iArr2[1] = 1;
        iArr2[2] = 1;
        iArr2[7] = 1;
        int[] iArr3 = new int[11];
        iArr3[1] = 1;
        iArr3[2] = 1;
        iArr3[10] = 1;
        this.F = new int[][]{new int[]{1, 1, 1, 1, 0, 0, 0, 0, 1, 1}, iArr, new int[]{0, 1, 1, 0, 1, 1, 1, 0, 1, 1}, iArr2, iArr3};
        if (i < 0 || i >= this.F.length) {
            throw new IllegalArgumentException("Type must be between: 0 and " + (this.F.length - 1) + " but got: " + i);
        }
        e(i);
        this.I = qk.a((int) R.string.examples_search);
        this.m = (TextView) this.f.findViewById(R.id.value);
        if (i == 2) {
            this.m.setText(R.string.difference);
            ((TextView) this.f.findViewById(R.id.fuzzy_text)).setText(qk.a("N - __new_value__; O - __old_value__; D - __difference__;"));
            Tools.j(this.m);
            this.m.setOnClickListener(this);
            this.I = qk.a((int) R.string.diff_examples);
            c(b);
        } else if (i == 0) {
            Tools.j(this.m);
            this.m.setOnClickListener(this);
        } else if (i == 3) {
            Tools.j(this.m);
            this.m.setOnClickListener(this);
            this.m.setText(R.string.address);
            this.I = qk.a((int) R.string.mask_examples);
            this.j.addTextChangedListener(rgVar);
            c();
        } else if (i == 4) {
            this.m.setText(R.string.address);
            TextView textView = (TextView) this.f.findViewById(R.id.offset_text);
            Tools.j(textView);
            textView.setOnClickListener(this);
        }
        this.C.setOnClickListener(this);
        String g = Tools.g(this.m.getText().toString());
        this.m.setText(this.h.getVisibility() != 0 ? String.valueOf(g) + ':' : g);
        q();
    }

    public void a(View.OnClickListener onClickListener) {
        this.D.setOnClickListener(onClickListener);
    }

    public static void a(String str) {
        i.a(i.c().setMessage(String.valueOf(qk.a((int) R.string.examples)) + ":\n" + str).setPositiveButton(qk.a((int) R.string.help), ConfigListAdapter.h()).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null));
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String str;
        boolean z = false;
        if (view != null) {
            switch (view.getId()) {
                case R.id.ext_btn /* 2131427353 */:
                    if (this.H == 2) {
                        c(!b);
                    }
                    if (this.j.getVisibility() == 0 && this.l.getVisibility() == 0) {
                        this.j.requestFocus();
                        return;
                    }
                    return;
                case R.id.value /* 2131427355 */:
                    a(this.I);
                    return;
                case R.id.offset_text /* 2131427634 */:
                    i.a(i.c().setMessage(qk.a((int) R.string.offset_help)).setNegativeButton(qk.a((int) R.string.ok), (DialogInterface.OnClickListener) null));
                    return;
                case R.id.min_group_size /* 2131427639 */:
                case R.id.hex1 /* 2131427640 */:
                case R.id.hex2 /* 2131427641 */:
                    if (s()) {
                        Object tag = view.getTag();
                        if (tag instanceof Integer) {
                            int intValue = ((Integer) tag).intValue();
                            String editable = this.j.getText().toString();
                            int indexOf = editable.indexOf(editable.contains("::") ? "::" : ":");
                            int length = editable.length();
                            if (indexOf == -1) {
                                indexOf = length;
                            }
                            this.j.getText().replace(indexOf, length, String.valueOf(str) + intValue);
                            return;
                        }
                        return;
                    }
                    Editable text = this.j.getText();
                    try {
                        if (text.length() > 0) {
                            int id = view.getId();
                            char charAt = text.charAt(0);
                            boolean z2 = charAt == 'h' || charAt == 'H';
                            if (id == R.id.min_group_size && !z2) {
                                ps.a(text);
                                text.replace(0, 1, "h");
                                return;
                            } else if (id == R.id.hex1 && charAt == ':') {
                                text.replace(0, text.length(), "Q '" + text.toString().substring(1).replace("'", "' 27 '") + '\'');
                                return;
                            } else if (id == R.id.hex1 && charAt == ';') {
                                text.replace(0, text.length(), "Q \"" + text.toString().substring(1).replace("\"", "\" 22 \"") + '\"');
                                return;
                            } else if (z2) {
                                byte[] a2 = ps.a((CharSequence) text.toString());
                                int length2 = a2.length;
                                boolean z3 = id == R.id.min_group_size || id == R.id.hex2;
                                if (id == R.id.hex1 || id == R.id.hex2) {
                                    z = true;
                                }
                                iu.a(null, 0, a2, length2, z3, z, text);
                                text.replace(0, 1, "Q");
                                return;
                            } else {
                                char c = id == R.id.hex1 ? '\"' : '\'';
                                int i = 1;
                                int i2 = 0;
                                while (i < text.length()) {
                                    if (text.charAt(i) == c) {
                                        if (i2 == 0) {
                                            i2 = i + 1;
                                        } else {
                                            byte[] bytes = text.toString().substring(i2, i).getBytes(ps.a(c == '\"'));
                                            String trim = InOut.b(bytes, 0, bytes.length).trim();
                                            text.replace(i2 - 1, i + 1, trim);
                                            i += trim.length() - ((i + 1) - (i2 - 1));
                                            i2 = 0;
                                        }
                                    }
                                    i++;
                                }
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th) {
                        la.a("Failed convert '" + ((Object) text) + "'", th);
                        return;
                    }
                default:
                    return;
            }
        }
    }

    private void c(boolean z) {
        b = z;
        this.C.setText(z ? qk.a((int) R.string.less) : qk.a((int) R.string.more));
        this.l.setVisibility(z ? 0 : 8);
        this.t.setVisibility(z ? 0 : 8);
        this.f.findViewById(R.id.fuzzy_text).setVisibility(z ? 0 : 8);
        ((TextView) this.f.findViewById(R.id.equal_btn)).setText(z ? "N = O+D" : qk.a((int) R.string.equal));
        ((TextView) this.f.findViewById(R.id.not_equal_btn)).setText(z ? "N ≠ O+D" : qk.a((int) R.string.inequal));
        ((TextView) this.f.findViewById(R.id.larger_btn)).setText(z ? "N > O+D" : qk.a((int) R.string.larger));
        ((TextView) this.f.findViewById(R.id.smaller_btn)).setText(z ? "N < O+D" : qk.a((int) R.string.smaller));
    }

    public void a() {
        EditText editText = null;
        switch (this.H) {
            case 1:
                break;
            case 2:
                if (b) {
                    editText = this.j;
                    break;
                }
                break;
            case 3:
                if (!this.c) {
                    editText = this.o;
                    break;
                } else {
                    editText = this.j;
                    break;
                }
            case 4:
                if (!this.c) {
                    editText = this.r;
                    break;
                } else {
                    editText = this.j;
                    break;
                }
            default:
                editText = this.j;
                break;
        }
        if (editText != null) {
            editText.requestFocus();
            Tools.a((android.widget.EditText) editText);
            return;
        }
        onFocusChange(this.f, false);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        InternalKeyboard internalKeyboard;
        if ((Config.B & 1) != 0 && (internalKeyboard = (InternalKeyboard) view.getRootView().findViewById(R.id.keyboard)) != null) {
            if (this.H == 0 && ps.g(this.j.getText().toString())) {
                InternalKeyboard.a(this.j, this.j.isFocused());
                return;
            }
            internalKeyboard.setHideKeyboard(false);
            Tools.e(view);
        }
    }

    private void e(int i) {
        for (int i2 = 0; i2 < this.F[i].length; i2++) {
            this.E[i2].setVisibility(this.F[i][i2] == 1 ? 0 : 8);
        }
    }

    private static String e(String str) {
        char charAt = "?".charAt(0);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i) == charAt ? "0" : "F");
        }
        return sb.toString();
    }

    public long[] b() {
        return a(f(), h());
    }

    public static long[] a(String str, long j) {
        long a2 = ps.a(str.replace("?", "0"), 16);
        long a3 = ps.a(e(str), 16) & j;
        return new long[]{a2 & a3, a3};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        String str;
        if (this.H == 3) {
            try {
                str = Long.toHexString(b()[1]).toUpperCase(Locale.US);
            } catch (Throwable th) {
                str = "???";
            }
            this.p.setText(String.valueOf(Tools.c((int) R.string.resultant_mask)) + ": " + str);
        }
    }

    private void d(boolean z) {
        boolean z2 = true;
        if (this.H == 0) {
            String editable = this.j.getText().toString();
            boolean d = ps.d(editable);
            boolean z3 = ps.e(editable) != 0;
            boolean z4 = !d && s();
            boolean g = ps.g(editable);
            boolean z5 = d && g;
            if ((this.x.getTag() != null) != z5) {
                this.x.setText(z5 ? "UTF-16LE" : qk.a((int) R.string.ordered));
                this.x.setTag(z5 ? this.x : null);
            }
            if ((Config.B & 1) != 0) {
                boolean z6 = g && this.j.isFocused();
                if (this.J != z6 && (!z6 || !z)) {
                    this.J = z6;
                    InternalKeyboard.a(this.j, z6);
                }
            }
            a(d ? editable.charAt(0) : (char) 0, this.u.getSelected());
            this.t.setVisibility((d || z3) ? 8 : 0);
            this.h.setVisibility(d ? 8 : 0);
            android.fix.j c = z4 ? d.c() : d.b();
            if (this.h.getTag() != c) {
                this.h.setTag(c);
                int e = e();
                if (c.get(e) == null) {
                    e = 536870912;
                }
                this.h.setData(c);
                c(e);
            }
            this.w.setVisibility((d || z3 || z4) ? 8 : 0);
            this.x.setVisibility((z5 || z4) ? 0 : 8);
            this.A.setVisibility((d || z4) ? 0 : 8);
            this.y.setVisibility(d ? 0 : 8);
            this.z.setVisibility(8);
            if (d || z4) {
                if (this.w.isChecked()) {
                    this.w.setChecked(false);
                }
                if (d && e() != 536870912) {
                    c(536870912);
                }
                if (z4) {
                    String trim = editable.trim();
                    boolean contains = trim.contains("::");
                    int d2 = d();
                    if (d2 == 0) {
                        d2 = 4;
                    }
                    int a2 = ra.a(trim, d2, contains);
                    this.x.setChecked(contains);
                    this.A.setTag(Integer.valueOf(a2));
                    this.A.setText(String.valueOf(contains ? "::" : ":") + a2);
                    return;
                }
                char f = ps.f(editable);
                this.x.setChecked(f == ':' || f == '\'');
                char charAt = editable.charAt(0);
                if (charAt != 'h' && charAt != 'H') {
                    z2 = false;
                }
                this.A.setText(z2 ? "HEX+U8" : "HEX");
                this.y.setText((z2 || charAt == ';') ? "HEX+U16" : "HEX+U8");
                if (z2 || charAt == 'Q' || charAt == 'q') {
                    this.z.setVisibility(0);
                }
                this.z.setText(z2 ? "HEX+U8+U16" : "HEX+U16");
            }
        }
    }

    private void q() {
        a(this.K, this.G);
        this.h.setData(this.H == 3 ? d.c() : d.b());
        a(d.a(this.G, true), this.G);
        this.j.addTextChangedListener(this);
    }

    public void a(CharSequence charSequence) {
        this.g.setText(charSequence);
    }

    public int d() {
        if (this.H == 0) {
            String editable = this.j.getText().toString();
            if (ps.d(editable)) {
                return editable.charAt(0) == ';' ? 2 : 1;
            }
            int e = ps.e(editable);
            if (e != 0) {
                return e;
            }
        }
        return this.u.getSelected();
    }

    private void a(char c, int i) {
        String l;
        if (this.L != i || this.K != c) {
            TextView textView = this.i;
            if (this.H == 0 && c != 0) {
                l = String.valueOf(Tools.c((int) R.string.examples)) + ": " + ps.c(this.j.getText().toString());
            } else {
                l = d.l(i);
            }
            textView.setText(l);
            this.K = c;
            this.L = i;
        }
    }

    private void r() {
        a(this.K, this.u.getSelected());
        d(false);
    }

    public void a(int i) {
        this.u.setSelected(i);
        r();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public android.fix.j b(int i) {
        android.fix.j a2 = d.a(i, true);
        int b2 = MainService.b();
        if (b2 == 0 || a2.get(b2) != null) {
            i = b2;
        }
        a(a2, i);
        return a2;
    }

    public void a(android.fix.j jVar, int i) {
        if (this.H == 0) {
            String a2 = qk.a((int) R.string.text);
            jVar.put(-100, String.valueOf(a2) + " UTF-8");
            jVar.put(-200, String.valueOf(a2) + " UTF-16LE");
            jVar.put(-300, "HEX");
            jVar.put(-400, "HEX + UTF-8 + UTF-16LE");
            jVar.put(-500, "ARM (x32)");
            jVar.put(-600, "Thumb");
            jVar.put(-700, "ARM (x64)");
        }
        this.u.setData(jVar);
        a(i);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2 = 1;
        if (i <= -100) {
            CharSequence charSequence = null;
            switch (i) {
                case -700:
                    i2 = 4;
                    charSequence = "~A8 ";
                    break;
                case -600:
                    i2 = 2;
                    charSequence = "~T ";
                    break;
                case -500:
                    i2 = 4;
                    charSequence = "~A ";
                    break;
                case -400:
                    charSequence = "Q";
                    break;
                case -300:
                    charSequence = "h";
                    break;
                case -200:
                    i2 = 2;
                    charSequence = ";";
                    break;
                case -100:
                    charSequence = ":";
                    break;
                default:
                    i2 = 0;
                    break;
            }
            if (charSequence != null) {
                this.j.getText().insert(0, charSequence);
                a(i2);
            }
        }
        r();
        if (k() && e() != 536870912) {
            this.w.setChecked(false);
        }
    }

    public int e() {
        return this.h.getSelected();
    }

    public void c(int i) {
        this.h.setSelected(i);
        if (k() && i != 536870912) {
            this.w.setChecked(false);
        }
    }

    public String f() {
        if (this.H != 2 || b) {
            String trim = this.j.getText().toString().trim();
            iw.a(trim, 1);
            return trim;
        }
        return "0";
    }

    public void b(String str) {
        this.j.setText(str.trim());
    }

    public String g() {
        String trim = this.o.getText().toString().trim();
        iw.a(trim, 1);
        return trim;
    }

    public long h() {
        return ps.a(g(), 16);
    }

    public void c(String str) {
        this.o.setText(str.trim());
    }

    public String i() {
        String trim = this.r.getText().toString().trim();
        iw.a(trim, 1);
        return trim;
    }

    public void d(String str) {
        this.r.setText(str.trim());
    }

    public void a(boolean z) {
        this.s.setChecked(z);
    }

    public boolean j() {
        return this.s.isChecked();
    }

    public void b(boolean z) {
        this.c = z;
    }

    public boolean k() {
        return this.w.isChecked();
    }

    public View l() {
        return InternalKeyboard.a(m());
    }

    public View m() {
        return Tools.d(n());
    }

    public View n() {
        return this.f;
    }

    public EditText o() {
        return this.j;
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        boolean z = true;
        d((i == 0 && i2 == 1 && i3 == 0) ? false : false);
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    private boolean s() {
        if (this.H != 0) {
            return false;
        }
        String trim = this.j.getText().toString().trim();
        return trim.length() >= 1 && trim.charAt(0) != '=' && trim.indexOf(59) > 0;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int i;
        switch (compoundButton.getId()) {
            case R.id.mode_hacking /* 2131427637 */:
                if (z && e() != 536870912) {
                    c(536870912);
                    return;
                }
                return;
            case R.id.ordered /* 2131427638 */:
                if (this.H == 0) {
                    String editable = this.j.getText().toString();
                    if (ps.d(editable)) {
                        char f = ps.f(editable);
                        if ((f == ':' || f == '\'') != z) {
                            if (f == '\'' || f == '\"') {
                                char c = z ? '\'' : '\"';
                                String valueOf = String.valueOf(f);
                                Editable text = this.j.getText();
                                int length = editable.length();
                                for (int i2 = 1; i2 < length; i2++) {
                                    if (editable.charAt(i2) == c) {
                                        text.replace(i2, i2 + 1, valueOf);
                                    }
                                }
                                return;
                            }
                            this.j.getText().replace(0, 1, String.valueOf(f));
                            return;
                        }
                        return;
                    }
                }
                if (s()) {
                    String editable2 = this.j.getText().toString();
                    if (editable2.contains("::") != z) {
                        String str = z ? ":" : "::";
                        int indexOf = editable2.indexOf(str);
                        int length2 = str.length() + indexOf;
                        if (indexOf == -1) {
                            int length3 = editable2.length();
                            length2 = length3;
                            i = length3;
                        } else {
                            i = indexOf;
                        }
                        this.j.getText().replace(i, length2, z ? "::" : ":");
                        return;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    public long d(int i) {
        return this.d.a(i);
    }

    @Override // java.lang.Runnable
    public void run() {
        a[this.H] = this.d.getType();
    }

    public long p() {
        String trim = this.e.getText().toString().trim();
        if (trim.length() <= 0) {
            return 0L;
        }
        String c = re.c(trim);
        try {
            long a2 = ps.a(c, 10);
            iw.a(c, 1);
            return a2;
        } catch (NumberFormatException e) {
            this.e.requestFocus();
            throw e;
        }
    }
}
