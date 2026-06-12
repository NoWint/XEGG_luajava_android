package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class OffsetCalculator extends pj implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnShowListener, TextWatcher, CompoundButton.OnCheckedChangeListener, Runnable {
    private static String u = "";
    private static String v = "";
    private static boolean w = true;
    long a;
    private final Long b;
    private EditText c;
    private EditText d;
    private TextView g;
    private CheckBox h;
    private ImageView i;
    private TextView j;
    private TextView k;
    private TextView l;
    private TextView m;
    private TextView n;
    private TextView o;
    private TextView p;
    private TextView q;
    private TextView r;
    private TextView s;
    private TextView t;

    public OffsetCalculator() {
        this(null);
    }

    public OffsetCalculator(Long l) {
        super(R.string.offset_calculator, R.drawable.ic_calculator_white_24dp);
        this.a = 0L;
        this.c = null;
        this.d = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.b = l;
    }

    @Override // android.ext.pj, android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null && view.getId() == R.id.save) {
            a();
        } else {
            new OffsetCalculator().a((String) null);
        }
    }

    private void a() {
        SparseIntArray sparseIntArray = new SparseIntArray();
        new tu(d.c(d.a(this.a, false, sparseIntArray)), sparseIntArray, "0", qk.a((int) R.string.type_change_request), new pq(this));
    }

    public void a(String str) {
        View a = android.fix.i.a((int) R.layout.service_offset, (ViewGroup) null);
        this.c = (EditText) a.findViewById(R.id.address);
        this.d = (EditText) a.findViewById(R.id.offset);
        this.g = (TextView) a.findViewById(R.id.result);
        this.i = Config.a((ImageView) a.findViewById(R.id.save));
        this.i.setOnClickListener(this);
        this.h = (CheckBox) a.findViewById(R.id.hex);
        this.h.setChecked(w);
        this.h.setOnCheckedChangeListener(this);
        this.j = (TextView) a.findViewById(R.id.value_hex);
        this.k = (TextView) a.findViewById(R.id.value_rhex);
        this.l = (TextView) a.findViewById(R.id.value_string);
        this.m = (TextView) a.findViewById(R.id.value_java);
        this.n = (TextView) a.findViewById(R.id.value_dword);
        this.o = (TextView) a.findViewById(R.id.value_float);
        this.p = (TextView) a.findViewById(R.id.value_double);
        this.q = (TextView) a.findViewById(R.id.value_word);
        this.r = (TextView) a.findViewById(R.id.value_byte);
        this.s = (TextView) a.findViewById(R.id.value_qword);
        this.t = (TextView) a.findViewById(R.id.value_xor);
        EditText editText = this.c;
        if (str == null) {
            str = u;
        }
        editText.setText(str);
        this.c.setDataType(1);
        this.d.setText(v);
        this.d.setDataType(1);
        this.c.addTextChangedListener(this);
        this.d.addTextChangedListener(this);
        b();
        AlertDialog create = i.c().setView(InternalKeyboard.a(a)).setPositiveButton(qk.a((int) R.string.goto1), this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).setNeutralButton(qk.a((int) R.string.copy), this).create();
        i.a(create, (DialogInterface.OnDismissListener) this);
        i.a(create, (DialogInterface.OnShowListener) this);
        i.a(create, this.d);
    }

    private void b() {
        long j;
        if (this.d != null && this.g != null) {
            StringBuilder sb = new StringBuilder();
            try {
                j = ps.a(this.c.getText().toString().trim(), 16);
            } catch (Throwable th) {
                la.a("Failed parse", th);
                if (sb.length() != 0) {
                    sb.append("; ");
                }
                sb.append(qk.a((int) R.string.address));
                sb.append(' ');
                sb.append(th.getMessage());
                j = 0;
            }
            try {
                this.a = j + ps.a(this.d.getText().toString().trim(), this.h.isChecked() ? 16 : 10);
            } catch (Throwable th2) {
                la.a("Failed parse", th2);
                if (sb.length() != 0) {
                    sb.append("; ");
                }
                sb.append(qk.a((int) R.string.offset));
                sb.append(' ');
                sb.append(th2.getMessage());
                this.a = 0L;
            }
            boolean z = sb.length() != 0;
            if (!z) {
                sb.append(d.b(this.a, 4));
                Handler b = rx.b();
                b.removeCallbacks(this);
                b.post(this);
            } else {
                a(0L, 0L, z);
            }
            this.g.setText(sb.toString());
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        long j = this.a;
        try {
            rx.a(new pr(this, j, MainService.instance.k.a(j, d.a(j, true))));
        } catch (Throwable th) {
            la.b("Failed update value: " + j, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j, long j2, boolean z) {
        String str;
        String str2;
        String str3;
        String str4;
        if (this.g != null) {
            int a = a(j, j2, a(j, j2, a(j, j2, a(j, j2, a(j, j2, a(j, j2, a(j, j2, 0, this.p, 64, 8, 4, z), this.s, 32, 8, 4, z), this.o, 16, 4, 4, z), this.n, 4, 4, 4, z), this.t, 8, 4, 4, z), this.q, 2, 2, 2, z), this.r, 1, 1, 1, z);
            int i = a == 0 ? 1 : a;
            if (!z) {
                if (i != 8) {
                    j2 &= (1 << (i * 8)) - 1;
                }
                str = String.valueOf(ts.a(i * 2, j2)) + "h;";
            } else {
                str = "-h;";
            }
            this.j.setText(str);
            if (!z) {
                long reverseBytes = Long.reverseBytes(j2) >> (64 - (i * 8));
                if (i != 8) {
                    reverseBytes &= (1 << (i * 8)) - 1;
                }
                str2 = String.valueOf(ts.a(i * 2, reverseBytes)) + "r;";
            } else {
                str2 = "-r;";
            }
            this.k.setText(str2);
            if (!z) {
                str3 = String.valueOf('\'') + ow.b(j2, i) + "';";
            } else {
                str3 = "-;";
            }
            this.l.setText(str3);
            if (!z) {
                str4 = String.valueOf('\"') + ow.c(j2, i) + "\";";
            } else {
                str4 = "-;";
            }
            this.m.setText(str4);
        }
    }

    private int a(long j, long j2, int i, TextView textView, int i2, int i3, int i4, boolean z) {
        String str;
        if (!z && ((i4 - 1) & j) == 0) {
            str = d.a(j, j2, i2);
            if (i == 0) {
                i = i3;
            }
        } else {
            str = "-";
        }
        textView.setText(String.valueOf(str) + ((Object) d.g(i2)) + ';');
        return i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String b = d.b(this.a, 4);
        switch (i) {
            case -3:
                iw.a(this.d.getText().toString().trim(), 1);
                Tools.a(b);
                return;
            case -2:
            default:
                return;
            case -1:
                iw.a(this.d.getText().toString().trim(), 1);
                MainService.instance.a(this.b, b, String.valueOf(Tools.c((int) R.string.from_calc)) + ": (" + this.c.getText().toString().trim() + " + " + this.d.getText().toString().trim() + ')');
                return;
        }
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        if (this.c.getText().length() > 0) {
            this.d.requestFocus();
        } else {
            this.c.requestFocus();
        }
        Tools.a((android.widget.EditText) this.d);
        b();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.c != null) {
            w = this.h.isChecked();
            v = this.d.getText().toString().trim();
            u = this.c.getText().toString().trim();
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        b();
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        b();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        b();
    }
}
