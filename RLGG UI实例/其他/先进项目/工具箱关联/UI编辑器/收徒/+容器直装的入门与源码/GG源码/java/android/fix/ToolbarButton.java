package android.fix;

import android.content.Context;
import android.ext.Config;
import android.ext.Tools;
import android.ext.la;
import android.util.AttributeSet;

/* compiled from: src */
/* loaded from: classes.dex */
public class ToolbarButton extends ImageButtonView {
    private int a;
    private boolean b;

    public ToolbarButton(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.a = 0;
        this.b = false;
    }

    public ToolbarButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = 0;
        this.b = false;
    }

    public ToolbarButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        this.b = false;
    }

    public ToolbarButton(Context context) {
        super(context);
        this.a = 0;
        this.b = false;
    }

    public void setIcon(int i) {
        this.a = i;
        setMinimumWidth((int) Tools.a(45.0f));
        setMinimumHeight(Tools.b());
    }

    public void setIcon(boolean z) {
        if (this.b != z) {
            this.b = z;
            if (z) {
                try {
                    setImageResource(this.a);
                    Config.a(this, (int) Tools.a(45.0f), Tools.b());
                    return;
                } catch (Throwable th) {
                    la.a(th);
                    return;
                }
            }
            try {
                setImageDrawable(null);
            } catch (Throwable th2) {
                la.a(th2);
            }
        }
    }

    @Override // android.view.View
    public String toString() {
        return String.valueOf(super.toString()) + " " + this.a + "; " + this.b;
    }
}
