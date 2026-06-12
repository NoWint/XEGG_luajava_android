package android.ext;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import catch_.me_.if_.you_.can_.R;
import java.lang.ref.WeakReference;

/* compiled from: src */
/* loaded from: classes.dex */
public class cw extends ct implements DialogInterface.OnShowListener, View.OnClickListener {
    int k;
    int l;
    long m;
    private WeakReference n;
    private WeakReference o;
    private boolean p;
    private boolean q;
    private int r;

    public cw(int i, int i2, int i3, int i4, long j, int i5, String str, boolean z, boolean z2, boolean z3, int i6) {
        this(i, i2, i3, i4, j, i5, str, z, z2, z3);
        this.r = i6;
    }

    public cw(int i, int i2, int i3, int i4, long j, int i5, String str, boolean z, boolean z2, boolean z3) {
        this(i, i2, i3, i4, j, i5, str, z);
        this.p = z2;
        this.q = z3;
    }

    public cw(int i, int i2, int i3, int i4, long j, int i5, String str, boolean z) {
        super(i, i2, i5, str, z);
        this.n = new WeakReference(null);
        this.o = new WeakReference(null);
        this.p = false;
        this.q = true;
        this.r = 8;
        this.k = i3;
        this.l = i4;
        this.m = j;
    }

    public cw(int i, int i2, int i3, int i4, long j, int i5, String str, boolean z, int i6) {
        this(i, i2, i3, i4, j, i5, str, z);
        this.h = i6;
    }

    @Override // android.ext.ct
    public void d() {
        b();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialogInterface) {
        Tools.a(dialogInterface, -1, (Object) null, this, (EditText) this.o.get());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view != null && view.getId() == R.id.default_) {
            EditText editText = (EditText) this.o.get();
            if (editText != null) {
                editText.setText(Tools.a("%,d", Integer.valueOf(this.b)));
                return;
            }
            return;
        }
        onClick((DialogInterface) this.n.get(), -1);
    }

    protected void b() {
        View a = android.fix.i.a((int) R.layout.option_edit, (ViewGroup) null);
        TextView textView = (TextView) a.findViewById(R.id.message);
        textView.setText(qk.a(this.a));
        if (this.h != -1 && this.h != 0) {
            Tools.j(textView);
            textView.setOnClickListener(new cx(this));
        }
        TextView textView2 = (TextView) a.findViewById(R.id.hint);
        String a2 = qk.a((int) R.string.type_edit_limit);
        Object[] objArr = new Object[2];
        Object[] objArr2 = new Object[1];
        objArr2[0] = Long.valueOf(this.e ? Long.MIN_VALUE : this.l);
        objArr[0] = Tools.a("%,d", objArr2);
        Object[] objArr3 = new Object[1];
        objArr3[0] = Long.valueOf(this.e ? Long.MAX_VALUE : this.m);
        objArr[1] = Tools.a("%,d", objArr3);
        textView2.setText(Tools.a(a2, objArr));
        ((TextView) a.findViewById(R.id.unit)).setText(f());
        TextView textView3 = (TextView) a.findViewById(R.id.default_);
        textView3.setText(String.valueOf(Tools.c((int) R.string.default_)) + ": " + Tools.a("%,d", Integer.valueOf(this.b)));
        textView3.setOnClickListener(this);
        EditText editText = (EditText) a.findViewById(R.id.number);
        Object[] objArr4 = new Object[1];
        objArr4[0] = Long.valueOf(this.e ? e() : this.d);
        editText.setText(Tools.a("%,d", objArr4));
        editText.setDataType(this.r);
        this.o = new WeakReference(editText);
        HexConverter hexConverter = (HexConverter) a.findViewById(R.id.number_converter);
        hexConverter.setTag(new Object[]{editText, 4});
        hexConverter.setVisibility(this.p ? 0 : 8);
        hexConverter.setUseXor(this.q);
        AlertDialog create = i.c().setView(InternalKeyboard.a(a)).setPositiveButton(R.string.ok, this).setNegativeButton(R.string.cancel, (DialogInterface.OnClickListener) null).create();
        i.a(create, this);
        this.n = new WeakReference(create);
        i.a(create, editText);
    }

    @Override // android.ext.ct
    public boolean a(DialogInterface dialogInterface, int i) {
        EditText editText = (EditText) this.o.get();
        if (editText == null) {
            return false;
        }
        try {
            String c = re.c(editText.getText().toString().trim());
            pv i2 = ps.i(c);
            long j = this.l;
            long j2 = this.m;
            if (!this.e && (i2.a < j || i2.a > j2)) {
                throw new NumberFormatException(String.valueOf(Tools.a(qk.a((int) R.string.number_out_of_range), c)) + Tools.a(" [%,d, %,d]", Long.valueOf(j), Long.valueOf(j2)));
            }
            iw.a(c, this.r);
            if (this.e) {
                this.d = (int) i2.a;
                this.f = (int) (i2.a >> 32);
            } else {
                this.d = Math.max((int) Math.min(i2.a, this.m), this.l);
            }
            Config.c();
            Tools.b(this.n);
            return true;
        } catch (NumberFormatException e) {
            re.a(e, editText);
            return false;
        }
    }

    private String f() {
        return this.k == 0 ? "" : qk.a(this.k);
    }

    @Override // android.ext.ct
    public String toString() {
        return String.valueOf(qk.a(this.a)) + ' ' + Tools.a("%,d", Integer.valueOf(this.d)) + ' ' + f();
    }
}
