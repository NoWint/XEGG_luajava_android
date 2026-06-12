package android.ext;

import android.content.Context;
import android.content.DialogInterface;
import android.fix.Button;
import android.util.AttributeSet;
import android.view.View;

/* compiled from: src */
/* loaded from: classes.dex */
public class SystemSpinner extends Button implements DialogInterface.OnClickListener, View.OnClickListener {
    protected int b;
    protected DialogInterface.OnClickListener c;
    protected android.fix.j d;

    public SystemSpinner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = null;
    }

    public SystemSpinner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = null;
    }

    public SystemSpinner(Context context) {
        super(context);
        this.d = null;
    }

    public void setData(android.fix.j jVar) {
        if (jVar != null) {
            this.d = jVar;
            int size = jVar.size();
            if (size != 0) {
                this.b = jVar.keyAt(size - 1);
                setOnClickListener(this);
            }
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        android.fix.j jVar = this.d;
        if (jVar != null && jVar.size() != 0) {
            a();
        }
    }

    protected void a() {
        android.fix.j jVar = this.d;
        int size = jVar.size();
        CharSequence[] charSequenceArr = new CharSequence[size];
        for (int i = 0; i < size; i++) {
            charSequenceArr[i] = (CharSequence) jVar.valueAt((size - 1) - i);
        }
        i.a(i.a(getContext()).setSingleChoiceItems(charSequenceArr, (size - 1) - jVar.indexOfKey(this.b), this));
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        setSelected(this.d.keyAt((this.d.size() - 1) - i));
        Tools.a(dialogInterface);
    }

    public void setOnItemSelectedListener(DialogInterface.OnClickListener onClickListener) {
        this.c = onClickListener;
    }

    public void setSelected(int i) {
        android.fix.j jVar = this.d;
        if (jVar != null) {
            CharSequence charSequence = (CharSequence) jVar.get(i);
            if (charSequence == null) {
                if (jVar.size() == 1) {
                    charSequence = (CharSequence) jVar.valueAt(0);
                    i = jVar.keyAt(0);
                } else {
                    charSequence = "???";
                }
            }
            setText(charSequence);
            this.b = i;
            if (this.c != null) {
                this.c.onClick(null, i);
            }
        }
    }

    public int getSelected() {
        return this.b;
    }
}
