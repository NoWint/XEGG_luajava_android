package android.ext;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.util.AttributeSet;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class MultiChoiceButton extends SystemSpinner implements DialogInterface.OnMultiChoiceClickListener {
    protected int a;

    public MultiChoiceButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public MultiChoiceButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MultiChoiceButton(Context context) {
        super(context);
    }

    @Override // android.ext.SystemSpinner
    protected void a() {
        android.fix.j jVar = this.d;
        int size = jVar.size();
        CharSequence[] charSequenceArr = new CharSequence[size];
        boolean[] zArr = new boolean[charSequenceArr.length];
        this.a = 0;
        for (int i = 0; i < size; i++) {
            int keyAt = jVar.keyAt((size - 1) - i);
            charSequenceArr[i] = (CharSequence) jVar.valueAt((size - 1) - i);
            boolean z = (this.b & keyAt) != 0;
            zArr[i] = z;
            onClick(null, i, z);
        }
        i.a(i.a(Tools.f(getContext())).setMultiChoiceItems(charSequenceArr, zArr, this).setNegativeButton(qk.a((int) R.string.cancel), (DialogInterface.OnClickListener) null).setNeutralButton(qk.a((int) R.string.reset_button), this).setPositiveButton(qk.a((int) R.string.ok), this));
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public void onClick(DialogInterface dialogInterface, int i, boolean z) {
        if (z) {
            this.a |= 1 << i;
        } else {
            this.a &= (1 << i) ^ (-1);
        }
    }

    @Override // android.ext.SystemSpinner, android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        int i2;
        int size = this.d.size();
        if (i == -1) {
            i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                if ((this.a & (1 << i3)) != 0) {
                    i2 |= this.d.keyAt((size - 1) - i3);
                }
            }
        } else {
            i2 = 0;
        }
        setSelected(i2);
        Tools.a(dialogInterface);
    }

    @Override // android.ext.SystemSpinner
    public void setSelected(int i) {
        android.fix.j jVar = this.d;
        if (jVar != null) {
            int size = jVar.size();
            bp bpVar = new bp();
            for (int i2 = 0; i2 < size; i2++) {
                if ((jVar.keyAt((size - 1) - i2) & i) != 0) {
                    if (bpVar.b() != 0) {
                        bpVar.a(",");
                    }
                    CharSequence charSequence = (CharSequence) jVar.valueAt((size - 1) - i2);
                    bpVar.a(charSequence.subSequence(0, charSequence.toString().indexOf(58)));
                }
            }
            if (Build.VERSION.SDK_INT < 11) {
                Tools.a(this, Tools.b((int) R.drawable.btn_default_normal_holo_dark));
            }
            setText(bpVar.a());
            this.b = i;
            if (this.c != null) {
                this.c.onClick(null, i);
            }
        }
    }
}
