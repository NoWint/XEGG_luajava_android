package android.fix;

import android.content.Context;
import android.ext.Tools;
import android.util.AttributeSet;

/* compiled from: src */
/* loaded from: classes.dex */
public class TextButtonView extends TextView {
    public TextButtonView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        Tools.i(this);
    }

    public TextButtonView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Tools.i(this);
    }

    public TextButtonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Tools.i(this);
    }

    public TextButtonView(Context context) {
        super(context);
        Tools.i(this);
    }
}
