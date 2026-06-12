package android.ext;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Build;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import catch_.me_.if_.you_.can_.R;

/* compiled from: src */
/* loaded from: classes.dex */
public class SystemSpinnerType extends SystemSpinner {
    e[] a;

    public SystemSpinnerType(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SystemSpinnerType(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SystemSpinnerType(Context context) {
        super(context);
    }

    @Override // android.ext.SystemSpinner
    protected void a() {
        int i;
        this.a = d.a(this.d, (SparseIntArray) null);
        int i2 = 0;
        while (true) {
            if (i2 >= this.a.length) {
                i = 0;
                break;
            } else if (this.a[i2].a == this.b) {
                i = i2;
                break;
            } else {
                i2++;
            }
        }
        i.a(i.a(Tools.f(getContext())).setSingleChoiceItems(new rw(this, MainService.context, 17367058, 16908308, this.a), i, this));
    }

    @Override // android.ext.SystemSpinner, android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        setSelected(this.a[i].a);
        Tools.a(dialogInterface);
    }

    @Override // android.ext.SystemSpinner
    public void setSelected(int i) {
        super.setSelected(i);
        if (Build.VERSION.SDK_INT < 11) {
            Tools.a(this, Tools.b((int) R.drawable.btn_default_normal_holo_dark));
        }
        setTextColor(d.k(i));
    }
}
