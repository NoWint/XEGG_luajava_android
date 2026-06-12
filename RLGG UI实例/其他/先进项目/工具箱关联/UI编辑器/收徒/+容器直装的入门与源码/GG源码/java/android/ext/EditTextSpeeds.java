package android.ext;

import android.content.Context;
import android.util.AttributeSet;

/* compiled from: src */
/* loaded from: classes.dex */
public class EditTextSpeeds extends EditTextMulti {
    private hd a;

    public EditTextSpeeds(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = null;
    }

    public EditTextSpeeds(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = null;
    }

    public EditTextSpeeds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = null;
    }

    public EditTextSpeeds(Context context) {
        super(context);
        this.a = null;
    }

    @Override // android.widget.TextView
    protected void onSelectionChanged(int i, int i2) {
        super.onSelectionChanged(i, i2);
        hd hdVar = this.a;
        if (hdVar != null) {
            hdVar.a(this, i, i2);
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        hd hdVar = this.a;
        if (hdVar != null) {
            hdVar.a(this, charSequence, i, i2, i3);
        }
    }

    public void setOnChangedListener(hd hdVar) {
        this.a = hdVar;
    }
}
