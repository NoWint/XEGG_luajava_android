package android.ext;

import android.content.Context;
import android.util.AttributeSet;

/* compiled from: src */
/* loaded from: classes.dex */
public class EditTextMulti extends EditText {
    public EditTextMulti(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        setInputType(getInputType() | 262144);
        setHorizontallyScrolling(false);
        setMaxLines(Integer.MAX_VALUE);
    }

    public EditTextMulti(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setInputType(getInputType() | 262144);
        setHorizontallyScrolling(false);
        setMaxLines(Integer.MAX_VALUE);
    }

    public EditTextMulti(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setInputType(getInputType() | 262144);
        setHorizontallyScrolling(false);
        setMaxLines(Integer.MAX_VALUE);
    }

    public EditTextMulti(Context context) {
        super(context);
        setInputType(getInputType() | 262144);
        setHorizontallyScrolling(false);
        setMaxLines(Integer.MAX_VALUE);
    }

    @Override // android.widget.TextView
    public void setHorizontallyScrolling(boolean z) {
        super.setHorizontallyScrolling(false);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        super.setMaxLines(Integer.MAX_VALUE);
    }
}
